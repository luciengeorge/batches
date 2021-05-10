// printing messages in terminal
// ruby => puts
console.log('message');

// checking types
// ruby => #.class
typeof('boris');

// type casting
// ruby .to_i, to_s
Number.parseInt('42', 10) // string to integer
(42).toString() // integer to a string

// convention
// ruby => lower_snake_case
// js => lowerCamelCase


// case manipulation
// ruby => .downcase, .upcase, .capitalize
'lucien'.toLowerCase();
'lucien'.toUpperCase();

// Array CRUD in JS
const array = [];
array.push('boris'); // create
array[0] // read
array[0] = 'Boris' // update
array.splice(0, 1); // delete => 1 argument is index, 2 is number of elements to delete

// Object CRUD in JS
const user = {
  firstName: 'boris',
  lastName: 'paillard'
};

// CRUD
// Read
user['firstName'];
user.firstName;

// Create
user.age = 18;
user['age'] = 18;

// Update
user['age'] = 25;
user.age = 25;

// Delete
delete user.age;
delete user['age'];
