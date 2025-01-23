# MyApp Docker Setup

This project uses Docker to build and run the application. Follow the instructions below to get started.

## Build the Docker image

First, build the Docker image with the following command:

```bash
docker build -t myapp:latest .
This will create a Docker image tagged as myapp:latest.

Run the Docker container
After building the image, run the following command to start the container:

docker run -d --rm --name bubbles -p 8080:8080 myapp:latest

-d runs the container in detached mode.
--rm removes the container once it's stopped.
--name bubbles assigns the name bubbles to the running container.
-p 8080:8080 maps port 8080 on your host to port 8080 in the container.
The application should now be running and accessible at http://localhost:8080.

Additional Information
You can stop the container using the command docker stop bubbles.
If you need to rebuild the image, run docker build -t myapp:latest . again.
Enjoy using the app at http://localhost:8080!
