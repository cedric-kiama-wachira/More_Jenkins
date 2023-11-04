
sudo adduser buildagent
sudo usermod -aG sudo buildagent
buildagent ALL=(ALL) NOPASSWD: ALL

sudo usermod -aG docker $USER

# Lab Credentials

Username: admin
Password: Adm!n321

# Container Build Agents

pipeline {
    agent {
        docker { image 'golang:latest' }
    }

    stages{
        stage('Development'){
            steps {
                git 'https://github.com/AdminTurnedDevOps/go-webapp-sample.git'
                sh 'go version'
            }
        }
    }
}
