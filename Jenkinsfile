pipeline {
  agent any
  stages {
    stage('Print hello') {
      parallel {
        stage('Print hello') {
          steps {
            echo 'Hello'
          }
        } 

        stage('Print in parallel') {
          steps {
            echo 'Hello 2'
          }
        }

      }
    }

    stage('end') {
      steps {
        sh 'echo \'done\''
      }
    }

  }
}