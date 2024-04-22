import theme from "@twind/preset-tailwind/baseTheme";

export default {
  rules: [
    ["animate-delay-0", { animationDelay: "0s" }],
    ["animate-delay-500", { animationDelay: "0.5s" }],
    ["animate-delay-1000", { animationDelay: "1s" }],
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
        animate: {
          flashing: {
            bg: {
              inactive: "rgb(152, 128, 255)",
              active: "#9880ff33",
            },
          },
        }
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
}