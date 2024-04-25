// TODO write your code here
const url = 'https://pokeapi.co/api/v2/pokemon?limit=10&offset=0'
const template = document.querySelector('#cardTemplate')
const container = document.querySelector('#cardsContainer')
const infoTemplate = document.querySelector('#infoTemplate')
const infoContainer = document.querySelector('#infoContainer')

fetch(url)
  .then((response) => response.json())
  .then((data) => {
    data.results.forEach((result) => {
      const pokemonUrl = result.url
      fetch(pokemonUrl)
        .then((response) => response.json())
        .then((data) => {
          const clone = template.content.cloneNode(true)

          const img = clone.querySelector('.pokemon-card-image')
          const title = clone.querySelector('.pokemon-card-title')
          const subtitle = clone.querySelector('.pokemon-card-subtitle')
          const link = clone.querySelector('.pokemon-card-link')

          img.src = data.sprites.front_shiny
          title.innerText = data.name
          let abilities = ''
          data.abilities.forEach((ability) => {
            abilities += `${ability.ability.name}, `
          })
          // const abilities = data.abilities
          //   .map((ability) => {
          //     return ability.ability.name
          //   })
          //   .join(', ')
          subtitle.innerText = abilities.slice(0, -2)

          link.addEventListener('click', (event) => {
            event.preventDefault()
            infoContainer.innerHTML = ''
            const infoClone = infoTemplate.content.cloneNode(true)
            const img = infoClone.querySelector('.pokemon-card-image')
            const title = infoClone.querySelector('.pokemon-card-title')
            const subtitle = infoClone.querySelector('.pokemon-card-subtitle')

            img.src = data.sprites.front_shiny
            title.innerText = data.name
            const abilities = data.abilities
              .map((ability) => {
                return ability.ability.name
              })
              .join(', ')
            subtitle.innerText = abilities
            infoContainer.appendChild(infoClone)
          })

          container.appendChild(clone)
        })
    })
  })
