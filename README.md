# Vue-Todolist
Todolist list SPA created with Vue and setup with Docker

This project was my first time using Vue and Docker I learned a lot from basic Vue structure, two way data binding, form submissions. 

## Building
### From Source Code
First ensure you have nodejs and docker installed with the following commands
```
node -v
docker version
```
Once you have the source code downloaded run the following commands from that directory
```
npm install                    // Will install the required dependencies
npm run build                  // Will bundle the source code into chunks ready for deployment
docker build . -t="todolist"   // Builds a docker image with the tag set to todolist
docker run todolist            // Create and run a docker container of the todolist image
```
### From Docker
TODO haven't pushed the docker image to the cloud yet
