pipeline {
    agent {
        docker.image('gradle:latest').withRun("-u gradle -v .:/home/gradle/project -w /home/gradle/project gradle gradle build") {
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
