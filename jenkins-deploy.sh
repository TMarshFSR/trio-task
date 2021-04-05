#! /bin/bash

ssh -i ${jenkins-keypair} ubuntu@63.35.219.12 << EOF
    docker-compose up -d
EOF
