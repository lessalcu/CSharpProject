# CSharpProject

**CSharpProject** is a simple web application developed in C# using ASP.NET Core. This project runs inside a Docker container and responds with a **"Hello world from C#, Lesly Salas SI08!"** message on port 80.

## Project Structure

The basic structure of the project is as follows:

```
CSharpProject/
│
├── Dockerfile # Dockerfile to build the container image
├── app.cs # Application source code
└── README.md # Project documentation
```

### Requirements

To run this project locally or inside a Docker container, you need to have the following:

1. **Docker** (to run the project inside a container)
2. **Git** (to clone the repository)

### Local Installation and Execution

#### 1. Clone the Repository

Clone the repository using Git:

```bash
git clone https://github.com/lessalcu/CSharpProject.git
cd CSharpProject
```

#### 2. Build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t lssalas/csharp-project .
```

#### 3. Run the Application

Once the image has been built, you can run the container with the following command:

```bash
docker run --name csharp-project -p 80:8080 lssalas/csharp-project
```

The application will be available at `http://localhost/`.

### Docker Hub Launch Manual

#### 1. Download the Image

To download the image from Docker Hub, run:

```bash
docker pull lssalas/csharp-project:latest
```

#### 2. Run the Container

Once the image has been downloaded, run the container with:

```bash
docker run --name csharp-project -p 80:8080 lssalas/csharp-project
```

This will start the container and you will be able to access the application at `http://localhost/`.

## Notes

- Make sure Docker is running.
- If you have problems accessing `http://localhost/`, check that port `80` is not in use by another process or that there are no firewall issues.

## Credits

- Project developed by **Lesly Salas** (https://github.com/lessalcu).