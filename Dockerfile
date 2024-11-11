#Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the source code and build the application
COPY . ./
RUN dotnet publish -c Launch -o out

#Execution stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# Set the working directory
WORKDIR /app

# Copy the application built from the previous stage
COPY --from=build /app/out .

# Expose the port on which the application listens
EXPOSE 80

# Command to run the application
ENTRYPOINT ["dotnet", "CSharpProject.dll"]