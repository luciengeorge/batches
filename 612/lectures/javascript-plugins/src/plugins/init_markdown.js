import MarkdownIt from 'markdown-it'; // var MarkdownIt = require('markdown-it')

const initMarkdown = () => {
  const editor = document.querySelector('#editor');
  const preview = document.querySelector('#preview');
  editor.addEventListener('keyup', (event) => {
    const md = new MarkdownIt();
    const text = editor.value;
    preview.innerHTML = md.render(text);
    console.log(md.render(text));
  });
};

export { initMarkdown };
