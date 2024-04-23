<script setup lang="ts">

const toast = useToast()


definePageMeta({
  layout: "template",
});


</script>

<template>
  <p>Home</p>

  <Icon name="uil:github" />

    <UButton label="Show toast" @click="toast.add({ title: 'Hello world!' })" />
</template>
