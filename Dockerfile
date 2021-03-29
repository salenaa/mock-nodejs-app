#Specify base image
FROM node:alpine

#Install Dependencies
RUN mkdir -p /usr/src/app/simplewebapp-nodejs

#Set Working Directory
WORKDIR /usr/src/app/simplewebapp-nodejs

#File
COPY *.json /usr/src/app/simplewebapp-nodejs

RUN npm install

COPY *.js /usr/src/app/simplewebapp-nodejs

#Default command
CMD ["npm","start"]