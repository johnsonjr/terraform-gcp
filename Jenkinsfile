pipeline {
  agent any
  stages {
    stage('terraform') {
      steps {
        sh 'terrafrom init'
        echo 'testing output'
      }
    }
  }
}