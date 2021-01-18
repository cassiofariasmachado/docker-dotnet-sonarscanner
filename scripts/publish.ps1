$DOTNET_SDK_VERSION = $args[0]
$DOCKER_TAG = "cassiofariasmachado/dotnet-sonarscanner:$DOTNET_SDK_VERSION"

Write-Output "Stage 1: Build container"
docker build -t $DOCKER_TAG --build-arg DOTNET_SDK_VERSION=$DOTNET_SDK_VERSION .

Write-Output "Stage 2: Push docker image"
docker push $DOCKER_TAG
