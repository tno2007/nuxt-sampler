// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  // "@nuxtjs/tailwindcss"
  modules: ["@vesp/nuxt-fontawesome", "@nuxtjs/tailwindcss"],
  fontawesome: {
    icons: {
      solid: [
        "faHome",
        "faUser",
        "faEnvelope",
        "faCircle",
        "faCheck",
        "faChartArea",
        "faChevronLeft",
        "faChevronRight",
      ],
      regular: ["faUser"],
      brands: ["faGithub"],
    },
  },
  css: ["~/assets/css/main.css"],
});
