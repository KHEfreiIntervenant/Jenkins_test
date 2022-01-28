pipeline {
    agent any
 
    stages {
        stage('Testing') {
          steps {
            sh "docker-compose -f docker-compose-test.yml up"
          }
        }
        stage('Stopping, Tests passed') {
          steps {
            sh "docker-compose down"
          }
        }
    }
    // post {
    //     always {
    //         sh "docker-compose down -v"
    //     }
    // }
}