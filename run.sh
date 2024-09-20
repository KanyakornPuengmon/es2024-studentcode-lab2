#!/bin/bash

# Start MongoDB container
docker run -d --name mongodbkanyakorn -v ~/lab2/mongodb/init.js:/docker-entrypoint-initdb.d/init.js mongo

# Start Express container
docker build -t expresskanyakorn ~/lab2/express
docker run -d --name expresskanyakorn --link mongodbkanyakorn -p 3000:3000 expresskanyakorn

# Start Nginx container
docker run -d --name nginxkanyakorn -p 8080:80 -v ~/lab2/nginx/nginx.conf:/etc/nginx/nginx.conf -v ~/lab2/nginx/index.html:/usr/share/nginx/html/index.html nginx
