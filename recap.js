// data types in JS

// number in JS (in Ruby we have both integer and float)
// string
// array
// boolean
// object (hash)

// Conditional (if statemenets)

// variable
const age = 17;
let name = "Linda";

// can you vote if statement
if (age >= 18) {
  console.log("You can vote");
} else {
  console.log("You cannot vote");
}

// Functions
// function expression
const canYouVote1 = (age) => {
  // if (age >= 18) {
  //   console.log("You can vote");
  // } else {
  //   console.log("You cannot vote");
  // }

  return age >= 18;
};

// function declaration
function canYouVote2() {}

// DOM - document object model
// object representation of HTML
// document object , window object, element

const btn = document.querySelector("button");
const multiple = document.querySelectorAll("button");

const h1 = document.querySelector("h1");

h1.insertAdjacentHTML("afterend", "<h3>Hola from Berlin</h3>");

h1.innerText = "Bye from Barcelona";
