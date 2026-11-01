
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY SkoolComm.Web/SkoolComm.Web.csproj SkoolComm.Web/
COPY SkoolComm.Application/SkoolComm.Application.csproj SkoolComm.Application/
COPY SkoolComm.Infrastructure/SkoolComm.Infrastructure.csproj SkoolComm.Infrastructure/
COPY SkoolComm.Domain/SkoolComm.Domain.csproj SkoolComm.Domain/

RUN dotnet restore SkoolComm.Web/SkoolComm.Web.csproj

COPY SkoolComm.Web/ SkoolComm.Web/
COPY SkoolComm.Application/ SkoolComm.Application/
COPY SkoolComm.Infrastructure/ SkoolComm.Infrastructure/
COPY SkoolComm.Domain/ SkoolComm.Domain/

WORKDIR /src/SkoolComm.Web
RUN dotnet publish SkoolComm.Web.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app

COPY --from=build /app/publish .
ENV ASPNETCORE_HTTP_PORTS=8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "SkoolComm.Web.dll"]
