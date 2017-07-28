#!/usr/bin/env bash

# AUTH
# az login
# az account set --subscription {subscription-id}

# RESOURCEGROUP
az group create --name $HUB_ENV_NAME --location $AZURE_LOCATION
# VAULT
az keyvault create --name $HUB_ENV_NAME --resource-group $HUB_ENV_NAME --location $AZURE_LOCATION --enabled-for-template-deployment true
az keyvault secret set --vault-name $HUB_ENV_NAME --name "${VM_ADMIN_USERNAME}" --value "${VM_ADMIN_PASSWORD}"
# HUB
az group deployment create \
    --name $HUB_ENV_NAME \
    --resource-group $HUB_ENV_NAME \
    --template-file main.json \
    --parameters @main.parameters.json
#     --template-uri https://raw.githubusercontent.com/kamoljan/azure-hub-spoke/master/main.json \
#     --parameters ./main.parameters.json
