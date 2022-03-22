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

// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."

const madLib = (verb, adjective, noun) => {
    return "We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}";
}

// > isSubstring("time to program", "time")
// true

// > isSubstring("Jump for joy", "joys")
// false

const isSubstring = (mainstring,sub) => {
    return mainstring.includes(sub);
}

const fizzBuzz = (array) => {
    const result = [];
    array.forEach(num => {
        if((num%3 === 0) ^ (num%5 === 0)) {
            result.push(num)
        }
    });
    return result;
}

const isPrime = (num) => {
    if (num < 2) { return false; }
    for (let i = 2; i < num; i++ ) {
        if (num % i === 0) { 
            return false; 
        }
    }
    return true;
}

const sumOfPrimes = (n) => {
    let count = 0;
    let sum = 0;
    let i = 2;
    while(count < n) {
        if (isPrime(i)) {
            sum += i;
            count++;
        }
        i++;
    }
    return sum;
}

