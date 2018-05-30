pipeline {
  agent {
    node {
      label 'terraform-node'
    }
  }
  stages {
    stage('terraform') {
      steps {
        sh 'cd /home/johnsonawssa/terraform_scripts; terraform init'
        echo 'testing output'
      }
    }
  }
}
