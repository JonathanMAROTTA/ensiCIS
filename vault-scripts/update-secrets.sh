read -p "Enter HCP_CLIENT_ID: " SPID
read -p "Enter HCP_CLIENT_SECRET: " SPSECRET

hcp profile set vault-secrets/app sample-app
hcp auth login --client-id=$SPID --client-secret=$SPSECRET

# Generate keys and certificates
openssl genrsa 2048 > server.key
openssl rsa -in server.key -out server.key

openssl req -new -key server.key -days 365 -out server.crt -x509 -subj "/"
cp server.crt root.crt

base64 -w 0 root.crt > root_encoded.crt
base64 -w 0 server.crt > server_encoded.crt
base64 -w 0 server.key > server_encoded.key

# hcp vault-secrets secrets create JAMY --data-file=./a.txt
hcp vault-secrets secrets create ROOT_CRT_ENCODED --data-file=./root_encoded.crt
hcp vault-secrets secrets create SERVER_CRT_ENCODED --data-file=./server_encoded.crt
hcp vault-secrets secrets create SERVER_KEY_ENCODED --data-file=./server_encoded.key 

rm -rf root.crt root_encoded.crt server.crt server_encoded.crt server.key server_encoded.key