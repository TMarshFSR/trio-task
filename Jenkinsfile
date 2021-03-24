pipeline {
  agent any
  stages{
    stage ('Install Docker') {
      steps{
        sh "sudo apt update"
        sh "sudo apt install -y curl jq"
        sh "version=$\(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')"
        sh "sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-\$(uname -s)-\$(uname -m)" -o /usr/local/bin/docker-compose"
        sh "sudo chmod +x /usr/local/bin/docker-compose"
                     }
                 }
     stage ('Run docker-compose.yaml) {
        steps {
          sh "docker compose up -d"
        }
                            
