import { fetchAllCars } from './cars';

const GARAGE = 'batch360';
const url = `https://wagon-garage-api.herokuapp.com/${GARAGE}/cars`;

const form = document.getElementById('new-car');
const brand = document.getElementById('brand');
const model = document.getElementById('model');
const plate = document.getElementById('plate');
const owner = document.getElementById('owner');
const carsList = document.querySelector('.cars-list');

fetchAllCars(url, carsList);

form.addEventListener('submit', (event) => {
  event.preventDefault();
  fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body:
      JSON.stringify({
        brand: brand.value,
        model: model.value,
        owner: owner.value,
        plate: plate.value
      })
  })
    .then(response => response.json())
    .then(() => fetchAllCars(url, carsList));
  form.reset();
});
