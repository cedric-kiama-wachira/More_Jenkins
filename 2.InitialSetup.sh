#!/bin/bash

# This sample application uses Echo as web application framework and Gorm as the backend

git clone https://github.com/AdminTurnedDevOps/go-webapp-sample.git
cd go-webapp-sample/
rm -Rf .git
go run main.go

http://localhost:8000/#/login

# On a new terminal open the console and go inside the controller directory
go test -v .

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key 
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt install fontconfig openjdk-17-jre
sudo apt-get install jenkins

sudo systemctl enable jenkins
sudo systemctl start jenkins

http://localhost:8080/

Unlock Jenkins
To ensure Jenkins is securely set up by the administrator, a password has been written to the log (not sure where to find it?) and this file on the server:

/var/lib/jenkins/secrets/initialAdminPassword

Please copy the password from either location and paste it below.

Administrator password
timeline