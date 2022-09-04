module.exports = {
  content: [
    "./*.html",
    "./_includes/**/*.html",
    "./_layouts/**/*.html",
    "./_drafts/**/*.html",
    "./_posts/*.{html,md}",
    "./_weeknotes/*.{html,md}",
  ],
  darkMode: "media",
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [require("@tailwindcss/typography")],
};
