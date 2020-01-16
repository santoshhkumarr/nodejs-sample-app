
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
    
}
}        
