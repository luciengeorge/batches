import { fetchCars } from "./car";

// 1. get all the inputs from the form

const pushToApi = (body, garage) => {
  fetch(`https://wagon-garage-api.herokuapp.com/${garage}/cars`, {
    headers: { "Content-Type": "application/json" },
    method: "POST",
    body: JSON.stringify(body)
  })
    .then(response => response.json())
    .then(() => {
      fetchCars(garage); // Look at local_names.default
    });
};

// 2. get the values of each input when the form is submitted\
const initForm = (garage) => {
  const brand = document.getElementById("brand");
  const model = document.getElementById("model");
  const owner = document.getElementById("owner");
  const plate = document.getElementById("plate");
  const form = document.getElementById("new-car");
  brand.focus();
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const body = {
      brand: brand.value,
      model: model.value,
      owner: owner.value,
      plate: plate.value
    };
    pushToApi(body, garage);
    form.reset();
  });
};

export { initForm };
