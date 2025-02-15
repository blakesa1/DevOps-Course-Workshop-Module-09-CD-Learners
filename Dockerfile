FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY . /app
WORKDIR /app
RUN dotnet build

WORKDIR /app/DotnetTemplate.Web
RUN npm install
RUN npm run build

RUN dotnet test
