<script setup lang="ts">
import { ref } from "vue";
import UlComponent from "../../components/side-menu/ul-component.vue";
import MenuLink from "../../components/side-menu/menu-link.vue";
import type { IListLevelStyle } from "../../components/side-menu/typings";

const sideMenu = ref([
  {
    icon: "mdi:home",
    name: "Home",
    path: "/nav/bi/dashboard",
    children: [
      {
        //icon: "mdi:two",
        name: "Level 2",
        path: "/nav/bi/profile",
        children: [
          {
            //icon: "mdi:three",
            name: "Level 3",
            path: "/nav/bi/profile",
            children: [
              {
                //icon: "mdi:four",
                name: "Level 4",
                path: "/nav/bi/profile",
              }
            ]
          }
        ]
      },
    ]
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
    ul: "space-y-2",
  },
  {
    ul: "py-2 space-y-2 bg-neutral-100",
  },
];
</script>

<template>
  <UlComponent :items="sideMenu" :list-level-styles="listLevelStyles">
    <template #level1="data">
      <MenuLink
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      >
      </MenuLink>
    </template>
    <!-- level x markup -->
    <template #level2="data">
      <MenuLink
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      ></MenuLink>
    </template>
    <!-- level x markup -->
    <template #level3="data">
      <MenuLink
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
      ></MenuLink>
    </template>
    <!-- level x markup -->
    <template #level4="data">
      <MenuLink
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      ></MenuLink>
    </template>
    <!-- level x markup -->
    <template #level5="data">
      <MenuLink
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
      ></MenuLink>
    </template>
  </UlComponent>
</template>
