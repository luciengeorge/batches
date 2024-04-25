/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/inbox_examiner.js";

const hasNewMessage = () => {
  // TODO: return true with a probability of 20%.
  return Math.random() < 0.2;
};

// Below is the one-liner arrow function version of the above
// const hasNewMessage = () => Math.random() < 0.2;

const sample = array => array[Math.floor(Math.random() * array.length)];

const newMessage = () => {
  // TODO: return a random message as an object with two keys, subject and sender
  const senders = ['GitHub', 'Le Wagon', 'Google', 'Apple'];
  const subjects = ['You Got Mail!', 'Welcome!', 'You won\'t believe it...', 'Past due invoice'];

  return {
    sender: sample(senders),
    subject: sample(subjects)
  };
};

const appendMessageToDom = (message) => {
  // TODO: append the given message to the DOM (as a new row of `#inbox`)
  const line = `<div class="row message unread">
    <div class="col-3">${message.sender}</div>
    <div class="col-9">${message.subject}</div>
  </div>`;
  document.querySelector('#inbox').insertAdjacentHTML('afterbegin', line);
};

// The below method is called in refresh(). It is part of the refactoring strategy.
const updateUnreadCount = () => {
  const unreadCount = document.querySelectorAll('.message.unread').length;
  document.getElementById('count').innerText = `(${unreadCount})`;
  document.title = `(${unreadCount}) Fake Inbox`;
};

const refresh = () => {
  // TODO: Implement the global refresh logic. If there is a new message,
  //       append it to the DOM. Update the unread counter in title as well.
  if (hasNewMessage()) {
    appendMessageToDom(newMessage());
    updateUnreadCount();
  }
};

// Do not remove these lines.
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
  });
}

// Checking exercise answers. DO NOT MODIFY THIS LINE.
runChallenges(hasNewMessage, newMessage);
export { hasNewMessage, newMessage };
