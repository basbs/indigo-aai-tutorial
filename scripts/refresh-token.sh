#!/bin/bash
set -ex
#FIXME - Getting the error 
# {"error":"invalid_token","error_description":"Refresh token for value **** was not found"}
curl -s -L \
  --user ${IAM_CLIENT_ID}:${IAM_CLIENT_SECRET} \
  -d grant_type=refresh_token \
  -d refresh_token="${IAM_REFRESH_TOKEN}" \
  ${IAM_TOKEN_ENDPOINT} 
