
node {

def dockerapp
 
    stage {
        stage('cloning-repo') {

            checkout scm
}
stage('Build-image') {
     
           dockerapp = docker.build("santoshhkumarr/sampleapp")"
 }
     stage('Test-Image') {
       dockerapp.inside{
echo "Test case done"
}
}

     stage('Push-image') {
       docker.withRegistry('https://registry.hub.docker.com','docker_hub')
dockerapp.push("${env.BUILD_NUMBER}")
dockerapp.push("latest")
        
       }
echo "Push Docker Build to DockerHub""


stage('Deploy to GKE') {
            
                sh "sed -i 's/sampleapp:latest/sampleapp:${env.BUILD_ID}/g' deployment.yaml"
                step([$class: 'KubernetesEngineBuilder', projectId: env.PROJECT_ID, clusterName: env.CLUSTER_NAME, location: env.LOCATION, manifestPattern: 'deployment.yaml', credentialsId: env.CREDENTIALS_ID, verifyDeployments: true])
      

    
}
}        
