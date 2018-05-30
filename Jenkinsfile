pipeline {
  agent any
  stages {
    stage('terraform') {
      steps {
        sh 'cd /home/johnsonawssa/terraform_scripts; terrafrom init'
        echo 'testing output'
      }
    }
  }
}
