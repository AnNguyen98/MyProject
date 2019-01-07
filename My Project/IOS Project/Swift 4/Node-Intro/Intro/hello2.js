const dog = require('./dog');

const magicNumber = 13;

module.exports = {
	word: function() {
		return 'everyone';
	}, 

	name: function() {
		return 'Billy Bob';
	},

	mysteryMultiplier: function(num) {
		return num * magicNumber;
	},
	
	woof: function() {
		return dog.bark();
	}
}