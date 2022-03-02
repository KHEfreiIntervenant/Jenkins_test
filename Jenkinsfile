pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t "my-node-image"'
      }
    }

    stage('Run docker') {
      parallel {
        stage('Run docker') {
          steps {
            sh 'docker run -p 3000:3000 -d my-node-image'
          }
        }

        stage('creating a release branch') {
          steps {
            sh '''if [ ! `git branch --list release` ]
then git branch release
fi

git checkout release
git add *
git commit -m "test commit"
git push origin release'''
          }
        }

      }
    }

    stage('Done') {
      steps {
        echo 'Done building'
      }
    }

  }
}