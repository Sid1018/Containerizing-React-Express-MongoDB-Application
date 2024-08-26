# Containerizing-React-Express-MongoDB-Application


## **Project Overview**

This project demonstrates how to containerize a full-stack web application using Docker. The application consists of a React frontend, an Express backend, and a MongoDB database. The containerization process ensures that the application runs consistently across different environments by packaging each component into separate Docker containers. This setup simplifies deployment and management.

The project was developed and tested using Play with Docker (PWD), a free, cloud-based Docker environment.

## **Project Structure**

- **Frontend**: Contains the React application code.
- **Backend**: Contains the Express application code.
- **Database**: Uses MongoDB for data storage.

## **Prerequisites**

- Docker installed (or use Play with Docker - [PWD](https://labs.play-with-docker.com/))
- Docker Hub account (if you want to push images to Docker Hub)

## **Getting Started**

### **1. Setting Up the PWD Environment**

1. Navigate to [Play with Docker](https://labs.play-with-docker.com/).
2. Start a new session to access the cloud-based Docker environment.

### **2. Clone the Project Repositories**

Clone the provided GitHub repositories for the frontend and backend applications:

```bash
git clone https://github.com/fliprlab/devops-task
```

### **3. Create Dockerfiles**

Create Dockerfiles for both the frontend and backend components:

- **Frontend Dockerfile**: In the `frontend` directory, create a Dockerfile with the following content:

   
- **Backend Dockerfile**: In the `backend` directory, create a Dockerfile with the following content:

   

### **4. Create Docker Compose File**

In the root directory of your project, create a `docker-compose.yml` file with the following content:



### **5. Write the Automation Shell Script**

Create a `deploy.sh` script in the root directory to automate the build and deployment process:



Make the script executable:

```bash
chmod +x deploy.sh
```

### **6. Running the Application**

Run the `deploy.sh` script to build, tag, push images, and start the application:

```bash
./deploy.sh
```

### **7. Testing the Application**

- Access the frontend by navigating to `http://<PWD_IP>:80` in your browser.
- The backend API will be accessible at `http://<PWD_IP>:5000`.

### **8. Documentation and Video Demonstration**

A detailed document explaining the setup and a video demonstration are included in the project repository.

## **Conclusion**

This project leverages Docker and Play with Docker (PWD) to containerize and deploy a full-stack application efficiently. The use of Docker Compose simplifies the orchestration of multiple services, ensuring consistent and scalable deployments.

