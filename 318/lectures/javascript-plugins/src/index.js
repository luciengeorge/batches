import { fetchMovies, updateList } from './movie';
import { initSortableJS } from './plugins/init_sortable';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

fetchMovies('harry potter'); // on 1st page load

const form = document.querySelector('#search-form');
form.addEventListener('submit', updateList);

initSortableJS();
initMarkdown();
initSelect2();
