import {createApp} from 'vue'

createApp({
  data() {
    return {
      message: 'Hello from vue js',
      greeting: 'Hello my name is Lucien',
    }
  },
}).mount('#results')

// const results = document.querySelector('#results')
// const template = document.querySelector('#movieCardTemplate').innerHTML
// import Mustache from 'mustachejs'

// fetch('https://www.omdbapi.com/?s=harry%20potter&apikey=adf1f2d7')
//   .then((response) => response.json())
//   .then((data) => {
//     const movies = {movies: data.Search}
//     const html = Mustache.render(template, movies)
//     results.innerHTML = html
//   })
