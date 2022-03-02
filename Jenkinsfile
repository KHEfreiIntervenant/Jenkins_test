pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t "my-node-image"'
      }
    }

    stage('Run docker') {
      steps {
        sh 'docker run -p 3000:3000 -d my-node-image'
      }
    }

    stage('Done') {
      steps {
        echo 'Done building'
      }
    }

  }
}