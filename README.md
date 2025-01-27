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
## Deploy with Docker Stack

If you want to deploy your application using Docker Swarm, you can use Docker Stack. Follow the steps below to deploy your app:

1. Create a Docker Compose file (e.g., `docker-compose.yaml`) with the following content:

```yaml
version: '3'
services:
    app:
        image: myapp:latest
        ports:
            - 3000:8080
```

2. Save the file and navigate to the directory where the file is located.

3. Run the following command to deploy the stack:

```bash
docker stack deploy -c docker-compose.yaml myapp-stack
```

This will create a stack named `myapp` and deploy your application as a service.

4. To check the status of the stack, run:

```bash
docker stack ps myapp-stack
```

You should see the status of your application's service.

5. The application should now be running and accessible at http://localhost:3000.

Additional Information:
- To remove the stack, run `docker stack rm myapp-stack`.
- If you make changes to your application, you can redeploy the stack by running `docker stack deploy -c docker-compose.yml myapp-stack` again.

# Day 3


## Build and Deploy the Application


To build and deploy the application using Docker, follow these steps:


1. Open a terminal or command prompt.


2. Navigate to the directory where the `Dockerfile` is located. In this case, it is `/Users/tylervansickle/Desktop/mtech-webdev/Docker/First-Docker/`.


3. Build the Docker image by running the following command:


```bash
docker build -t myapp:latest .
```


This command will build the Docker image and tag it as `myapp:latest`.


4. Once the image is built, you can deploy the application using Docker Stack. Create a Docker Compose file named `docker-compose.yaml` with the following content:


```yaml
---
version: "3.8"
services:
 mywebsite:
   image: myapp:latest
   ports:
     - "3000:8080"
   deploy:
     replicas: 3
 mysecondsite:
   image: myapp:latest
   ports:
     - "3001:8080"
   deploy:
     replicas: 2
...
```


5. Save the `docker-compose.yaml` file in the same directory as the `Dockerfile`.


6. Deploy the stack by running the following command:


```bash
docker stack deploy -c docker-compose.yaml myapp-stack
```


This command will create a stack named `myapp-stack` and deploy your application as a service.


7. To check the status of the stack and your application's service, run:


```bash
docker stack ps myapp-stack
```


You should see the status of your application's service.


8. The application should now be running and accessible at http://localhost:3000 AND http://localhost:3001.


Additional Information:
- To remove the stack, run `docker stack rm myapp-stack`.
   If you only stop one of the containers, it will automatically re-deploy so you must remove the stack completely.
- If you make changes to your application, you can redeploy the stack by running `docker stack deploy -c docker-compose.yaml myapp-stack` again.


Enjoy using your app with Docker Stack!




