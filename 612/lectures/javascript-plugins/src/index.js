const movieList = document.querySelector('#results');

const fetchMovies = (searchKeyword) => {
  fetch(`http://www.omdbapi.com/?apikey=adf1f2d7&s=${searchKeyword}`)
    .then(response => response.json())
    .then((data) => {
      movieList.innerHTML = "";
      data.Search.forEach((movie) => {
        movieList.insertAdjacentHTML('beforeend', `
          <li class="list-inline-item">
            <img src="${movie.Poster}"/>
            <p>${movie.Title}</p>
          </li>
        `);
      });
    });
};

// get the form from the html
const form = document.querySelector('#search-form');
// submit event on the form
form.addEventListener('submit', (event) => {
  event.preventDefault();
  const input = document.querySelector('#search-input');
  const keyword = input.value;
  fetchMovies(keyword);
});
fetchMovies('harry potter');
