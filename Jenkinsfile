pipeline {

 agent {
        docker {
            image 'node:10.17.0-alpine' 
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
	dockerRegistry = "santoshhkumarr/docker-nodejs"
  	dockerRegistryCredential = 'dockerhub'
     	dockerImage = ''
    }
    stages {
        stage('Build') {

            steps {
                sh 'npm install'

            }
}

 stage('Start') {

            steps {
                echo "App is up and running"

            }
}


}
}        
