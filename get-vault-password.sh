#!/bin/bash

SECRET_NAME="githubaction"  # Replace with your secret name or ARN

SECRET_JSON=$(aws secretsmanager get-secret-value --secret-id $SECRET_NAME)
SECRET_VALUE=$(echo $SECRET_JSON | jq -r '.SecretString | fromjson.ansible_vault')

echo "$SECRET_VALUE"

