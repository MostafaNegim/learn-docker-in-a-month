# cd ./ch10/exercises
# run the random number app from chapter 8:
docker-compose -f ./numbers/docker-compose.yml up -d
# run the to-do list app from chapter 6:
docker-compose -f ./todo-list/docker-compose.yml up -d
# and try another copy of the to-do list:
docker-compose -f ./todo-list/docker-compose.yml up -d


# remove any existing containers
docker container rm -f $(docker container ls -aq)
# run the app in dev configuration:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/docker-compose-dev.yml -p numbers-dev up -d
# and the test setup:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/docker-compose-test.yml -p numbers-test up -d
# and UAT:
docker-compose -f ./numbers/docker-compose.yml -f ./numbers/docker-compose-uat.yml -p numbers-uat up -d