const url = 'https://pokeapi.co/api/v2/pokemon'
const template = document.querySelector('#cardTemplate')
const infoTemplate = document.querySelector('#infoTemplate')
const cardsContainer = document.querySelector('#cardsContainer')
const infoContainer = document.querySelector('#infoContainer')

fetch(url)
  .then((response) => response.json())
  .then((data) => {
    data.results.forEach((result) => {
      fetch(result.url)
        .then((response) => response.json())
        .then((data) => {
          console.log(data)
          const clone = template.content.cloneNode(true)
          clone.querySelector('img').src = data.sprites.front_default
          clone.querySelector('h2').innerText = data.name
          clone.querySelector('p').innerText = data.types[0].type.name
          const link = clone.querySelector('a')

          link.addEventListener('click', () => {
            const infoClone = infoTemplate.content.cloneNode(true)

            infoClone.querySelector('img').src = data.sprites.back_default
            infoClone.querySelector('h2').innerText = data.name
            infoClone.querySelector('p').innerText = data.types[0].type.name
            infoContainer.innerHTML = ''
            infoContainer.appendChild(infoClone)
          })

          cardsContainer.appendChild(clone)
        })
    })
  })
