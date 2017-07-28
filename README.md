# Azure Hub Spoke
This is a demo how to create 
Azure hub-spoke topology example

### How to use

#### Prerequisite
- Enable your enviroment variables as shown bellow:
```bash
export AZURE_SUBSCRIPTION_ID="";
export AZURE_TENANT_ID="";
export AZURE_CLIENT_ID="";
export AZURE_CLIENT_SECRET='';
export AZURE_LOCATION="";
###################### network #################################
export HUB_ENV_NAME="ne-XXX-dev"
export HUB_VNET_SUBNET="10.5.0.0/16"
export HUB_MANAGEMENT_SUBNET=10.5.0.0/26
```
You can use `direnv`(https://github.com/direnv/direnv) if you want.
- Modify `main.parameters.json` with your parameters

### How to deploy
```bash
./scripts/deploy.sh
```

#### How to destroy
```bash
./scripts/destroy.sh
```

#### How to validate
```bash
./scripts/validate.sh
```