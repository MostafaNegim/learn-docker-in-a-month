# cd ch14/exercises
# join the core Compose file with the production override:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/prod.yml config > stack.yml

# deploy the joined Compose file:
docker stack deploy -c stack.yml numbers
# show the services in the stack:
docker stack services numbers