ARG DOTNET_SDK_VERSION
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_SDK_VERSION}

LABEL MAINTAINER="cassiofariasmachado@yahoo.com"

RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
        && dpkg -i packages-microsoft-prod.deb

RUN apt-get update \
        && apt-get install -y --no-install-recommends default-jdk aspnetcore-runtime-2.1 aspnetcore-runtime-3.1 \
        && rm -rf /var/lib/apt/lists/*

RUN dotnet tool install --global dotnet-sonarscanner

ENV PATH="${PATH}:/root/.dotnet/tools"

CMD ["bash"]