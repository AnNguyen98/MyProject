const http = require('http');
const fs = require('fs');

const server = http.createServer((request, response) => {
	const { url, method } = request;

	if (method === 'POST' && url === '/post') {
		let requestBody = []
		request.on('data', (chunk) => {
			requestBody.push(chunk);
		}).on('end', () => {
			requestBody = Buffer.concat(requestBody).toString();
			console.log(requestBody)
			response.writeHead(200, {'Content-Type': 'text/plain'});
			response.end('Successfully POSTed');		
		});
	}

	else if (url === '/hello') {
		response.writeHead(200, {'Content-Type': 'text/plain'});
		response.end('Hello to you too :)');	
	} 

	else if (url === '/'){
		const index = fs.readFileSync('./index.html', 'utf8');
		response.writeHead(200, {'Content-Type': 'text/html'});
		response.end(index);	
	} 

	else {
		response.writeHead(404, {'Content-Type': 'text/plain'});
		response.end('Could not find page');
	}
	
});

server.listen(3000, () => {
	console.log('Server has started');
});