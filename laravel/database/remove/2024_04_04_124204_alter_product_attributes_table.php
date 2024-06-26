<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('product_attributes', function (Blueprint $table) {
            // $table->unsignedBigInteger('product_id');
            // $table->unsignedBigInteger('attribute_id');

            $table->foreignId('product_id')->constrained();
            $table->foreignId('attribute_id')->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('product_attributes', function (Blueprint $table) {
            $table->dropForeign(['product_id']);
            $table->dropForeign(['attribute_id']);
        });
    }
};
