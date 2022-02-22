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
                
//                 git(
//                    url: 'git@github.com:KHEfreiIntervenant/Jenkins_test.git',
//                    credentialsId: 'github-pushes',
//                    branch: "main"
//                 )
                
//                 withCredentials([gitUsernamePassword(credentialsId: 'github-credentials',
//                  gitToolName: 'git-tool')]) {
//                   sh 'if [ ! `git branch --list release` ]; then git branch release; fi'
//                     sh 'git checkout release'
//                     sh 'git push origin release'
//                 }
                withCredentials([string(credentialsId: 'github-pushes',
                 gitToolName: 'git-tool')]) {
                  sh 'if [ ! `git branch --list release` ]; then git branch release; fi'
                    sh 'git checkout release'
                    sh 'git push origin release'
                }
//                 withCredentials([usernamePassword(credentialsId: 'github-pushes')]) {
//                         sh "git branch release"
//                         sh "git push https://github.com/KHEfreiIntervenant/Jenkins_test release"
//                         sh('git push https://github.com/KHEfreiIntervenant/Jenkins_test')
//                     }
            }
        }
    } 
}
