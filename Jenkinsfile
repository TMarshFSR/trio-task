pipeline {
  agent any
  stages{
    stage ('Install Docker') {
      steps{
        sh "bash install-docker.sh"
                     }
                 }
     stage ('Run docker-compose.yaml') {
        steps {
          sh "docker compose up -d"
        }
     }
  }
}
