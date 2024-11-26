read -p "Enter HCP_CLIENT_ID: " SPID
read -p "Enter HCP_CLIENT_SECRET: " SPSECRET

hcp auth login --client-id=$SPID --client-secret=$SPSECRET

hcp vault-secrets secrets create ROOT_CRT --data-file=./root.crt
hcp vault-secrets secrets create SERVER_CRT --data-file=./server.crt
hcp vault-secrets secrets create SERVER_KEY --data-file=./server.key 
