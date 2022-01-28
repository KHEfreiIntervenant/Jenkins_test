pipeline {
    agent any
 
    stages {
        stage('Testing') {
          steps {
            sh "docker-compose -f docker-compose-test.yml up --build"
          }
        }
        stage('Stopping, Tests passed') {
          steps {
            sh "docker-compose down"
          }
        }
        stage('Running') {
          steps {
            sh "docker-compose -f docker-compose.yml up --build -d"
          }
        }
    }
    // post {
    //     always {
    //         sh "docker-compose down -v"
    //     }
    // }
}