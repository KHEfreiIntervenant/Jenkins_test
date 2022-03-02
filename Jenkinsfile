pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t "myNodeImage"'
      }
    }

    stage('Run docker') {
      steps {
        sh 'docker run -d myNodeImage -p 3000:3000'
      }
    }

    stage('Done') {
      steps {
        echo 'Done building'
      }
    }

  }
}