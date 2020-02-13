// import different files
import { fetchMovies, updateList } from './movies';
import { initSortable } from './plugins/init_sortable';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

// call imported functions
initSortable();
initMarkdown();
initSelect2();
fetchMovies('harry potter'); // on 1st page load


// event listeners
const form = document.querySelector('#search-form');
form.addEventListener('submit', updateList);
