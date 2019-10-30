ARG DOTNET_SDK_VERSION
FROM mcr.microsoft.com/dotnet/core/sdk:${DOTNET_SDK_VERSION}

LABEL MAINTAINER="cassiofariasmachado@yahoo.com"

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg \
        && mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ \
        && wget -q https://packages.microsoft.com/config/debian/10/prod.list \
        && mv prod.list /etc/apt/sources.list.d/microsoft-prod.list

RUN apt-get update \
        && apt-get install -y --no-install-recommends default-jdk aspnetcore-runtime-2.1 \
        && rm -rf /var/lib/apt/lists/*

RUN dotnet tool install --global dotnet-sonarscanner

ENV PATH="${PATH}:/root/.dotnet/tools"

CMD ["bash"]