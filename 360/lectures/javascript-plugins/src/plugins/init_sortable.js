import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.getElementById('results');
  Sortable.create(list, {
    animation: 300,
    ghostClass: 'ghost',
    onEnd: () => {
      console.log('dropped');
    }
  });
};

export { initSortable };
