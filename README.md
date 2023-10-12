# azurtest
The task is:
1. Create a terraform project which deploys a virtual machine in the free tier and all it's dependencies.
2. Create a GitHub action that deploys the terraform project in azure.
3. Secrets for the virtual machine such as: admin user and admin password should be taken from an Azure Key Vault
4. Create an automation script for the virtual machine that installs docker and helm
5. Deploy this https://github.com/codefresh-contrib/helm-sample-app in the virtual machine (No manual steps, should be automated)
6. Application should be accessible from internet by a public ip address , but ssh connection should be only accessible from your public IP address This is for azue VM automation test
