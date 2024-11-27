# Retrieve the secrets and inject the values into the process given as first argument

# usage :
# get-secrets-and-run.sh ./my-script.sh

hcp auth login --client-id=$HCP_CLIENT_ID --client-secret=$HCP_CLIENT_SECRET

hcp vault-secrets run bash $1
