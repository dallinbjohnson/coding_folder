// var x : number = 0;
// while (x < 10) {
// 	console.log(x)
// 	x++;
// }
var players = [3, 10, 4, 5, 1];
// For in loop is for the index
console.log("For/in loops over the index");
for (var player in players) {
    console.log(player);
}
// For of
console.log("For/of loops over the values of the array");
for (var _i = 0, players_1 = players; _i < players_1.length; _i++) {
    var player = players_1[_i];
    console.log(player);
}
//# sourceMappingURL=loops.js.map