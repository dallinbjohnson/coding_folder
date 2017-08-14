// Boolean
var paidAccount = true;
var paidAccount = false;
console.log(paidAccount);
// Number
var age = 33;
var taxRate = 7.5;
console.log(age);
console.log(taxRate);
// String
var fullName = "Dallin Johnson";
console.log(fullName);
// Array
var peoplesAges = [33, 28, 11];
console.log(peoplesAges);
// Tuple
var player;
player = [3, 'Corerra', .333, 33];
console.log(player);
// Enum
var AprovalStatus;
(function (AprovalStatus) {
    AprovalStatus[AprovalStatus["Approved"] = 0] = "Approved";
    AprovalStatus[AprovalStatus["Pending"] = 1] = "Pending";
    AprovalStatus[AprovalStatus["Rejected"] = 2] = "Rejected";
})(AprovalStatus || (AprovalStatus = {}));
;
var job = AprovalStatus.Approved;
console.log(job);
job = AprovalStatus.Pending;
console.log(job);
job = AprovalStatus.Rejected;
console.log(job);
// Any
var apiData = [123, 'Dallin', false];
console.log(apiData);
// Void
function printOut(msg) {
    console.log(msg);
}
printOut("How are you?");
//# sourceMappingURL=types.js.map