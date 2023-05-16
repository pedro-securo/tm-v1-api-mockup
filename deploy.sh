#!/usr/bin/env bash
mvn clean package
scp -i ~/Downloads/PRO-Devs-Tools.pem target/v1mock-1.0.tar.gz toolsmgr@10.103.143.84:~/v1mock/.
ssh -i ~/Downloads/PRO-Devs-Tools.pem toolsmgr@10.103.143.84 /home/toolsmgr/v1mock/deploy.sh