pipeline{
    agent any
    stages { 
      stage ('Build'){
         steps{ 
           echo 'Starting to build docker image'

           script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push() 
         }
    }  
     
      stage ('Test'){
         steps{
            sh 'which python' 
      }
    }  
  }
}            
