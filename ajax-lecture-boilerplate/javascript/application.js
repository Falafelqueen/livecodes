console.log("Hello from JavaScript!");

const url = "https://api.github.com/users/dhh";

// AJAX - Asynchronous JS and XML

// fetch API
// asynchronous - more processes can run at the time

console.log(fetch(url));
fetch(url)
  .then((response) => response.json())
  .then((data) => {
    console.log(data);
    console.log(data.avatar_url);
  });

// Request -> HTTP

// HTTP 4 parts
// verb - get, post, patch, delete
// url
// headers - meta info about the request
// body -> post, patch

// REST full

