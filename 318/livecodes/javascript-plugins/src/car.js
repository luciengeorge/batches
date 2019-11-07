const carLibrary = document.querySelector('.cars-list');
// 1 fetch all the cars
// 2. populate the empty <div> in the html

// Function to build HTML
const buildHTML = (car) => {
  return `<div class="car">
  <div class="car-image">
    <img src="http://loremflickr.com/280/280/Ferrari 308 GTS" />
  </div>
  <div class="car-info">
    <h4>${car.brand} ${car.model}</h4>
    <p><strong>Owner:</strong> ${car.owner}</p>
    <p><strong>Plate:</strong> ${car.plate}</p>
  </div>
</div>`;
};

const addCars = (carsArray) => {
  carLibrary.innerHTML = '';
  carsArray.forEach((car) => {
    carLibrary.insertAdjacentHTML('beforeend', buildHTML(car));
  });
};

const fetchCars = (query) => {
  fetch(`https://wagon-garage-api.herokuapp.com/${query}/cars`)
    .then(response => response.json())
    .then(data => addCars(data));
};

export { fetchCars };
