pipeline{
    agent any
    tools { go 'Go1.21.3' }

    environment{
        GO111MODULE='on'
    }

    stages{
        stage('Unit  the code') {
            steps {
                git 'https://github.com/AdminTurnedDevOps/go-webapp-sample.git'
                sh 'go test ./...'
            }
        }
        stage('Buiding the Image'){
            steps { 
                 git 'https://github.com/AdminTurnedDevOps/go-webapp-sample.git'
                 sh 'go build .'
            }
       }
       stage('Run'){
            steps { 
                 sh 'cd  /var/lib/jenkins/workspace/go-full-pipeline && go-webbapp-sample &'
            }
       }
   }
}