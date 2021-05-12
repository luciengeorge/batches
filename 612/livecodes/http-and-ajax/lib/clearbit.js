const authorization = "Bearer sk_057f59ec4ea98b3863b448d5f2a63d18";
// 1. querySelector for the field where we'll enter the email
const emailInput = document.querySelector('#clearbitEmail');
// 2. querySelector for the form that will be submitted
const form = document.querySelector('#clearbitForm');
// 3. add an event listener on the form, with the event type being 'submit'
form.addEventListener('submit', (event) => {
  // 4. prevent the default behavior of the form
  event.preventDefault();
  // 5. we need the value entered in the email field
  const email = emailInput.value;
  // 6. create the api url with the email of the person we're searching for
  const url = `https://person.clearbit.com/v2/people/find?email=${email}`;
  // 7. fetch the url
  fetch(url, {
    headers: {
      // set the authorization key in the headers
      Authorization: authorization
    }
  })
    .then(response => response.json()) // 8. parse the response into a json
    .then((data) => {
      console.log(data.location);
      // 9. dig through the json to find the values that we want
      // 9a. name
      const fullName = data.name.fullName;
      // 9b. email
      const email = data.email;
      // 9c. bio
      const bio = data.bio;
      // 9d. location
      const location = data.location;
      // 10. add those values in the HTML
      // 10a. select the tag for the name
      const nameField = document.querySelector('#userName');
      // 10b. set the innerHTML of the name
      nameField.innerHTML = fullName;
      // 10c. select the tag for the email
      const emailField = document.querySelector('#userEmail');
      // 10d. set the innerHTML of the email
      emailField.innerHTML = email;
      // 10e. select the tag for the bio
      const bioField = document.querySelector('#userBio');
      // 10f. set the innerHTML of the bio
      bioField.innerHTML = bio;
      // 10g. select the tag for the location
      const locationField = document.querySelector('#userLocation');
      // 10h. set the innerHTMl of the location
      locationField.innerHTML = location;
    });
});
