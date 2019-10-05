pipeline {
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
          img = docker.build("gradle-simple")
        }
    }
}
