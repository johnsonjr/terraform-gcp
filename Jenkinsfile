pipeline {
  agent any
  stages {
    stage('terraform') {
      steps {
        sh 'cd /home/johnsonawssa/terraform_scripts; terraform init'
        echo 'testing output'
      }
    }
  }
}
