#!/usr/bin/node
// Adds two integers and prints the result

function add (a, b) {
  return parseInt(a) + parseInt(b);
}

console.log(add(process.argv[2], process.argv[3]));
