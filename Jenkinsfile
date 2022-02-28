pipeline {
  agent any
  stages {
    stage('Stage 1') {
      parallel {
        stage('Stage 1') {
          steps {
            sh 'npm install .'
          }
        }

        stage('Stage 1 parallel') {
          steps {
            sh 'docker build . -t mynewimage'
            sh 'docker run mynewimage -p 3000:3000 '
          }
        }

      }
    }

    stage('Stage 2') {
      steps {
        echo 'this is step 2'
      }
    }

  }
}