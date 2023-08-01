# How to use these scripts

1.  Define an env file with client credentials and IAM endpoint.Example:
    ```bash
      export IAM_HOSTNAME="***"
      export IAM_CLIENT_ID="***"
      export IAM_CLIENT_SECRET="***"
    ```
    > Replace the above `***` with actual values.
2. Source the env and config files:
   ```bash
    source config.sh
    ```
3. Get a token:
   ```bash
   IAM_CLIENT_SCOPES="openid profile offline_access" ./dc-get-access-token.sh
   ```
   > Run the `export` command shown in the output to proceed further.
4. Load access and refresh token to ENV:
   ```bash
   source load-access-token.sh
   source load-refresh-token.sh
   ```
5. Print access token:
   ```bash
   ./print-access-token.sh
   ```
6. Print refresh token:
   ```bash
   ./print-refresh-token.sh
   ```
7. Print user information:
   ```bash
   ./print-userinfo.sh
   ```
8. Print ID token information:
   ```bash
   ./print-id-token.sh
   ```
9.  Introspect the token
      ```bash
      ./introspect-token.sh
      ```
10. List the clients registered under user:
      ```bash
      ./list-clients.sh
      ```
