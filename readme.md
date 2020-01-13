# Docker DotNet SonarScanner [![](https://images.microbadger.com/badges/version/cassiofariasmachado/dotnet-sonarscanner:latest.svg)](dotnet-sonarscanner:latest) [![](https://images.microbadger.com/badges/version/cassiofariasmachado/dotnet-sonarscanner:3.1.svg)](dotnet-sonarscanner:3.1)

Docker image to help with Sonar analysis of .Net Core codebases. This image uses the [dotnet-sonarscanner tool](https://www.nuget.org/packages/dotnet-sonarscanner/) for .Net Core.

## Usage

You can use this image in the following way:

```bash
docker run -it -v $(pwd):/source cassiofariasmachado/dotnet-sonarscanner:latest
dotnet sonarscanner begin /k:"project-key"
dotnet build
dotnet sonarscanner end
```

## Versions

The versions of this repository follow the same pattern of the images from Microsoft of .NET Core SDK.

## Related documentation

- [Dotnet SonarScanner documentation](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner+for+MSBuild)
