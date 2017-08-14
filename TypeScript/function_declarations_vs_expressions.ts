console.log(fullName('Dallin', 'Johnson'));

// Function Expression have to be declared before it is called
// console.log(otherFullName('Dallin', 'Johnson'));
// console.log(thirdFullName('Dallin', 'Johnson'));

// Function Declaration, hosting
function fullName(first : string, last : string) : string {
	return first + " " + last;
}

// Function Expression
var otherFullName : (first : string, last : string) => string;

otherFullName = function (first : string, last : string) {
	return first + " " + last;
}

var thirdFullName : (first : string, last : string) => string = function (first : string, last : string) {
	return first + " " + last;
}

console.log(otherFullName('Dallin', 'Johnson'));
console.log(thirdFullName('Dallin', 'Johnson'));