const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.urlencoded({
	extended:true
}));

app.get('/', (req, res) => {
	res.send('Welcome to my site :D');
});

app.post('/new', (req, res) => {
	console.log(req.body.name);
	console.log(req.body.node);
	res.send('POSTed OK!');
});

app.listen(3000, () => {
	console.log('Server has started on port 3000');
});