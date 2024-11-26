# Retrieve the secrets and inject the values into the process given as first argument

# usage :
# get-secrets-and-run.sh ./my-script.sh

hcp auth login --client-id=QO1XS3f3E0XkHi5i8aRFyr6l19oU11W4 --client-secret=fD0tkBIB8kj3q2UwE7hGFQRcHi05rjy2bTmKG2LocM69Lox8Q7cyr6DJ1kLsW1A7

hcp vault-secrets run bash $1
