#!/usr/bin/node
// Displays two arguments passed to it in the format: "arg1 is arg2"

if (isNaN(process.argv[2])) {
  console.log('Not a number');
} else {
  console.log('My number: ' + parseInt(process.argv[2]));
}
