#!/usr/bin/node
// Prints 3 lines similar to 1-multi_languages.js but using an array of strings and a loop
// Define an array containing the lines to be printed

const lang = 'C is fun';

if (isNaN(process.argv[2])) {
  console.log('Missing number of occurrences');
} else {
  for (let i = 0; i < parseInt(process.argv[2]); i++) {
    console.log(lang);
  }
}
