pipeline {
    agent any

    stages {
        stage('NPM Build') {
          steps {
            sh "echo 'we are in'"
          }
        }
        stage('push again'){
            steps{
                
                checkout master
//                 withCredentials([usernamePassword(credentialsId: 'github-pushes')]) {
//                         sh "git branch release"
//                         sh "git push https://github.com/KHEfreiIntervenant/Jenkins_test release"
//                         sh('git push https://github.com/KHEfreiIntervenant/Jenkins_test')
                    }
            }
        }
    } 
}
