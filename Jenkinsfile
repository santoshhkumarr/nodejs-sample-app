pipeline {

 agent {
        docker {
            image 'node:10.17.0-alpine' 
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
	dockerRegistry = "santoshhkumarr/myrepo ."
  	dockerRegistryCredential = 'santoshhkumarr'
     	dockerImage = ''
    }
    stages {
        stage('Configure') {

            steps {
                sh 'npm install'

            }
}
stage('Building image') {
       steps{
         script {
           dockerImage = docker.build dockerRegistry + ":$BUILD_NUMBER"
         }
       }
     }
     stage('Upload Image') {
       steps{
         script {
           docker.withRegistry( '', dockerRegistryCredential ) {
             dockerImage.push()
           }
         }
       }
     }
     stage('Clean-stale- image') {
       steps{
         sh "docker rmi $dockerRegistry:$BUILD_NUMBER"
       }
     }
}
}        
