module.exports = {
    content: [
        './_layouts/**/*.html',
        './*.md',
    ],
    theme: {
        extend: {},
    },
    variants: {},
    plugins: [
        require('@tailwindcss/typography'),
    ],
}
