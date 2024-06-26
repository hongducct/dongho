<template>
  <div class="flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-sm">
      <img
        class="mx-auto h-10 w-auto"
        src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
        alt="Your Company"
      />
      <h2
        class="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900"
      >
        Đăng nhập vào tài khoản admin
      </h2>
    </div>

    <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
      <form class="space-y-6" @submit.prevent="login">
        <!-- Thông báo error -->
        <div
          v-if="errors"
          class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative"
          role="alert"
        >
          <span v-html="errors"></span>
        </div>
        <div>
          <label
            for="email"
            class="block text-sm font-medium leading-6 text-gray-900"
            >Email</label
          >
          <div class="mt-2">
            <input
              v-model="email"
              id="email"
              name="email"
              type="email"
              autocomplete="email"
              required
              class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
            />
          </div>
        </div>

        <div>
          <div class="flex items-center justify-between">
            <label
              for="password"
              class="block text-sm font-medium leading-6 text-gray-900"
              >Mật khẩu</label
            >
          </div>
          <div class="mt-2">
            <a-input-password
              v-model:value="password"
              id="password"
              name="password"
              required=""
              placeholder="Nhập mật khẩu"
              autocomplete="current-password"
              class="border flex block w-full rounded-md py-1.5 p-2 text-gray-900 shadow ring-1 ring-inset ring-gray-300 placeholder:text-white focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
            />
          </div>
        </div>

        <div>
          <button
            type="submit"
            class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          >
            Đăng nhập
          </button>
        </div>
      </form>
    </div>
  </div>
</template>

<script setup>
import { inject, ref } from "vue";
import axios from "axios";
import router from "@/router";

const isAuthenticated = ref(false);

// Xóa giá trị isAuthenticated trong localStorage khi tải lại trang
localStorage.removeItem("isAuthenticated");

const email = ref("");
const password = ref("");
const errors = ref("");

const apiUrl = inject("apiUrl"); // Thay đổi theo địa chỉ API Laravel của bạn

const login = async () => {
  try {
    const response = await axios.post(`${apiUrl}/admin/login`, {
      email: email.value,
      password: password.value,
    });

    // Lưu thông tin admin và token vào localStorage với các khóa riêng biệt
    localStorage.setItem("adminToken", response.data.token);
    localStorage.setItem("admin", JSON.stringify(response.data.admin));
    localStorage.setItem("adminIsAuthenticated", "true"); // Lưu trạng thái đăng nhập vào localStorage

    // Chuyển hướng người dùng đến trang admin và tải lại trang
    router.push("/admin/").then(() => {
      window.location.reload();
    });
  } catch (error) {
    console.error(error.response.data.message);
    errors.value = error.response.data.message;
  }
};
</script>
