const myWord = require('./hello2');

function sayHello() {
	console.log('Hello ' + myWord.word() + ', this is ' + myWord.name());
}

sayHello();

console.log(myWord.mysteryMultiplier(5));
console.log(myWord.woof());
