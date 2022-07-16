# create volume directory
sh ./scripts/create-volume-path.sh

# Run Docker Compose
docker-compose -f docker/docker-compose-arm64.yml up -d

# docker stack deploy --compose-file ./docker/docker-compose-arm64.yml gitlab
