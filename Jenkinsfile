pipeline {
    agent any
 
    stages {
        stage('NPM Build') {
          steps {
            sh "docker-compose -build -d up"
          }
        }
    }
}