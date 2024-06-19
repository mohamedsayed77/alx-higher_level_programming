#!/usr/bin/node
// Function that returns the number of occurrences of a specific element in a list

exports.nbOccurences = function (list, searchElement) {
  return (list.filter(e => e === searchElement).length);
};
