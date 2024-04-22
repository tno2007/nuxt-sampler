<script setup>
defineProps({
  item: Object,
  class: String,
  target: String,
  ariaCurrent: String,
  ariaHaspopup: Boolean,
  ariaExpanded: Boolean,
});
</script>

<template>
  <NuxtLink
    :to="item.to"
    class="router-link-active router-link-exact-active flex items-center p-2 text-gray-900 hover:bg-gray-100"
  >
    <font-awesome
      v-if="item.icon"
      :icon="item.icon"
      class="w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
      :class="item.iconClass"
    />
    <span
      class="flex-1 ml-2 text-left rtl:text-right whitespace-nowrap"
      :class="item.titleClass"
      >{{ item.title }}
    </span>
    <font-awesome
      v-if="item.child"
      icon="chevron-right"
      class="w-6 h-6 transition-transform"
      :class="{ 'rotate-90': ariaExpanded }"
    ></font-awesome>
  </NuxtLink>
</template>
