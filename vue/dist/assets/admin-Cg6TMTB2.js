import{u as h,r as b,w as v,a as c,o as _,c as N,b as l,d as p,F as y,e as x,f as o,g as a,n as w,t as C,_ as B,h as g}from"./index-DxnCuI8i.js";const U={__name:"TheMenu",setup(k){const u=h(),e=b({selectedKeys:["admin-admins"],openKeys:[]}),i=[{key:"admin-users",routeName:"admin-users",icon:"pie-chart",label:"Tài khoản"},{key:"admin-products",routeName:"admin-products",icon:"desktop",label:"Sản phẩm"},{key:"admin-admins",routeName:"admin-admins",icon:"inbox",label:"Admins"},{key:"upload-product",routeName:"upload-product",icon:"inbox",label:"Upload Product"},{key:"admin-test",routeName:"admin-test",icon:"inbox",label:"test"}],r=t=>e.selectedKeys.includes(t),f=t=>{e.selectedKeys=[t]};return v(()=>e.openKeys,(t,n)=>{e.preOpenKeys=n}),u.afterEach((t,n)=>{const d=i.find(m=>m.routeName===t.name);d&&(e.selectedKeys=[d.key])}),(t,n)=>{const d=c("router-link"),m=c("a-menu-item"),K=c("a-menu");return _(),N(K,{openKeys:e.openKeys,"onUpdate:openKeys":n[0]||(n[0]=s=>e.openKeys=s),selectedKeys:e.selectedKeys,"onUpdate:selectedKeys":n[1]||(n[1]=s=>e.selectedKeys=s),mode:"inline","inline-collapsed":e.collapsed,"default-openeds":["admin-users"]},{default:l(()=>[(_(),p(y,null,x(i,s=>o(m,{key:s.key,icon:s.icon},{default:l(()=>[o(d,{to:{name:s.routeName},onClick:T=>f(s.key),style:{"text-decoration":"none"}},{default:l(()=>[a("span",{class:w({"font-bold":r(s.key)})},C(s.label),3)]),_:2},1032,["to","onClick"])]),_:2},1032,["icon"])),64))]),_:1},8,["openKeys","selectedKeys","inline-collapsed"])}}},$={class:"container-fuild mt-3",style:{"padding-bottom":"81px"}},S={class:"row"},E={class:"col-sm-2"},F=a("div",null,"BẢNG ĐIỀU KHIỂN",-1),M={class:"col-sm-10"},z={__name:"admin",setup(k){return(u,e)=>{const i=c("a-list"),r=c("router-view");return _(),p(y,null,[o(B),a("div",$,[a("div",S,[a("div",E,[o(i,{bordered:"",style:{width:"100%"}},{header:l(()=>[F]),default:l(()=>[o(U)]),_:1})]),a("div",M,[o(r)])])]),o(g)],64)}}};export{z as default};
