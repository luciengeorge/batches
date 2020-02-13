import MarkdownIt from 'markdown-it';

const initMarkdown = () => {
  // grab the div for preview
  const markdown = new MarkdownIt();
  const editor = document.getElementById('editor');
  // grab the actual editor
  const preview = document.getElementById('preview');
  // listener (keyup)
  editor.addEventListener('keyup', (event) => {
    // grab the value from text editor
    const text = event.currentTarget.value;
    // rendering markdown
    preview.innerHTML = markdown.render(text);
  });
};

export { initMarkdown };
