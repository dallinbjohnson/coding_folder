// Function expression
var fullName;
fullName = function (first, last) {
    return first + " " + last;
};
console.log(fullName('Dallin', 'Johnson'));
// Immediately invoked version
(function (first, last) {
    console.log(first + " " + last);
})('Ty', 'Johnson');
//# sourceMappingURL=immediately_invoked_arguments.js.map