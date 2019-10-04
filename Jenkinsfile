pipeline {
    agent {
        docker {
          image 'gradle:latest'
          args "-u gradle -v '/var/jenkins_home/workspace/Pipeline1_master:/home/gradle/project -w /home/gradle/project gradle gradle build"
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'gradle --version'
            }
        }
    }
}
