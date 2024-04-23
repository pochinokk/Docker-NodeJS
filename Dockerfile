FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY index.html .

EXPOSE 8080

CMD [ "node", "-e", "require('http').createServer((req, res) => { res.writeHead(200, {'Content-Type': 'text/html'}); res.end(require('fs').readFileSync('index.html', 'utf8')); }).listen(8080);" ]
