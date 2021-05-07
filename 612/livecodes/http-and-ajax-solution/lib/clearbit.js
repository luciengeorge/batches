const authorization = "Bearer sk_057f59ec4ea98b3863b448d5f2a63d18";

const form = document.querySelector('#clearbitForm');
const input = document.querySelector('#clearbitEmail');
const name = document.querySelector('#userName');
const email = document.querySelector('#userEmail');
const bio = document.querySelector('#userBio');
const location = document.querySelector('#userLocation');
form.addEventListener('submit', (event) => {
  event.preventDefault();
  const url = `https://person.clearbit.com/v2/people/find?email=${input.value}`;

  fetch(url, { headers: { Authorization: authorization } })
    .then(response => response.json())
    .then((data) => {
      name.innerText = data.name.fullName;
      email.innerText = data.email;
      bio.innerText = data.bio;
      location.innerText = data.geo.city;
    });
});
