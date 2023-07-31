const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,md,liquid,erb,serb,rb}',
    './frontend/javascript/**/*.js',
  ],
  theme: {
    fontFamily: {
      sans: ['Rubik', '"Source Sans 3"', ...defaultTheme.fontFamily.sans],
    },
    extend: {
      colors: {
        'accent': '#ffff02',
        'accent-light': '#ffff80',
      },
      borderWidth: {
        '3': '3px'
      }
    }
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}

