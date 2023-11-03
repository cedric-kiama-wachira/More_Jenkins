#!/bin/bash

su - jenkins 
systemctl status docker.service
sudo usermod -aG docker $USER

pipeline{
    agent any
    tools { go 'Go1.21.3' }

    environment{
        GO111MODULE='on'
    }

    stages{
        stage('Test'){
            steps {
                git 'https://github.com/AdminTurnedDevOps/go-webapp-sample.git'
            }
        }
           stage('Buiding Our Image'){
            steps {
                script { 
                    app = docker.build("jenkins/go-webapp-sample") 
                    
                }
                
            }
        }
   }
}