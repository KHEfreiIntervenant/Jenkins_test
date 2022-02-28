pipeline {
  agent any
  stages {
    stage('push to git') {
      steps {
        sh '''git branch release
git checkout release
git add *
git commit -m "a new branch"
git push origin release'''
      }
    }

  }
}