
// unique id for our garage
const garage = 'batch-612-garage';
// set a variable with the baseUrl of the api
const baseUrl = 'https://wagon-garage-api.herokuapp.com';
// querySelector the brand input
const brandInput = document.querySelector('#brand');
// querySelector the model input
const modelInput = document.querySelector('#model');
// querySelector the plate input
const plateInput = document.querySelector('#plate');
// uerySelector the owner input
const ownerInput = document.querySelector('#owner');

const deleteCar = (event) => {
  // verb: DELETE
  // url: https://wagon-garage-api.herokuapp.com/cars/:id
  // get the id from the button
  // event.currentTarget.dataset.id;
  const carId = event.currentTarget.getAttribute('data-id');
  // fetch with method DELETE
  fetch(`${baseUrl}/cars/${carId}`, {
    method: 'DELETE'
  })
    .then(response => response.json())
    .then(fetchCars);
};

const addEventListenerToDeleteBtns = () => {
  const deleteBtns = document.querySelectorAll('.btn-danger');
  deleteBtns.forEach((btn) => {
    btn.addEventListener('click', deleteCar);
  });
};

const carHTML = (car) => {
  return `
    <div class="car">
      <div class="car-image">
        <img src="http://loremflickr.com/280/280/${car.brand} ${car.model}" />
      </div>
      <div class="car-info w-100">
        <div class="w-100 d-flex align-items-center justify-content-between mb-2">
          <h4 class="mb-0">${car.brand} ${car.model}</h4>
          <button class="btn btn-danger" data-id="${car.id}">Delete</button>
        </div>
        <p><strong>Owner:</strong> ${car.owner}</p>
        <p><strong>Plate:</strong> ${car.plate}</p>
      </div>
    </div>
  `;
};

const fetchCars = () => {
  // verb GET
  // url: https://wagon-garage-api.herokuapp.com/:garage/cars
  // 1. select the element where we'll insert all the cars
  const cars = document.querySelector('.cars-list');
  // 2. fetch
  fetch(`${baseUrl}/${garage}/cars`)
    .then(response => response.json()) // 3. parse the response into a json
    .then((data) => {
      // dig through the json to grab the right data
      // iterate over all the cars
      cars.innerHTML = ''; // clear the HTML before adding the cars
      data.forEach((car) => {
        // insert each car
        cars.insertAdjacentHTML('beforeend', carHTML(car));
      });
      addEventListenerToDeleteBtns();
    });
};

const submitCarForm = (event) => {
  // prevent the default behavior (no page reload)
  event.preventDefault();
  // create the url we want to call
  // https://wagon-garage-api.herokuapp.com/:garage/cars
  const newCarUrl = `${baseUrl}/${garage}/cars`;
  // do the fetch
  fetch(newCarUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      brand: brandInput.value, // store the brand entered by the user
      model: modelInput.value, // store the model entered by the user
      owner: plateInput.value, // store the plate entered by the user
      plate: ownerInput.value // store the owner entered by the user
    })
  })
    .then(response => response.json())
    .then(fetchCars);
};

const createCar = () => {
  // Creating a Car in the garage
  // 5. querySelector the form
  const form = document.querySelector('#new-car');
  // 6. add an event listener on the form
  form.addEventListener('submit', submitCarForm);
};

export { createCar, fetchCars };
