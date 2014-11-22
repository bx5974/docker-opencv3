#!/bin/bash
APP_ROOT=$(pwd)
sudo chown -R lalala:lalala $APP_ROOT/app/
SERVER_IP=$(sudo docker inspect opencv3 | grep IPAddress | cut -d '"' -f 4)
ssh -X  -t -t  -o IdentitiesOnly=yes -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i $APP_ROOT/sshkey.pem  root@$SERVER_IP

