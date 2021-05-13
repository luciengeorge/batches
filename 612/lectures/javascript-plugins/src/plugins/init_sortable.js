import Sortable from 'sortablejs';

const initSortableJS = () => {
  const list = document.querySelector('#results');
  const sortable = Sortable.create(list, {
    animation: 150,
    ghostClass: 'ghost',
    onEnd: () => {
      // happens when dropping a movie
      // here we can save the order with an API call for example
      console.log('dropped');
    }
  });
};

export { initSortableJS };
