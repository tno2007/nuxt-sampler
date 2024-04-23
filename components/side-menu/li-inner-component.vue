<script setup lang="ts">
const props = defineProps({
  expanded: {
    type: Boolean,
  },
  hasChildren: {
    type: Boolean,
    default: false,
  },
  icon: {
    type: String,
  },
  label: {
    type: String,
    default: "Link",
  },
  level: {
    type: Number,
  },
  path: {
    type: String,
  },
});

onMounted(() => {});
</script>

<template>
  <!-- Link without children -->
  <NuxtLink
    :to="props.path"
    v-if="!hasChildren"
    class="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
  >
    <div class="flex-none w-6 text-gray-500">
      <Icon v-if="props.icon" :name="props.icon" size="1.5em" />
    </div>
    <span class="flex-1 ml-3 text-left whitespace-nowrap">{{
      props.label
    }}</span>
  </NuxtLink>

  <!-- Link with children -->
  <button
    type="button"
    v-if="hasChildren"
    class="flex items-center p-2 w-full text-base font-medium text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700"
    :class="{ __expanded__: props.expanded }"
    aria-controls="dropdown-pages"
    :aria-expanded="props.expanded"
  >
    <div class="flex-none w-6 text-gray-500">
      <Icon v-if="props.icon" :name="props.icon" size="1.5em" />
    </div>

    <span class="flex-1 ml-3 text-left whitespace-nowrap">{{
      props.label
    }}</span>
    <Icon
      name="mdi:chevron-right"
      class="w-6 h-6 transition-transform font-bold"
      :class="{ 'rotate-90': props.expanded }"
    />
  </button>
</template>
