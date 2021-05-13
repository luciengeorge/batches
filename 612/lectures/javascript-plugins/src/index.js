// get the form from the html
import { fetchMovies, submitFormWithUserKeyword } from './movies';
import { initSortableJS } from './plugins/init_sortable';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

fetchMovies('harry potter');
initSortableJS();
initMarkdown();
initSelect2();

const form = document.querySelector('#search-form');
// submit event on the form
form.addEventListener('submit', submitFormWithUserKeyword);
