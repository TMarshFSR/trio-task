#! /bin/bash

ssh -i ~/.ssh/id_rsa ubuntu@34.244.19.16 << EOF
    cd trio-task
    docker-compose up -d
EOF
