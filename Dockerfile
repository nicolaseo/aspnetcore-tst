FROM mcr.microsoft.com/dotnet/core/sdk:3.0
ADD ./bin/Debug/netcoreapp3.0/publish/ /app
ENV ASPNETCORE_URLS=http://*:${PORT}
WORKDIR /app
ENTRYPOINT ["dotnet", "EverisAspNetCore3.dll"]