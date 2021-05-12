// TODO: Build an awesome garage!
const garage = 'lucien-george-garage';
const carsElement = document.querySelector('.cars-list');
const brand = document.querySelector('#brand');
const model = document.querySelector('#model');
const owner = document.querySelector('#owner');
const plate = document.querySelector('#plate');
const form = document.querySelector('#new-car');

const insertCars = (cars) => {
  carsElement.innerHTML = '';
  cars.forEach((car) => {
    carsElement.insertAdjacentHTML('beforeend', `
      <div class="car">
        <div class="car-image">
          <img src="http://loremflickr.com/280/280/Ferrari 308 GTS" />
        </div>
        <div class="car-info">
          <h4>${car.brand} ${car.model}</h4>
          <p><strong>Owner:</strong> ${car.owner}</p>
          <p><strong>Plate:</strong> ${car.plate}</p>
        </div>
      </div>
    `);
  });
};

const createCar = (event) => {
  event.preventDefault();
  const url = `https://wagon-garage-api.herokuapp.com/${garage}/cars`;
  fetch(url, {
    headers: { 'Content-Type': 'application/json' },
    method: 'POST',
    body: JSON.stringify({
      brand: brand.value,
      model: model.value,
      owner: owner.value,
      plate: plate.value
    })
  })
    .then(response => response.json())
    .then((data) => {
      fetchAllCars();
    });
};

const fetchAllCars = () => {
  const url = `https://wagon-garage-api.herokuapp.com/${garage}/cars`;
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      insertCars(data);
    });
};
fetchAllCars();
form.addEventListener('submit', createCar);
