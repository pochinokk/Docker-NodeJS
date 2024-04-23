FFROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY index.html .
EXPOSE 8080
CMD [ "node", "index.html" ]
