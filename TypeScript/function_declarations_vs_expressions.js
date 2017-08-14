console.log(fullName('Dallin', 'Johnson'));
// Function Expression have to be declared before it is called
// console.log(otherFullName('Dallin', 'Johnson'));
// console.log(thirdFullName('Dallin', 'Johnson'));
// Function Declaration, hosting
function fullName(first, last) {
    return first + " " + last;
}
// Function Expression
var otherFullName;
otherFullName = function (first, last) {
    return first + " " + last;
};
var thirdFullName = function (first, last) {
    return first + " " + last;
};
console.log(otherFullName('Dallin', 'Johnson'));
console.log(thirdFullName('Dallin', 'Johnson'));
//# sourceMappingURL=function_declarations_vs_expressions.js.map