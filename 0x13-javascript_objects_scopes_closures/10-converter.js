#!/usr/bin/node
// Function that converts a number from base 10 to another base passed as an argument.

exports.converter = function (base) {
  return function (n) {
    return (n.toString(base));
  };
};
