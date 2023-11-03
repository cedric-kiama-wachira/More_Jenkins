#!/bin/bash

You can access various features in Jenkins through a command-line tool. See the documentation for more details of this feature.
To get started, download jenkins-cli.jar, and run it as follows:

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080/ 

java -jar jenkins-cli.jar -s http://localhost:8080/  -auth timeline:timeline

java -jar jenkins-cli.jar -s http://localhost:8080/  -auth timeline:timeline -webSocket list-jobs

java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' restart

or 

<jenkins-url>/restart and click on Yes to confirm.

# List all installed plugins
java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' list-plugins

# Install a pluggin
java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' install-plugin

java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' install-plugin cloudbees-bitbucket-branch-source

java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' install-plugin cloudbees-bitbucket-branch-source

java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' install-plugin cloud-stats

# Disable a Plugin
java -jar jenkins-cli.jar -s http://localhost:8085 -auth 'admin:Adm!n321' disable-plugin github -restart -r


jenkins-plugin-cli --plugins role-strategy:689.v731678c3e0eb_

