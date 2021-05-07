const moveTile = (event) => {
  const tile = event.currentTarget;
  const tileCol = tile.cellIndex;
  const tileRow = tile.parentElement.rowIndex;
  const emptyTile = document.querySelector('.empty');
  const emptyTileRow = emptyTile.parentElement.rowIndex;
  const emptyTileCol = emptyTile.cellIndex;
  if (tileCol === emptyTileCol + 1 && tileRow === emptyTileRow ||
      tileCol === emptyTileCol - 1 && tileRow === emptyTileRow ||
      tileCol === emptyTileCol && tileRow === emptyTileRow + 1 ||
      tileCol === emptyTileCol && tileRow === emptyTileRow - 1) {
    tile.classList.add('empty');
    emptyTile.classList.remove('empty');
    emptyTile.innerText = tile.innerText;
    tile.innerText = '';
  }
  const tiles = Array.from(document.querySelectorAll('td')).map(tile => parseInt(tile.innerText));
  const orderedTiles = tiles.slice().sort((a, b) => {
    if (isNaN(a)) {
      return 1;
    }
    if (isNaN(b)) {
      return -1;
    }
    return a - b;
  });
  if(tiles.join() === orderedTiles.join()) {
    alert('You win!')
    window.location.reload();
  }
};

const tiles = document.querySelectorAll('td');

tiles.forEach((tile) => {
  tile.addEventListener('click', moveTile);
});

const showHint = document.querySelector('#show-hint');
showHint.addEventListener('click', () => {
  document.querySelector('.hint').classList.add('active');
});
