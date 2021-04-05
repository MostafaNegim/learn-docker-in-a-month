# cd ./ch10/exercises
# run the random number app from chapter 8:
docker-compose -f ./numbers/docker-compose.yml up -d
# run the to-do list app from chapter 6:
docker-compose -f ./todo-list/docker-compose.yml up -d
# and try another copy of the to-do list:
docker-compose -f ./todo-list/docker-compose.yml up -d