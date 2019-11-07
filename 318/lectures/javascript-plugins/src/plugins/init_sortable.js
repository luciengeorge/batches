import Sortable from 'sortablejs';

const initSortableJS = () => {
  const list = document.getElementById('results');
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 300
  });
};

export { initSortableJS };
