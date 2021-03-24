pipeline {
  agent any
  environment{
    MY_SQL_ROOT_PASSWORD = credentials("MY_SQL_ROOT_PASSWORD")
  }
  stages{
    stage ("Install Dependencies") {
      steps{
        sh ""
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
          sh "docker-compose up -d"
        }
     }
  }
