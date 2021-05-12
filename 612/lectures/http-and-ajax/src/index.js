const button = document.querySelector('#click-me');

button.addEventListener('click', (event) => {
  event.currentTarget.innerHTML = 'Please wait...';
  event.currentTarget.disabled = true;
});


const fetchMovies = (searchKeyword) => {
  const movieList = document.querySelector('#results');
  movieList.innerHTML = "";
  fetch(`http://www.omdbapi.com/?apikey=adf1f2d7&s=${searchKeyword}`)
    .then(response => response.json()) // response.text() // response.blob()
    .then((data) => {
      // console.log(data.Search);
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
// save the value in the input and interpolate it in the search url
// fetch the info from the api

// post requests
const searchAlgoliaPlaces = (event) => {
  // set the url and add as a second argument an Object with the method and the body
  fetch("https://places-dsn.algolia.net/1/places/query", {
    method: "POST",
    body: JSON.stringify({ query: event.currentTarget.value })
  })
    .then(response => response.json()) // convert to json
    .then((data) => {
      console.log(data.hits); // Look at local_names.default
    });
};

const input = document.querySelector("#search");
input.addEventListener("keyup", searchAlgoliaPlaces);
