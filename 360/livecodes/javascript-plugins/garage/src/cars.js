const newCar = object => `<div class="car">
                            <div class="car-image">
                              <img src="http://loremflickr.com/280/280/Ferrari 308 GTS" />
                            </div>
                            <div class="car-info">
                              <h4>${object.brand} ${object.model}</h4>
                              <p><strong>Owner:</strong> ${object.owner}</p>
                              <p><strong>Plate:</strong> ${object.plate}</p>
                            </div>
                          </div>`;

const fetchAllCars = (url, carsList) => {
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      carsList.innerHTML = "";
      data.forEach((carObject) => {
        carsList.insertAdjacentHTML('afterbegin', newCar(carObject));
      });
    });
};

export { fetchAllCars };
