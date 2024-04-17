// TODO: Validate this form

// check if all fields are filled
// check if the email is valid
// check if the checkbox is checked
// if all this is true -> let the user click the button
// remove the disabled attribute

// 1. select all necessary elements
const allInputs = document.querySelectorAll(".form-control");
const checkbox = document.getElementById("tos");
const btn = document.querySelector(".btn.btn-primary");

// 3a. create a function checking whether the input is filled
const isFilled = (input) => {
  // check whether input is empty
  // input.value !== ""
  // return true if the lenght of the input is larger than 0
  // return false if it is empty ie. has 0 length
  return input.value.length > 0;
};

// 3b. create a function which checks if email is valid
const emailIsValid = (email) => {
  // using regex to check a string against some pattern
  // returns true if the email matches the pattern
  // false if it doesn't
  return /^\w+@\w+\.(\w{2,6})$/.test(email);
};

// 3c. create a method which checkes whether input is valid
// if the input is email check whether it is formated
const isValid = (input) => {
  // input is an object that has many attributes
  // to read some of the attributes fx. id we use .id
  // we could be also checking input.type, or input.name
  if (input.id == "email") {
    // if the email is not empty (we check it with our isFilled function)
    // AND it is a valid email (checked with emailIsValid)
    // return true
    // if not this condition returns false
    return isFilled(input) && emailIsValid(input.value);
  } else {
    // check if the input is filled (we check it with our isFilled function)
    // it returns true or false
    return isFilled(input);
  }
};

// putting it together
// 3d. check if all inputs are valid
const allInputsValid = (inputs) => {
  // let allValid = true;
  // inputs.forEach((input) => {
  //   if (!isValid(input)) {
  //     allValid = false;
  //   }
  // });
  // return allValid;

  // convert inputs (NodeList) to an array
  // use .every to check if every element of the array fullfils some condition
  // !! keep in mind our isValid(input) returns true or false so it is basically a condition
  return Array.from(inputs).every((input) => isValid(input));
};

// 3e. change the styling of the input fields
const changeColor = (input) => {
  // if the input field is valid
  if (isValid(input)) {
    // add/remove bootstrap class that makes it nice
    input.classList.add("is-valid");
    input.classList.remove("is-invalid");
  } else {
    // if the input is not valid also do some bootstrap styling with classes
    input.classList.add("is-invalid");
    input.classList.remove("is-valid");
  }
};

// 4. create a method that enables the submit button
const enableButton = () => {
  // if all inputs are valid (calling our function)
  // AND if the checkbox is checked
  //    input fields of type checkboxes have a checked attribute
  //     we can read it as .checked and it is always true or false
  if (allInputsValid(allInputs) && checkbox.checked) {
    // set the disabled attribute of the button to false
    btn.disabled = false;
  } else {
    // if the above conditions are false
    // disable the button
    btn.disabled = true;
  }
};

allInputs.forEach((input) => {
  // 2. Attach an event listener to all the inputs
  // diffrente type of events: click, focus, change, mouseover, mouseout
  // 'blur' event happens when user stops typing in an input field and it 'defocuses`
  input.addEventListener("blur", () => {
    // (3)pass the input to the change color function to style it valid or invalid
    changeColor(input);
    // (4)call the enable button function that decides whether the button is disabled or not
    enableButton();
  });
});

// 5. Add event listener to checkbox
// and it should again just decide whether the button is disabled or not
checkbox.addEventListener("change", enableButton);
