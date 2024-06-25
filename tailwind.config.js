module.exports = {
    content: [
        './_layouts/**/*.html',
        './*.md',
    ],
    theme: {
        extend: {
            colors: {
                'darkblue': '#0000c4',
                'orange': '#f44e07',
                'lightgreen': '#dcf8c6',
            }
        },
        fontFamily: {
            sans: ["AnekLatin"],
        },
    },
    variants: {},
    plugins: [
        require('@tailwindcss/typography'),
    ],
}
