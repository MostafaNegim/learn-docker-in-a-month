# start the API container
docker container run -d -p 8080:80 diamol/ch08-numbers-api

# repeat this three times - it returns a random number
curl http://localhost:8080/rng
curl http://localhost:8080/rng
curl http://localhost:8080/rng
# from the fourth call onwards, the API always fails
curl http://localhost:8080/rng
# check the container status
docker container ls


docker container rm -f $(docker container ls -aq)
docker container run -d -p 8082:80 diamol/ch08-numbers-web
docker container ls