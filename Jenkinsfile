pipeline {
    agent {
        docker {
          image 'gradle:latest'
          args "-u gradle -v '/var/jenkins_home/workspace/Pipeline1_master:/home/gradle/project"
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle -w /home/gradle/project build'
            }
        }
    }
}
