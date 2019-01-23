# Docker DotNet SonarScanner

A docker image to use with dotnet sonarscanner tool.

## Usage

Simple run the following command:

```bash
docker run -it -v $(pwd):/source cassiofariasmachado/dotnet-sonarscanner:latest
dotnet sonarscanner begin /k:"project-key"
dotnet build
dotnet sonarscanner end
```

## Publish

To publish a new version:

```bash
# The <tag_version> is the version of dotnet sdk and it'll be the tag of the "dotnet-sonarscanner" image
sh scripts/publish.sh "<tag_version>"
```

## Related documentation

- [Dotnet SonarScanner documentation](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner+for+MSBuild)
