#!/bin/bash
SWARM_MASTER_IP='192.168.7.240'
echo "YOU WILL NEED TO ENTER A PASSWORD FOR THE CA FILE"
openssl genrsa -aes256 -out ca-key.pem 4096

# GENERATE ca.pem FILE
echo "ENTER YOUR INFORMATION IN THE FOLLOWING FIELDS"
openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -out ca.pem

# MAKE PRIVATE KEY
openssl genrsa -out server-key.pem 4096

# GENERATE CSR
openssl req -subj "/CN=master.local" -sha256 -new -key server-key.pem -out server.csr

# ADD IP ADDRESSES USED AD SUBJECT ALTERNATIVE NAME
echo subjectAltName = IP:${SWARM_MASTER_IP},IP:127.0.0.1 > extfile.cnf

# SIGN THE FILE
openssl x509 -req -days 365 -sha256 -in server.csr -CA ca.pem -CAkey ca-key.pem  -CAcreateserial -out server-cert.pem -extfile extfile.cnf

# GENERATE CLIENT KEY
openssl genrsa -out key.pem 4096

# GEN CLIENT CERTS
openssl req -subj '/CN=client' -new -key key.pem -out client.csr

# MAKE KEY SUITABLE FOR CLIENT AUTHENTICATIOn
echo extendedKeyUsage = clientAuth > extfile.cnf

# SIGN THE PUBLIC KEY
openssl x509 -req -days 365 -sha256 -in client.csr -CA ca.pem -CAkey ca-key.pem -CAcreateserial -out cert.pem -extfile extfile.cnf

# REMOVE CSR REQUESTS
rm -v client.csr server.csr

# CHANGE PERMS
chmod -v 0400 ca-key.pem key.pem server-key.pem

# RUN DOCKER WITH ONLY TLS
#docker daemon --tlsverify --tlscacert=ca.pem --tlscert=server-cert.pem --tlskey=server-key.pem -H=0.0.0.0:2376
# RUN DOCKER CLIENT WITH CERTS
# docker --tlsverify --tlscacert=ca.pem --tlscert=cert.pem --tlskey=key.pem -H=master.local:2376 version

# SECURE BY DEFAULT
#mkdir -pv ~/.docker
#$ cp -v {ca,cert,key}.pem ~/.docker
#$ export DOCKER_HOST=tcp://$HOST:2376 DOCKER_TLS_VERIFY=1
