pipeline {
	agent any
// 	{
// //     docker {
// //       image 'docker:latest'
// //     }
//   }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('jenkins')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t ajithselvan/newsapp:${BUILD_NUMBER} .'
	sh 'echo ${DOCKERHUB_CREDENTIALS}'
	sh 'echo ${BUILD_NUMBER}'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push ajithselvan/newsapp${BUILD_NUMBER}'
	sh 'docker logout'
      }
    }
  }
}
