FROM microsoft/dotnet:2.1-sdk

LABEL MAINTAINER="cassiofariasmachado@yahoo.com"

RUN dotnet tool install --global dotnet-sonarscanner

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        openjdk-8-jdk

CMD ["bash"]