




docker --version



docker pull jenkins/jenkins:lts



docker run -d -p 9090:8080 -p 50000:50000 jenkins/jenkins:lts



docker ps



docker exec -it <nome_do_container> cat /var/jenkins_home/secrets/initialAdminPassword



http://localhost:9090
