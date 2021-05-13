// TODO: Build an awesome garage!
const garage = 'lucien-george-garage';
const baseUrl = 'https://wagon-garage-api.herokuapp.com';
const carsElement = document.querySelector('.cars-list');
const brand = document.querySelector('#brand');
const model = document.querySelector('#model');
const owner = document.querySelector('#owner');
const plate = document.querySelector('#plate');
const form = document.querySelector('#new-car');

const buildCarHTML = (car) => {
  return `
    <div class="car" id="car_${car.id}">
      <div class="car-image">
        <img src="http://loremflickr.com/280/280/Ferrari 308 GTS" />
      </div>
      <div class="car-info w-100">
        <div class="d-flex align-items-center justify-content-between w-100 mb-2">
          <h4 class="mb-0">${car.brand} ${car.model}</h4>
          <button class="btn btn-danger" id="${car.id}" class="delete-car">delete</button>
        </div>
        <p><strong>Owner:</strong> ${car.owner}</p>
        <p><strong>Plate:</strong> ${car.plate}</p>
      </div>
    </div>
  `;
};

const insertCars = (cars) => {
  carsElement.innerHTML = '';
  cars.forEach((car) => {
    carsElement.insertAdjacentHTML('beforeend', buildCarHTML(car));
  });
  const deleteLinks = document.querySelectorAll('.btn-danger');
  deleteLinks.forEach((link) => {
    link.addEventListener('click', deleteCar);
  });
};

const fetchAllCars = () => {
  const url = `${baseUrl}/${garage}/cars`;
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      insertCars(data);
    });
};

const createCar = (event) => {
  event.preventDefault();
  const url = `${baseUrl}/${garage}/cars`;
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
    .then(fetchAllCars);
};

const deleteCar = (event) => {
  fetch(`${baseUrl}/cars/${event.currentTarget.id}`, {
    method: 'DELETE'
  })
    .then(response => response.json())
    .then((data) => {
      document.querySelector(`#car_${data.id}`).remove();
    });
};

fetchAllCars();
form.addEventListener('submit', createCar);
