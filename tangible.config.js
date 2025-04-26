export default {
  build: [
    {
      src: 'src/index.html',
      dest: 'docs'
    },
    {
      src: 'src/index.tsx',
      dest: 'docs/script.js',
      react: 'preact'
    },
    {
      src: 'src/index.scss',
      dest: 'docs/style.css'
    },
  ],
  serve: {
    dir: 'docs',
    port: 5253
  }
}