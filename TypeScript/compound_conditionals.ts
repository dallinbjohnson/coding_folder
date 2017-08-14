let email : string = 'test@gmail.com';
let password : string = 'asdfasdf';

if (email == 'test@gmail.com' && password == 'asdfasdf') {
	console.log('You are authorized');
} else {
	console.log('Permission denied');
}

if (password == 'qwerqwer' || password == 'asdfasdf') {
	console.log('You are authorized');
} else {
	console.log('Permission denied');
}

if (!(email == 'test@gmail.com')) {
	console.log('You are authorized');
}