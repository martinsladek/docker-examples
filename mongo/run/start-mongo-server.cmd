
docker network create mars_bridge_mongo

docker run -d --rm --network mars_bridge_mongo --name some-mongo ^
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin ^
    -e MONGO_INITDB_ROOT_PASSWORD=secret ^
    mongo