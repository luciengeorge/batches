const age = 17;

// if / else
if (age >= 18) {
  console.log('you can drink');
} else {
  console.log('you cannot drink');
}
const raining = true;
console.log(raining ? 'umbrella' : 'no umbrella');

// if / else if / else
const digit = 3;
if (digit === 0) {
  console.log('Zero');
} else if (digit === 1) {
  console.log('One');
} else {
  console.log("I don't know this digit");
}

// switch
const digit = 0;
switch (digit) {
  case 0:
    console.log('zero');
    break;
  case 1:
    console.log('one');
    break;
  default:
    console.log("I don't know this digit");
}
