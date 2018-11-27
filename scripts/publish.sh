DOCKER_TAG='cassiofariasmachado/dotnet-sonarscanner:latest'

echo 'Stage 1: Build container'
docker build -t $DOCKER_TAG .

echo 'Stage 2: Push docker image'
docker push $DOCKER_TAG
