const movieList = document.querySelector('#results');
/*
data = {
  Search: [
    ...
  ],
  totalResults: 103,
  response: "True"
}
*/
const insertMovies = (data) => {
  movieList.innerHTML = "";
  // data['Search']
  data.Search.forEach((movie) => {
    movieList.insertAdjacentHTML('beforeend', `
      <li class="list-inline-item">
        <img src="${movie.Poster}" height="120"/>
      </li>
    `);
  });
};

const fetchMovies = (searchKeyword) => {
  fetch(`http://www.omdbapi.com/?apikey=adf1f2d7&s=${searchKeyword}`)
    .then(response => response.json())
    .then((data) => { // .then(insertMovies)
      insertMovies(data);
    });
};

const submitFormWithUserKeyword = (event) => {
  event.preventDefault();
  const input = document.querySelector('#search-input');
  const keyword = input.value;
  fetchMovies(keyword);
};

export { fetchMovies, submitFormWithUserKeyword };
