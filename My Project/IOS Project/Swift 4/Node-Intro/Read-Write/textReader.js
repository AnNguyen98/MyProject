const fs = require('fs');
const zlib = require('zlib');
const gzip = zlib.createGzip();

const fileName = 'loremipsum.txt';

// Synchronous version
// const text = fs.readFileSync(fileName, 'utf8')
// console.log(text);

// Async version
// fs.readFile(fileName, 'utf8', (err, data) => {
// 	if (err) {
// 		throw err;
// 	}
// 	console.log(data);
// });

// console.log('This will get logged to console first');

// Readable stream version
// const readStream = fs.createReadStream(fileName, 'utf8');
// const writeStream = fs.createWriteStream('output.txt', 'utf8');
// let myData = '';
// let totalChunks = 0;

// readStream.on('data', (chunk) => {
// 	myData += chunk;
// 	totalChunks += 1;
// 	console.log(totalChunks);
// 	writeStream.write(`Chunk#${totalChunks}: ${chunk}`);
// });

// readStream.on('end', () => {
// 	console.log('Finished reading data');
// });

// readStream.on('error', (err) => {
// 	throw err;
// });


const readStream = fs.createReadStream(fileName, 'utf8');
const writeStream = fs.createWriteStream('output.txt.gz', 'utf8');

readStream.pipe(gzip).pipe(writeStream)




