#! /bin/bash

ssh -i home/jenkins/.ssh/id_rsa ubuntu@63.35.219.12 << EOF
    docker-compose up -d
EOF
