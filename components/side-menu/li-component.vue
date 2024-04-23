<script setup lang="ts">
import { useSlots } from "vue";
import UlComponent from "./ul-component.vue";
import type { IListItem, IListLevelStyle } from "./typings";
import { getListLevelStyle } from "./functions";
import { vAutoAnimate } from "@formkit/auto-animate";

const slots = useSlots();

const props = defineProps({
  item: {
    type: Object as PropType<IListItem>,
  },
  level: {
    type: Number,
    default: 1,
  },
  style: {
    type: String,
  },
  listLevelStyles: {
    type: Object as PropType<IListLevelStyle[]>,
    default: [],
  },
});

const getStyle = (level: number, element: "ul" | "li" | "div") =>
  getListLevelStyle(props.listLevelStyles, level, element);
</script>

<template>
  <li
    :class="[getStyle(props.level, 'li'), { __expanded__: item.expanded }]"
    v-auto-animate
  >
    <!-- inner div allows for toggle ability of each link -->
    <div
      :class="[getStyle(props.level, 'div'), { __expanded__: item.expanded }]"
      :data-expanded="item.expanded"
      @click="item.expanded = !item.expanded"
    >
      <template v-for="(_, slot) in $slots" :key="slot">
        <template v-if="slot === `level${level}`">
          <slot
            :name="slot"
            :label="item.name"
            :hasChildren="
              item.children && item.children.length > 0 ? true : false
            "
            :expanded="item.expanded ? true : false"
            :icon="item.icon"
            :level="props.level"
            :path="item.path"
          >
            <strong>{{ item.name }} {{ props.level }}</strong>
          </slot>
        </template>
      </template>

      <template v-if="Object.keys(slots).includes(`level${level}`) === false">
        <span>{{ item.name }}</span>
      </template>
    </div>

    <template v-if="item.children && item.children.length > 0">
      <ul-component
        :items="item.children"
        :level="level + 1"
        :list-level-styles="listLevelStyles"
        v-if="item.expanded"
      >
        <template v-for="(_, slot) of $slots" v-slot:[slot]="props">
          <slot :name="slot" v-bind="props" />
        </template>
      </ul-component>
    </template>
  </li>
</template>
