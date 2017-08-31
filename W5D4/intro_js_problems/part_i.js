function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// ^^ Snytax error: Identifier 'x' has already been declared
// const x was delcared in function mysteryScoping3
// another variable of the same name 'x' cannot be defined elsewhere

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}
// cannot definite two "let" variables of the same name within the same function/block


function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(arr) {
  const fizzBuzzArr = [];

  arr.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });
  return fizzBuzzArr;
}

function isPrime(n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let countOfPrimes = 0;
  let i = 2;

  while (countOfPrimes < n) {
    if (isPrime(i)) {
      sum+=i;
      countOfPrimes++;
    }
    i++;
  }
  return sum;
}
