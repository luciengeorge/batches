// selecting an element
const list = document.querySelector('#players');
console.log(list);

// selecting a nested element
const active = document.querySelector('ul > .active');
console.log(active);

// adding html to the page
list.insertAdjacentHTML('beforeend', '<li class="red">Luke</li>');
list.insertAdjacentHTML('beforeend', '<li class="red">Anakin</li>');

// getting all the teams and printing the text inside the HTML elements
const list = document.querySelector('#fifa-wins');
const winners = list.querySelectorAll('li');

winners.forEach((winner) => {
  console.log(winner.innerText);
});

// adding France (2 wins) at the end of the list
list.insertAdjacentHTML('beforeend', "<li>France (2 wins)</li>");

// grabbing an input and changing it's value
const email = document.querySelector('#email');
console.log(email.value);
email.value = 'boris@lewagon.org';
console.log(email.value);

// getting different stuff from a link
const link = document.querySelector('#home');

// inner text without HTML
console.log(link.innerText)
// inner text with HTML
console.log(link.innerHTML)
// href value of the link
console.log(link.attributes.href.value);

// getting the #user HTML element
const user = document.querySelector('#user');

// reading the data attributes from it
console.log(user.dataset);
console.log(user.dataset.uid);
console.log(user.dataset.githubNickname);

// adding a data-name="boris" attribute to the HTML element
user.dataset.name = 'boris';

// removing the data-uid from the HTML element
user.removeAttribute('data-uid');

// selecting Romain's image and adding an event listener to it
const romainImg = document.querySelector('#romain');
romainImg.addEventListener('click', (event) => {
  event.currentTarget.classList.toggle('img-circle');
});

const avatars = document.querySelectorAll('.avatar');
console.log(avatars);

avatars.forEach((avatar) => {
  // adding an event listener on all the images
  avatar.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('img-circle');
  });
});

const wrapper = document.querySelector('#wrapper');
wrapper.addEventListener('click', (event) => {
  console.log(event.currentTarget); // element that triggered the event
  console.log(event.target); // element on which the user clicked
});
