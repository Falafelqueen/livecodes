// puts
console.log("Hello from JavaScript!");

// Data types in JS (what is different than Ruby)

// Strings
// Number - integer and float in Ruby
// Array
// Object - hash

// dog[:name] (in Ruby)

const dog = { name: "Linda", age: 3 };

// reading values
dog.name;

// Variables in JS
// name_var = "value"

const name = "Linda";
let age = 3;

// if statements
if (age >= 18) {
  console.log("Can vote");
} else if (age === 3) {
  console.log("Linda is 3 and cannot vote");
} else {
  console.log("whatever");
}

// functions in JS

// def can_you_vote(age)
// some code
// end

canIVote(dog.age);
// function expression
const canYouVote = (age) => {
  // some code
  console.log("function2", age);
};
canYouVote(dog.age);
// function declaration
function canIVote(age) {
  console.log("function", age);
}

// DOM - Document Object Model
// representation of the HTML in objects

// Select some element from the DOM

// Select one element
const btnPrimary = document.querySelector(".btn.btn-primary");

// Select all the buttons
const btns = document.querySelectorAll(".btn");
console.log(btns);

// Add an element to the DOM

const container = document.querySelector(".container");

container.insertAdjacentHTML(
  "beforeend",
  '<button class="btn btn-info">Hola from Paris</button>'
);

btnPrimary.innerText = "Hola from Madrid";
