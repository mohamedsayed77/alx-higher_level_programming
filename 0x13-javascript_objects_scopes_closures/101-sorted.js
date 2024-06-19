#!/usr/bin/node
// Script to compute a dictionary of user ids by occurrence

const occurrences = require('./101-data').dict;
const usersByOccurrence = {};

for (const userId in occurrences) {
  const occurrence = occurrences[userId];

  if (!usersByOccurrence[occurrence]) {
    usersByOccurrence[occurrence] = [];
  }

  usersByOccurrence[occurrence].push(userId);
}

console.log(usersByOccurrence);
