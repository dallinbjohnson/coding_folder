let x : number = 100;

if(x == 100) {
	console.log('Condition 1 passed x == 100');
}

// It can not be x === "100"
if(x === 100) {
	console.log('Condition 2 passed x === 100');
}

if(x != 200) {
	console.log('Condition 3 passed x != 200');
}

if(x > 99) {
	console.log('Condition 4 passed x > 99');
}
if(x >= 100) {
	console.log('Condition 5 passed x >= 100');
}

if(x < 101) {
	console.log('Condition 6 passed x < 101');
}
if(x <= 100) {
	console.log('Condition 7 passed x <= 100');
}