#!/bin/bash

IAM_CLIENT_ID=${IAM_CLIENT_ID}
IAM_CLIENT_SECRET=${IAM_CLIENT_SECRET} 

IAM_CLIENT_SCOPES=${IAM_CLIENT_SCOPES:-"openid profile"}
IAM_CLIENT_AUDIENCE=${IAM_CLIENT_AUDIENCE:- "https://defalut/aud"}

VERBOSE=${VERBOSE:-""}
