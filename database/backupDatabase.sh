#!/bin/bash

# S3 bucket and location
bucket=$AWS_BUCKET_NAME
location=$AWS_BUCKET_REGION

# AWS credentials
aws_access_key_id=$AWS_ACCESS_KEY_ID
aws_secret_access_key=$AWS_SECRET_ACCESS_KEY
aws_session_token=$AWS_SESSION_TOKEN

database_username=$DB_USERNAME
database_name=$DB_NAME

# Do not edit below.

####

# Calculated values

# current date in file format
date_value=`date +%Y_%m_%d_%S_%H_%M`
file_name="${database_name}_${date_value}.sql"

# file parts
file_path="/var/lib/postgresql/${file_name}"
file_name=`basename "$file_path"`

# Set AWS credentials
touch ~/.aws/credentials
echo "[default]" > ~/.aws/credentials
echo "aws_access_key_id = ${aws_access_key_id}" >> ~/.aws/credentials
echo "aws_secret_access_key = ${aws_secret_access_key}" >> ~/.aws/credentials
echo "aws_session_token = ${aws_session_token}" >> ~/.aws/credentials

# Backup the database
pg_dump -U $database_username $database_name > $file_path 

# Upload to S3
aws s3 cp $file_path s3://${bucket}/${file_name}
