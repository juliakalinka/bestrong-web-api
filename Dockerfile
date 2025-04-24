FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["ASPNETCore-WebAPI-Sample/SampleWebApiAspNetCore/SampleWebApiAspNetCore.csproj", "SampleWebApiAspNetCore/"]
RUN dotnet restore "SampleWebApiAspNetCore/SampleWebApiAspNetCore.csproj"
COPY ["ASPNETCore-WebAPI-Sample/", "."]
WORKDIR "/src/SampleWebApiAspNetCore"
RUN dotnet build "SampleWebApiAspNetCore.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "SampleWebApiAspNetCore.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENV ASPNETCORE_ENVIRONMENT=Production
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["dotnet", "SampleWebApiAspNetCore.dll"]