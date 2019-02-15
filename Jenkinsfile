pipeline {
    agent {label 'slave'}
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("python-image:${env.BUILD_ID}")
                    customImage.push()
                }
            }
        }
    }
}
