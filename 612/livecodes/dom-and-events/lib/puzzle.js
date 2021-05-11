// Showing the hint
// 1. querySelector the button
const hintButton = document.querySelector('#show-hint');
// 2. add an event => click
hintButton.addEventListener('click', (event) => {
  // 3. add the .active class to the .hint element
  const hint = document.querySelector('.hint');
  hint.classList.add('active');
});

// Play the game
// 1. grab all the cells from the html
const cells = document.querySelectorAll('td');
// 2. iterate over each cell
cells.forEach((cell) => {
  // 3. add an event listener on each cell
  cell.addEventListener('click', (event) => {
    // 4. get the current cell
    const currentCell = event.currentTarget;
    // 5. get the empty cell
    const emptyCell = document.querySelector('.empty');
    // 6. get the current row's index
    const currentCellRow = currentCell.parentElement.rowIndex;
    // 7. get the column of the current cell
    const currentCellCol = currentCell.cellIndex;
    // 8. get the row of the empty cell
    const emptyCellRow = emptyCell.parentElement.rowIndex;
    // 9. get the column of the empty cell
    const emptyCellCol = emptyCell.cellIndex;
    // 10. compare the row and column of the empty cell and the cell I clicked on
      // 10a. same row column left
    if (currentCellRow === emptyCellRow && currentCellCol + 1 === emptyCellCol ||
      // 10b. row above same column
      currentCellCol === emptyCellCol && currentCellRow + 1 === emptyCellRow ||
      // 10c. same row column right
      currentCellRow === emptyCellRow && currentCellCol - 1 === emptyCellCol ||
      // 10d. row below same column
        currentCellCol === emptyCellCol && currentCellRow - 1 === emptyCellRow) {
      // 11. change the background of the cell we clicked on
      currentCell.classList.add('empty');
      // 12. remove the dark background from the empty cell
      emptyCell.classList.remove('empty');
      // 13. take the innerText of the cell and put it in the empty cell
      emptyCell.innerText = currentCell.innerText;
      // 14. remove the innerText from the currentCell
      currentCell.innerText = '';
    }
    // Check if the game is finished and the player won
    // 15. get all of the cells
    const cells = document.querySelectorAll('td');
    // 16. need to get just the inner text and convert it to an integer
    const numbers = Array.from(cells).map(cell => parseInt(cell.innerText, 10));
    // 17. need to sort the array
    /*
      Explanation on the sorting algorithm:
      .sort() compares two consecutive numbers in the array. that's why it takes 2 parameters: a, and b
      on each iteration it is going to compare the two numbers by doing a subtraction
      if a - b > 0 then a is bigger than b and the algorithm will swap the two numbers
      if a - b < 0 then a is less than b and the algorithm won't swap the two numbers
      now JS doesn't know how to compare an NaN to a number. That's why we have conditions in the .sort() method call
      if a is NaN then we need to fool the algorithm and make it think that a is bigger than b. so we return a positive
      number (in this case 1 [could be any other positive number])
      if b is NaN then we need to fool the algorothm and make it think that a is smaller than b. so we return a negative
      number (in this case -1 [could be any other negative number])
      if a and b are numbers then we can just return the result of the subtraction of a by b
    */
    // const sortedNumbers = numbers.slice().sort((a, b) => {
    //   if (isNaN(a)) { // [NaN, 3, ...]
    //     return 1;
    //   } else if (isNaN(b)) { // [3, NaN, ...]
    //     return -1;
    //   } else {
    //     return a - b;
    //   }
    // });
    // 18. compare the current array to the sorted array
    // if (numbers.join() === sortedNumbers.join()) {
    if (numbers.join() === '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,NaN') {
      // 19. show the alert saying the player won
      alert('You won!');
      // 20. reload the page to reset the game
      window.location.reload();
    }
  });
});
