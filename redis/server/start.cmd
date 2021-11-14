:: Create bridge
docker network create -d bridge mars_bridge

:: Run Redis
docker run --name some-redis --rm -d redis

:: Connect Redis to network
docker network connect mars_bridge some-redis

