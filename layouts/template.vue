<script setup lang="ts">
const sideMenuItems = ref([
  {
    icon: "mdi:home",
    name: "Home",
    path: "/nav/bi/dashboard",
    children: [
      {
        name: "Level 2",
        path: "/nav/bi/profile",
        children: [
          {
            name: "Level 3",
            path: "/nav/bi/profile",
            children: [
              {
                name: "Level 4",
                path: "/nav/bi/profile",
              },
            ],
          },
        ],
      },
    ],
  },
  {
    icon: "mdi:account",
    name: "Your profile",
    path: "/nav/bi/profile",
  },
  {
    icon: "mdi:folder",
    name: "Company documents",
    path: "/nav/bi/docs",
  },
  {
    icon: "mdi:account-multiple",
    name: "Candidates",
    path: "/nav/bi/candidates",
  },
  {
    icon: "mdi:account-plus",
    name: "Create a new enquiry",
    path: "/nav/bi/new-enquiry",
  },
  {
    icon: "mdi:bell",
    name: "Pending instructions",
    path: "/nav/bi/pending-instructions",
  },
  {
    icon: "mdi:phone",
    name: "Contact us",
    path: "/nav/bi/contact-us",
  },
]);

const listLevelStyles: IListLevelStyle[] = [
  {
    ul: "sidemenu ul-1-class",
    li: "li-1-class",
    div: "div-1-class",
  },
  {
    ul: "ul-2-class",
    li: "li-2-class",
    div: "div-2-class",
  },
];

import type { IListLevelStyle } from "~/components/side-menu/typings";
import SideMenu from "../components/side-menu/index.vue";
</script>

<template>
  <div
    class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
  >
    <SideMenu :items="sideMenuItems" :list-level-styles="listLevelStyles" />
  </div>
  <div class="pt-2 md:ml-64 h-auto">
    <slot />
  </div>
</template>
