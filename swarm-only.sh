#!/bin/bash
ansible-playbook -i inventory swarm_only.yml -b 
# IF YOU DONT HAVE SSHPASS ADD -k
#ansible-playbook -i inventory swarm_only.yml -b -k
