@rem cd docker
call .\download-jar.cmd
docker build -f docker/Dockerfile -t mars-redis-java-client .