/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,mdx}",
  ],
  theme: {
    extend: {
      width: {
        container: '784px'
      },
      maxWidth: {
        container: '784px'
      }
    },
    colors: {
      primary: {
        100: "#151515",
        200: "#5a5a5a",
        300: "#cccccc",
        400: "#e2e2e2",
        500: "#f8f8f8",
        600: "#fafafa",
      }
    },
  },
  plugins: [],
}
