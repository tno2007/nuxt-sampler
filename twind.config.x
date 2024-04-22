import { defineConfig, type Rule } from "@twind/core";
import presetAutoprefix from "@twind/preset-autoprefix";
import presetTailwind from "@twind/preset-tailwind";

const a_rules: Rule = [
  "a",
  {
    "@apply": "border-2 border-red-700 p-1",
    "& .b": {
      "@apply": "border-2 border-orange-400 p-1 m-1",
      "&.x": { "@apply": "text-2xl" },
    },
    "& .c": { "@apply": "border-2 border-yellow-400 p-1 m-1" },
    "& .d": { "@apply": "border-2 border-green-400 p-1 m-1" },
  },
];

const vueSidebarMenu_rules: Rule = [
  "v-sidebar-menu",
  {
    "@apply": "",
    "&.vsm_expanded": { "@apply": "" },
    "&.vsm_collapsed": { "@apply": "" },
    "&.vsm_rtl": { "@apply": "" },
    "& .vsm--item": { "@apply": "" },
    "& .vsm--link": { "@apply": "" },
    "& .vsm--link_active": { "@apply": "" },
    "& .vsm--link_hover": { "@apply": "" },
    "& .vsm--link_open": { "@apply": "" },
    "& .vsm--link_mobile": { "@apply": "" },
    "& .vsm--link_level-[1]": { "@apply": "!text-red-100", "& svg": { "@apply": "" } }, // <- replace [n] with level number
    "& .vsm--link_disabled": { "@apply": "" },
    "& .vsm--title": { "@apply": "" },
    "& .vsm--icon": { "@apply": "" },
    "& .vsm--arrow": { "@apply": "" },
    "& .vsm--arrow_open": { "@apply": "" },
    "& .vsm--badge": { "@apply": "" },
    "& .vsm--badge_default": { "@apply": "" },
    "& .vsm--header": { "@apply": "" },
    "& .vsm--dropdown": { "@apply": "!p-0" },
    "& .vsm--mobile-bg": { "@apply": "" },
    "& .vsm--toggle-btn": { "@apply": "" },
  },
];

export const config = defineConfig({
  presets: [presetAutoprefix(), presetTailwind()],
  rules: [
    ["animate-delay-0", { animationDelay: "0s" }],
    ["animate-delay-500", { animationDelay: "0.5s" }],
    ["animate-delay-1000", { animationDelay: "1s" }],

    ["router-link-active", ""],

    a_rules,

    vueSidebarMenu_rules,
  ],
  theme: {
    extend: {
      animation: {
        flashing: "flashing 1s alternate infinite",
      },
      colors: {
        gold: {
          50: "#dcac4c",
          100: "#d2a242",
          200: "#c89838",
          300: "#be8e2e",
          400: "#b48424",
          500: "#aa7a1a",
          600: "#a07010",
          700: "#966606",
          800: "#8c5c00",
          900: "#825200",
        },
        ocean: {
          50: "#4387a9",
          100: "#397d9f",
          200: "#2f7395",
          300: "#25698b",
          400: "#1b5f81",
          500: "#115577",
          600: "#074b6d",
          700: "#004163",
          800: "#003759",
          900: "#002d4f",
        },
      },
      keyframes: {
        flashing: {
          "0%": {
            "background-color": "var(--animate-flashing-bg-inactive)",
          },
          "50%, 100%": {
            "background-color": "var(--animate-flashing-bg-active)",
          },
        },
      },
    },
  },
  hash: false,
});
