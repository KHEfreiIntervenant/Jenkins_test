pipeline {
  agent any
  stages {
    stage('push to git') {
      steps {
        sh '''git branch release
git checkout release
echo "this is some new content" > anewfile.txt
git add *
git commit -m "a new branch"
git push origin release'''
      }
    }

  }
}