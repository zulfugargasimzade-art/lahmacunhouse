import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        brand: {
          50: '#fef2f2',
          100: '#fee2e2',
          200: '#fecaca',
          300: '#fca5a5',
          400: '#f87171',
          500: '#dc2626',
          600: '#c8102e', // Official corporate red
          700: '#b91c1c',
          800: '#991b1b',
          900: '#7f1d1d',
          dark: '#5a0d0d',
        },
        cream: {
          50: '#fdfbf7',
          100: '#fbf8f2',
          200: '#f5efe4',
          300: '#ebe1d2',
          400: '#dfd0bc',
          500: '#cfba9f',
        },
        anthracite: {
          50: '#f6f7f9',
          100: '#eceef2',
          200: '#d5dae2',
          300: '#b0b8c6',
          400: '#8491a6',
          500: '#637189',
          600: '#4e5a70',
          700: '#3e485a',
          800: '#262c37',
          900: '#1a1d24',
          950: '#121419',
        }
      },
      fontFamily: {
        sans: ['var(--font-inter)', 'sans-serif'],
        display: ['var(--font-outfit)', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
export default config;
