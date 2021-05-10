const user = {
  firstName: 'boris',
  lastName: 'paillard'
};
console.log(typeof(user));
console.log(user);

// CRUD
// Read
console.log(user['firstName']);
console.log(user.firstName);

// Create
user.age = 18;
user['age'] = 18;
console.log(user);

// Update
user['age'] = 25;
user.age = 25;
console.log(user);

// Delete
delete user.age;
delete user['age'];
console.log(user);

// Iterations
// on keys
Object.keys(user).forEach((field) => {
  console.log(field);
});

// on values
Object.values(user).forEach((value) => {
  console.log(value);
});

Object.entries(user).forEach((entry) => {
  console.log(`key: ${entry[0]}`);
  console.log(`value: ${entry[1]}`);
});

// advanced
Object.entries(user).forEach(([key, value]) => {
  console.log(`key: ${key}`);
  console.log(`value: ${value}`);
});
