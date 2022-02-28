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
                withCredentials([sshUserPrivateKey(credentialsId: 'github-pushes',keyFileVariable: 'SSH_KEY')]) {
                  sh '''
                  git config user.name KHEfreiIntervenant
                  git config user.email khodor.hammoud@intervenantes.efrei.net
                  git remote add origin git@github.com:KHEfreiIntervenant/Jenkins_test.git
                  GIT_SSH_COMMAND="ssh -i $SSH_KEY"
                  if [ ! `git branch --list release` ]
                  then git branch release
                  fi
                  git checkout release
                  git commit --allow-empty -m "test withCredentials"
                  git push origin release
                  sh
                  '''
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
