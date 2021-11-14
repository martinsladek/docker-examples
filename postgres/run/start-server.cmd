:: Start Postgres
docker run --rm --name some-postgres -e POSTGRES_PASSWORD=asdf -d postgres

:: Create bridge
docker network create -d bridge mars_bridge_postgres

:: Connect already existing container to network
docker network connect mars_bridge_postgres some-postgres

