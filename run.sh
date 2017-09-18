docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v data:/var/jenkins/home \
    --name=jenkins-docker \
    -p 8080:8080 jairoandre/jenkins-docker
