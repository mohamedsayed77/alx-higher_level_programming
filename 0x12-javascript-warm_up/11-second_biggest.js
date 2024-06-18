#!/usr/bin/node
// Searches the second biggest integer in the list of arguments.

if (process.argv.length <= 2) {
  console.log(0);
} else if (process.argv.length === 3) {
  console.log(0);
} else {
  const numbers = process.argv.slice(2).map(Number).filter(n => !isNaN(n));
  let max = -Infinity;
  let secondMax = -Infinity;

  for (let num of numbers) {
    if (num > max) {
      secondMax = max;
      max = num;
    } else if (num > secondMax && num !== max) {
      secondMax = num;
    }
  }

  if (secondMax === -Infinity) {
    console.log(0);
  } else {
    console.log(secondMax);
  }
}
