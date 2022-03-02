pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -p 3000:3000 -t "myNodeImage"'
      }
    }

    stage('Run docker') {
      steps {
        sh 'docker run -d myNodeImage'
      }
    }

    stage('Done') {
      steps {
        echo 'Done building'
      }
    }

  }
}