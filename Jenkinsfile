pipeline {
  agent any
  stages {
    stage('creating a release branch') {
      steps {
        sh '''if [ ! `git branch --list release` ]
then git branch release
fi

git checkout release
echo "this is a new file content" > new.txt
git add *
git commit -m "test commit"
git push origin release'''
      }
    }

    stage('Done') {
      steps {
        echo 'Done building'
      }
    }

  }
}