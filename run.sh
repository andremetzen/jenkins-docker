docker run -d -v /lib/x86_64-linux-gnu/libltdl.so.7:/lib/x86_65-linux-gnu/libltdl.so.7 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/usr/bin/docker \
    --name=jenkins-docker \
    -p 8080:8080 jairoandre/jenkins
