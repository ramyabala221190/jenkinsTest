docker login -u ${DOCKER_HUB_CRED_USR} -p ${DOCKER_HUB_CRED_PSW} docker.io
docker image prune --force