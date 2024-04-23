<script setup lang="ts">
import UlComponent from "../../components/side-menu/ul-component.vue";
import LiButtonComponent from "./li-inner-component.vue";
import type { IListItem, IListLevelStyle } from "./typings";

const props = defineProps({
  items: {
    type: Object as PropType<IListItem[]>,
    default: [],
  },
  listLevelStyles: {
    type: Object as PropType<IListLevelStyle[]>,
    default: [],
  },
});
</script>

<template>
  <UlComponent :items="items" :list-level-styles="listLevelStyles">
    <template #level1="data">
      <LiButtonComponent
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      >
      </LiButtonComponent>
    </template>
    <!-- level x markup -->
    <template #level2="data">
      <LiButtonComponent
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      ></LiButtonComponent>
    </template>
    <!-- level x markup -->
    <template #level3="data">
      <LiButtonComponent
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
      ></LiButtonComponent>
    </template>
    <!-- level x markup -->
    <template #level4="data">
      <LiButtonComponent
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
        :path="data.path"
      ></LiButtonComponent>
    </template>
    <!-- level x markup -->
    <template #level5="data">
      <LiButtonComponent
        :has-children="data.hasChildren"
        :label="data.label"
        :icon="data.icon"
        :expanded="data.expanded"
        :level="data.level"
      ></LiButtonComponent>
    </template>
  </UlComponent>
</template>
