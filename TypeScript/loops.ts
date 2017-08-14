// var x : number = 0;

// while (x < 10) {
// 	console.log(x)
// 	x++;
// }
let players : number[] = [3, 10, 4, 5, 1];

// For in loop is for the index
console.log("For/in loops over the index")
for (let player in players) {
	console.log(player)
}

// For of
console.log("For/of loops over the values of the array")
for (let player of players) {
	console.log(player)
}