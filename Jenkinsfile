pipeline {
    agent {
        docker {
            image 'node:10.17.0-alpine' 
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {

            steps {
                sh 'npm install'

            }
}

 stage('Test') {

            steps {
                sh 'npm test'

            }
}
 stage('Start') {

            steps {
                sh 'npm start'

            }
}


}
}        
