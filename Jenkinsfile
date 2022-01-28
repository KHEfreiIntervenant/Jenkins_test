pipeline {
    agent any
    stages{
        stage('Test') {
            steps{
                sh 'docker-compose -f docker-compose.test.yml up --build'
            }
        }
        stage('Stop Tests') {
            steps {
                sh 'docker-compose down'
            }
        }
        stage('Deploy') { 
            steps{
                sh 'docker-compose -f docker-compose.yml up --build -d'
            }
            
        }
    }
}