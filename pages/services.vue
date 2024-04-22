<script setup lang="ts">
definePageMeta({
  layout: "template",
});

const context = reactive({
  isError: false,
  message: "",
  loadingStatus: "loading" as "loading" | "complete" | "error",
});
</script>

<template>
  <div>Services</div>

  <div class="grid justify-center text-center space-y-5 m-5 h-full">
    <div class="flex justify-center gap-2">
      <div
        class="bg-slate-800 w-6 h-6 rounded-full animate-flashing animate-delay-0"
      ></div>
      <div
        class="w-6 h-6 rounded-full animate-flashing animate-delay-500"
      ></div>
      <div
        class="w-6 h-6 rounded-full animate-flashing animate-delay-1000"
      ></div>
    </div>

    <div v-if="context.loadingStatus === 'loading'">
      <h1 class="text-3xl">
        Checking your credentials before accessing Corporate Portal
      </h1>
      <p class="pt-5">
        This process is automatic. Your browser will redirect to your requested
        content shortly.
      </p>
    </div>
    <div v-if="context.loadingStatus === 'error'">
      <h1 class="text-3xl">
        Unauthorized request. Redirecting you to login page.
      </h1>
      <p class="pt-5">
        {{ context.message }}
      </p>
    </div>
  </div>
</template>
