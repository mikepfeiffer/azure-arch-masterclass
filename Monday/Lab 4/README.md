# Lab 4 - Setup Self Service Password Reset

1. Configure the Password Reset options for your AAD tenant. Enable password reset for all users and enable password write back
2. Start a private browser session and navigate to https://myapps.microsoft.com/. Sign in as the user from step 2
3. Reset the users password in the cloud
4. Validate password write back. (hint: you can do this by authenticating to a domain joined machine in your on-prem environment)

### Tip:
If you don't want to wait for sync schedule you can invoke it manually using this command: Start-ADSyncSyncCycle -PolicyType Delta


### Notes:

Licensing requirements for Azure AD self-service password reset
* https://docs.microsoft.com/en-us/azure/active-directory/authentication/concept-sspr-licensing

How-to: Configure password writeback
* https://docs.microsoft.com/en-us/azure/active-directory/authentication/howto-sspr-writeback

How to troubleshoot self-service password reset
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-passwords-troubleshoot#troubleshoot-password-writeback-connectivity

Quickstart: Configure Azure Active Directory self-service password reset
* https://docs.microsoft.com/en-us/azure/active-directory/authentication/quickstart-sspr
