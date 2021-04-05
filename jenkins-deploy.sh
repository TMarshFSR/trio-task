#! /bin/bash

sudo ssh -i ~/.ssh/id_rsa ubuntu@63.35.219.12 << EOF
    echo yes
    docker-compose up -d
EOF
