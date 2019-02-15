node (label: 'slave') {
 def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("rmm20/myfirstpython")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("1.${env.BUILD_NUMBER}")
        }
    }
  
   stage('Run image') {
        sh 'docker run -d rmm20/myfirstpython:1.${env.BUILD_NUMBER} -p 8082:80'
   
   }

}
