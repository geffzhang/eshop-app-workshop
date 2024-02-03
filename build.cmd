@ECHO OFF

:: Daily builds
::dotnet workload update --skip-sign-check --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet8/nuget/v3/index.json
::dotnet workload install aspire --skip-sign-check --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet8/nuget/v3/index.json

:: Release candidate builds
dotnet workload update --skip-sign-check --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet-tools/nuget/v3/index.json
dotnet workload install aspire --skip-sign-check --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet-tools/nuget/v3/index.json

dotnet build .\build\Build.proj