<script setup lang="ts">
import { ref } from "vue";

import { SidebarMenu } from "vue-sidebar-menu";
// import "vue-sidebar-menu/dist/vue-sidebar-menu.css";

import MyLink from "../components/MyLink.vue";
import GlobalNavLink from "../components/NavLink.global.vue";

const menu = ref([
  {
    header: "",
    hidden: true,
  },
  {
    title: "Dashboard",
    icon: "user",
    to: "/",
  },
  {
    title: "Charts",
    icon: "chart-area",
    child: [
      {
        title: "Products",
        icon: "circle",
        child: [
          {
            title: "Product 1",
            icon: "circle",
            iconClass: "!w-3 !h-3 ml-1",
            child: [
              {
                title: "Product 1.1",
                icon: "circle",
                iconClass: "!w-2 !h-2 ml-1.5",
                to: "/about",
              },
            ],
          },
          {
            title: "Product 2",
            icon: "circle",
            iconClass: "!w-3 !h-3 ml-1",
            to: "/services",
          },
        ],
      },
    ],
  },
]);

const item = ref({
  to: "/about",
  title: "Dashboard",
  icon: "fa-home",
});
</script>

<template>
  <div class="">
    <sidebar-menu
      :menu="menu"
      theme="white-theme"
      width="256px"
      widthCollapsed="65px"
      :link-component-name="MyLink"
      :showChild="false"
    ></sidebar-menu>
  </div>
  <div class="page-content pl-64">
    <ul>
      <!--
      <li>
        <a
          class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
        >
          <font-awesome
            v-if="item.icon"
            :icon="item.icon"
            class="w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
          />
          <span class="ms-3">{{ item.title }}</span>
        </a>
      </li>
      -->
      <li>
        <font-awesome icon="user" />
        <NuxtLink to="/"> Home </NuxtLink>
      </li>
      <li>
        <font-awesome icon="fa-envelope" />
        <NuxtLink to="/about">About</NuxtLink>
      </li>
    </ul>

    <slot />
  </div>
</template>

<style lang="scss">
.expand-enter-active,
.expand-leave-active {
  transition: height 0.3s ease;
  overflow: hidden;
}
.expand-enter-from,
.expand-leave-to {
  height: 0 !important;
}
/*
.slide-animation-enter-active {
  transition: width 0.3s ease;
}
.slide-animation-leave-active {
  transition: width 0.3s ease;
}
.slide-animation-enter-from,
.slide-animation-leave-to {
  width: 0 !important;
}
*/
</style>
