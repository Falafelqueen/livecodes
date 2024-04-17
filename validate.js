const allInputs = document.querySelectorAll(".form-control");
const btn = document.querySelector(".btn.btn-primary");
const checkbox = document.getElementById("tos");
// takes the input and returns true or false
const isValid = (input) => {
  if (input.type == "email") {
    return isFilled(input) && isValidEmail(input.value);
  } else {
    return isFilled(input);
  }
};

const isFilled = (input) => {
  return input.value !== "";
};

const isValidEmail = (email) => {
  return /^\w+@\w+(\.\w{2,6})+$/.test(email);
};

const allValid = (inputs) => {
  Array.from(inputs).every((input) => {
    isValid(input);
  });
};

allInputs.forEach((input) => {
  input.addEventListener("blur", () => {
    // check whether all input is valid
    // input is valid -> if the value is not ''
    console.log(isValid(input));
    console.log(input.value);
    if (isValid(input)) {
      input.classList.add("is-valid");
      input.classList.remove("is-invalid");
    } else {
      input.classList.remove("is-valid");
      input.classList.add("is-invalid");
    }

    if (allValid && checkbox.checked) {
      btn.disabled = false;
    } else {
      btn.disabled = true;
    }
  });
});
