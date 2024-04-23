<script setup lang="ts">
import { ref } from "vue";

import SideMenu from "../components/side-menu/side-menu.vue"

</script>

<template>
  <div
    class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0 dark:bg-gray-800 dark:border-gray-700">

    <SideMenu />

  </div>
  <div class="pt-2 md:ml-64 h-auto">
    <slot />
  </div>
</template>

<style lang="scss">
  /**/
</style>
