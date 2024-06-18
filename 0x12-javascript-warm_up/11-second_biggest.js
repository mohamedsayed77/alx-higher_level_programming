#!/usr/bin/node
// Searches the second biggest integer in the list of arguments.

if (process.argv.length <= 2) {
  console.log(0);
} else if (process.argv.length === 3) {
  console.log(0);
} else {

  const numbers = process.argv.slice(2).map(Number).filter(n => !isNaN(n));


  const sortedNumbers = numbers.sort((a, b) => b - a);

  if (sortedNumbers.length < 2) {
    console.log(0);
  } else {
    console.log(sortedNumbers[1]);
  }
}

