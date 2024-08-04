export default {
  build: [
    {
      src: 'src/index.html',
      dest: 'docs'
    },
    {
      src: 'src/index.js',
      dest: 'docs/script.js'
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