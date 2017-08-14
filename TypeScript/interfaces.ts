// interface User {
// 	email : string;
// 	firstName : string;
// 	lastName : string;
// }

// function profile(user : User) : string {
// 	return `Welcome, ${user.firstName} ${user.lastName}`;
// }

// var realUser = {
// 	email: 'test@gmail.com',
// 	firstName: 'Dallin',
// 	lastName: 'Johnson'
// };

// console.log(profile(realUser));

// **************************************

interface User {
	email : string;
	firstName? : string;
	lastName? : string;
}

function profile(user : User) : string {
	return `Welcome, ${user.email}`;
}

var realUser = {
	email: 'test@gmail.com'
};

console.log(profile(realUser));


