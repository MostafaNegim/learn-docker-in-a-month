# cd ch14/exercises
# join the core Compose file with the production override:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/prod.yml config > stack.yml

# deploy the joined Compose file:
docker stack deploy -c stack.yml numbers
# show the services in the stack:
docker stack services numbers


# join the healthcheck and v2 overrides to the previous files:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/prod.yml -f \
    ./numbers/prod-healthcheck.yml -f ./numbers/v2.yml --log-level \
    ERROR config > stack.yml
# update the stack:
docker stack deploy -c stack.yml numbers
# check the stack's replicas:
docker stack ps numbers


docker-compose -f ./numbers/docker-compose.yml -f ./numbers/prod.yml \
    -f ./numbers/prod-healthcheck.yml -f ./numbers/prod-update-config.yml \
    -f ./numbers/v3.yml --log-level ERROR config > stack.yml

docker stack deploy -c stack.yml numbers

docker stack ps numbers