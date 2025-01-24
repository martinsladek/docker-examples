docker network create jenkins-blueocean

docker run --name jenkins-docker ^
  --rm --detach ^
  --privileged --network jenkins-blueocean ^
  --network-alias docker ^
  --env DOCKER_TLS_CERTDIR=/certs ^
  --volume jenkins-docker-certs:/certs/client ^
  --volume jenkins-data:/var/jenkins_home ^
  --publish 2376:2376 ^
  docker:dind

docker build -t myjenkins-blueocean:2.479.3-1 .

docker run --name jenkins-blueocean ^
  --restart=on-failure ^
  --detach ^
  --network jenkins-blueocean ^
  --env DOCKER_HOST=tcp://docker:2376 ^
  --env DOCKER_CERT_PATH=/certs/client ^
  --env DOCKER_TLS_VERIFY=1 ^
  --volume jenkins-data:/var/jenkins_home ^
  --volume jenkins-docker-certs:/certs/client:ro ^
  --publish 8080:8080 --publish 50000:50000 ^
  myjenkins-blueocean:2.479.3-1

echo Jenkins initial password
echo.

docker exec -it jenkins-blueocean /bin/bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"

pause

rem docker exec -it jenkins-blueocean /bin/bash

rem docker logs jenkins-blueocean

start http://localhost:8080/

echo "Press any key to stop Jenkins"

pause

docker stop jenkins-blueocean
docker rm jenkins-blueocean
@rem docker rm myjenkins-blueocean
docker image rm myjenkins-blueocean:2.479.3-1

docker stop jenkins-docker
docker rm jenkins-docker

@rem docker network remove jenkins1
docker network remove jenkins-blueocean

