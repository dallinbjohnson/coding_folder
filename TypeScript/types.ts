// Boolean
var paidAccount : boolean = true;
var paidAccount : boolean = false;
console.log(paidAccount);

// Number
let age : number = 33;
var taxRate : number = 7.5;
console.log(age);
console.log(taxRate);

// String
var fullName : string = "Dallin Johnson";
console.log(fullName);

// Array
var peoplesAges : number[] = [33, 28, 11];
console.log(peoplesAges);

// Tuple
let player : [number, string, number, number];
player = [3, 'Corerra', .333, 33];
console.log(player);

// Enum
enum AprovalStatus {Approved, Pending, Rejected};
let job : AprovalStatus = AprovalStatus.Approved;
console.log(job);
job = AprovalStatus.Pending;
console.log(job);
job = AprovalStatus.Rejected;
console.log(job);

// Any
var apiData : any[] = [123, 'Dallin', false];
console.log(apiData);

// Void
function printOut(msg: string) : void {
	console.log(msg);
}
printOut("How are you?");
