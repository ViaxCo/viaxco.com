import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "astro/config";

export default defineConfig({
  site: "https://www.viaxco.com",
  vite: {
    plugins: [tailwindcss()],
  },
});
