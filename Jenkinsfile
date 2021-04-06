pipeline {
  agent any
  environment{
    MYSQL_ROOT_PASSWORD = credentials("MYSQL_ROOT_PASSWORD")
    DOCKER_PASSWORD = credentials("DOCKER_PASSWORD")
    JENKINS_KEYPAIR = credentials("JENKINS_KEYPAIR")
  }
  stages{
    stage ("Install Dependencies") {
      steps{
        sh "bash install-docker.sh"
                     }
                 }
    stage ("Build") {
      steps{
        sh "docker-compose build --parallel"
                     }
                 }
     stage ("Push") {
        steps {
          sh "docker-compose push"
        }
     }
     stage ("Deploy") {
        steps {
          sh "ssh -T -i ~/.ssh/id_rsa ubuntu@34.244.19.16 'cd trio-task; docker-compose up -d'"
        }
     }
  }
}
