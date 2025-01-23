const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Hello People');
});

server.listen(8080, () => {
    console.log('Server is running on port 8080');
});