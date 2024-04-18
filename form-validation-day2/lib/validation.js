// TODO: Validate this form

// event listner allows us to execute some code when something happens

// element.addEventListener("type of the event", function what is supposed to happen)

// types of events:
// click
// sumbit
// scroll
// zoom
// mouseover
// mouse-in
// mouse-out
// focus
// blur (defocus)
// change
// keyup, keydown

// 1. Select the elements from the DOM

const inputs = document.querySelectorAll(".form-control");
const checkbox = document.getElementById("tos");
const btn = document.querySelector(".btn.btn-primary");

// Create a function that checks whether input is filled
const isFilled = (input) => {
  return input.value.length > 0;
};

const isValidEmail = (email) => {
  return /\w+@\w+\.(\w{2,6})+/.test(email);
};

// check whether checkbox is checked
const checkboxChecked = (checkbox) => {
  return checkbox.checked;
};

// function that checks whether the input is valid
// if it is it applies the bootstrap valid styling

const checkValidty = (input) => {
  // if it an email we check if it is a valid email
  // if it is normal input we check if it is filled
  if (input.type == "email") {
    return isValidEmail(input.value);
  } else {
    return isFilled(input);
  }
};

// style inputs
const styleInput = (input) => {
  if (checkValidty(input)) {
    // add 'is-valid class to input
    input.classList.add("is-valid");
    input.classList.remove("is-invalid");
  } else {
    input.classList.add("is-invalid");
    input.classList.remove("is-valid");
  }
};

// create a function to enable the button
// if all the inputs are valid AND the checkbox is checked

const enableButton = () => {
  // check if they are all valid
  let allValid = true;
  inputs.forEach((input) => {
    if (!checkValidty(input)) {
      allValid = false;
    }
  });

  // const allValid = Array.from(inputs).every((input) => checkValidy(input))

  if (allValid && checkboxChecked(checkbox)) {
    btn.removeAttribute("disabled");
  } else {
    btn.setAttribute("disabled", "");
  }
};

// 2. Attach events listeners to
// checkbox
// checkbox.addEventListener("change", () => {
//   // enable button
//   enableButton();
// });

checkbox.addEventListener("change", enableButton);

inputs.forEach((input) => {
  input.addEventListener("blur", () => {
    // style input
    styleInput(input);
    // enable button
    enableButton();
  });
});
