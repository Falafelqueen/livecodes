// TODO - Fetch an activity with the Bored API - Let's psuedocode!
const url = "https://www.boredapi.com/api/activity/";

const btn = document.querySelector(".btn-warning");
// const ideas = ["Clean your room", "Do flashcards", "Stare into nothingness"];

btn.addEventListener("click", (event) => {
  console.log(event);
  // const randIndex = Math.floor(Math.random() * 3);
  // const randIdea = ideas[randIndex];
  // btn.setAttribute('disabled', '')

  // select the btn
  // attach an event
  // get the idea
  const insertData = (data) => {
    // select the elemnt
    const element = document.getElementById("activity");
    // change the element inner text
    element.innerText = data.activity;
  };

  fetch(url)
    .then((response) => response.json())
    .then((data) => {
      insertData(data);
    });
});
