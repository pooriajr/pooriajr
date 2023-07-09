const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './_drafts/**/*.html',
    './_includes/**/*.html',
    './_layouts/**/*.html',
    './_posts/*.md',
    './_projects/*.md',
    './*.md',
    './*.html',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Rubik', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'accent': '#ffff02',
        'accent-light': '#ffff80',
      },
      borderWidth: {
        '3': '3px'
      }
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ]
}
