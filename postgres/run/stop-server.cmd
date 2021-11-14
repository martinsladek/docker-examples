:: Disconnect container from network
docker network disconnect mars_bridge_postgres some-postgres

:: Stop Postgres
docker container stop some-postgres

:: Remove Docker network
docker network rm mars_bridge_postgres

