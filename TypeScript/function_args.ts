function printAddress(street: string, streetTwo?: string, state = 'AZ') {
	console.log(street);
	if (streetTwo) {
		console.log(streetTwo);
	}
	console.log(state);
}

printAddress('123 Any St');
console.log(' ');
printAddress('123 Any St', 'Suite 540');
console.log(' ');
printAddress('123 Any St', 'Suite 540', 'UT');

console.log(' ');

function lineupCard(team: string, ...players: string[]) {
	console.log('Team: ' + team);

	for (let player of players) {
		console.log(player);
	}
}

lineupCard('Astros', 'Altuve', 'Correra', 'Bregman');