#! /bin/bash

sudo ssh -T -i ~/.ssh/id_rsa ubuntu@63.35.219.12 << EOF
    docker-compose up -d
EOF
