var dbQuery = function() : void {
	setTimeout(() => {
		console.log('Query Results');
	}, 3000);
}

function loadPage(q : () => void) {
	console.log("Header");
	q();
	console.log("Sidebar");
	console.log("Footer");
}

loadPage(dbQuery);