## Pipe App Deployment Pipeline

# This project demonstrates a CI/CD pipeline where a Dockerized application is automatically built, pushed to Docker Hub, and deployed to a Kubernetes cluster using Helm and Argo CD. The pipeline uses GitHub Actions to automate the build and deployment process.



🛠️ Technologies Used

    GitHub Actions for CI/CD

    Docker for containerizing the application

    Docker Hub as the container registry

    Helm for managing Kubernetes deployments

    Argo CD for GitOps-based continuous delivery

    Kubernetes (EKS) for application deployment

🧩 How the Pipeline Works

    App Repo (Source Code):

        Developers push code to the application repository.

        GitHub Actions triggers a build and creates a Docker image tagged with the version.

        The image is pushed to Docker Hub.

    GitOps Repo :

        A separate GitOps repository contains Helm files.

        GitHub Actions updates the Helm values file in this repo with the newly pushed Docker image tag.

    Argo CD:

        Argo CD watches the GitOps repository for changes.

        When a new Docker image tag is pushed to the GitOps repo, Argo CD syncs the changes and deploys the updated app to the Kubernetes cluster.
