/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/split_the_bill_examiner.js";

const splitTheBill = (group) => {
  // TODO 1: Implement the function and return an Object
  let sum = 0;
  let people = 0;
  const balance = {};

  Object.keys(group).forEach((key) => {
    sum += group[key];
    people += 1;
  });

  Object.keys(group).forEach((key) => {
    balance[key] = group[key] - (sum / people);
  });

  return balance;
};

const updatePriceList = (group) => {
  // TODO 2: Call the `splitTheBill(group)` function and display the results of what everyone needs to pay in the HTML
  const split = splitTheBill(group);
  Object.entries(split).forEach((row) => {
    document.getElementById(row[0]).querySelector(".due").innerHTML = `${row[1]}€`;
  });
}

// Do not remove these lines:
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    const group = {
      "john": 120,
      "paul": 30,
      "ringo": 150
    };
    updatePriceList(group);
  });
}


// module.exports = splitTheBill; // Do not remove this line.
runChallenges(splitTheBill);
export { splitTheBill };
