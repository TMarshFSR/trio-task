#! /bin/bash

ssh -i ~/ubuntu/.ssh/id_rsa.pem ubuntu@63.35.219.12 << EOF
    docker-compose up -d
EOF
