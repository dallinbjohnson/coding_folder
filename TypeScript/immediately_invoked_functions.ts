var names : string[] = ['Dallin', 'Ty', 'Shayla'];
var counter : number = 0;

(function() {
	for (let name in names) {
		counter++;
	}
})();

console.log(counter);