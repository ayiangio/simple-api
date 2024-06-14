# Simpel API
This API just For Research & Development, This Service Not Use The Connection Third-party like a database, messaage broker or etc. this service online save the data on memory, so the data will be lost after you restart or you terminate.

## Running Service
If You Want Running this service i suggest use the docker
* Starting Your Docker 
* docker build -t simple-api .
* docker run -p 8080:8080 simple-api

## Endpoint
This service has 3 endpoints :  Create, Get & Delete,
You can access the endpoint use terminal or CMD on your local machine

### Endpoint Insert Data
`curl --header "Content-Type: application/json" --request POST --data '{"id":1000,"name":"sweet chocolate Ilise", "stock":81,"price":23488.67,"rating":4.0}' http://localhost:8080/items`

### Enpoint Get All Data
`curl --header "Content-Type: application/json" --request GET http://localhost:8080/items`

### Endpoint Delete 
`curl --header "Content-Type: application/json" --request DELETE http://localhost:8080/items/:id"`


## Additional
This Service Available On Dockerhub You can Pull [Here](https://hub.docker.com/r/ayiangio/simpel-api) and running the image on your local  
