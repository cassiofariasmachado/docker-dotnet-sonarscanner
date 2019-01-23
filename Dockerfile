ARG DOTNET_SDK_VERSION
FROM mcr.microsoft.com/dotnet/core/sdk:${DOTNET_SDK_VERSION}

LABEL MAINTAINER="cassiofariasmachado@yahoo.com"

RUN apt-get update \
        && apt-get install -y --no-install-recommends default-jdk \
        && rm -rf /var/lib/apt/lists/*

RUN dotnet tool install --global dotnet-sonarscanner

ENV PATH="${PATH}:/root/.dotnet/tools"

CMD ["bash"]