pipeline {
      
agent any
      
environment {
DOCKERHUB_CREDENTIALS='docker_credentials_c2'
IMAGE_NAME='rohi367/new_docker_image'
}

stages{

      stage('Build Java  application'){
         steps{
            bat 'javac Helloworld.java'
}
}
         stage('Run Java  application'){
            steps{
               bat 'java Helloworld.java'
}
}
 stage('Build Docker Image'){
         steps{
            bat 'docker build -t %IMAGE_NAME%:latest .'
}
}
 stage('login to DpockerHub'){
     steps{
       withCredentials(usernamePassword(
       credentialsId:'docker_credentials_c2'
       usernameVariable: 'USER',
       passwordVariable: 'PASS')]) {
            bat 'echo %PASS%| docker login -u %USER% --password-stdin'
}
}
}

stage('Push Docker Image'){
  steps {
  bat 'docker push %IMAGE_NAME%:latest'
}
}
}
}
