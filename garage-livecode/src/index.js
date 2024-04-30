console.log("Connected");

const garage = "crazyGarage";
const url = `https://wagon-garage-api.herokuapp.com/${garage}/cars`;

// Select the element where we want to insert the cars
const carsList = document.querySelector(".cars-list");

const insertCarIntoCarsList = (car) => {
  const brand = car.brand;
  const model = car.model;
  const owner = car.owner;
  const plate = car.plate;
  const carHTML = `
      <div class="car">
          <div class="car-image">
            <img src="http://loremflickr.com/280/280/${brand},${model}" />
          </div>
          <div class="car-info">
            <h4>${brand} ${model}</h4>
            <p><strong>Owner:</strong> ${owner}</p>
            <p><strong>Plate:</strong> ${plate}</p>
          </div>
          <div class="delete-btn">
            <a href="https://wagon-garage-api.herokuapp.com/cars/${car.id}">Delete X </a>
          </div>
        </div>`;
  carsList.insertAdjacentHTML("beforeend", carHTML);
};

// DELETE from API
const deleteFromAPI = (carUrl) => {
  fetch(carUrl, { method: "DELETE" })
    .then((response) => response.json())
    .then((data) => loadCarsFromGarage());
};

const addDeleteFunctionality = () => {
  const deleteBtn = document.querySelectorAll(".delete-btn a");
  deleteBtn.forEach((deleteBtn) => {
    deleteBtn.addEventListener("click", () => {
      event.preventDefault();

      deleteFromAPI(deleteBtn.href);
    });
  });
};

// Get the data from the API
const loadCarsFromGarage = () => {
  fetch(url)
    .then((response) => response.json())
    .then((data) => {
      carsList.innerHTML = "";
      data.forEach((car) => {
        insertCarIntoCarsList(car);
      });
      addDeleteFunctionality();
    });
};

// Load cars from garage on page load

loadCarsFromGarage();

// Create a new car in the API

const form = document.querySelector(".car-form");

const createCar = (car) => {
  fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(car),
  })
    .then((response) => response.json())
    .then((data) => loadCarsFromGarage());
};

form.addEventListener("submit", () => {
  event.preventDefault();
  // Get the car info from user
  // const brand = document.querySelector('input[name="brand"]').value;
  // const model = document.querySelector('input[name="model"]').value;
  // const owner = document.querySelector('input[name="owner"]').value;
  // const plate = document.querySelector('input[name="plate"]').value;
  // const car = {
  //   brand: brand,
  //   model: model,
  //   owner: owner,
  //   plate: plate,
  // };

  const formData = new FormData(form);
  const objectFromForm = Object.fromEntries(formData);
  // Send a POST request to the API when form submits
  // Load cars from the garage
  createCar(objectFromForm);
  form.reset();
});

//  Delete the car
//  Listen to the click on the link
const deleteBtn = document.querySelectorAll(".delete-btn a");
//  Send a API request to delete the car
console.log(deleteBtn);
