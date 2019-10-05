pipeline {
  agent any
  environment {
    registry = "andycarroll00/gradle-simple"
    registryCredential = 'DockerHub'
  }
  stages {
    stage('Build') {
      agent {
        docker {
          image 'gradle:latest'
          args "-u gradle -v '/var/jenkins_home/workspace/Pipeline1_master:/home/gradle/project -w /home/gradle/project"
        }
      }
      steps {
        sh 'gradle build'
      }
    }
    stage('BuildContainer') {
      steps {
        sh 'docker build -t gradle-simple:latest .'
//        script {
//          docker.build registry + ":$BUILD_NUMBER"
//        }
      }
    }
  }
}
