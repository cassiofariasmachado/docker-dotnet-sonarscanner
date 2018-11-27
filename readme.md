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

## Related documentation

- [Dotnet SonarScanner documentation](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner+for+MSBuild)
