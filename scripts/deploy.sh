#!/usr/bin/env bash
# az login
# az account set --subscription {subscription-id}

az group create --name $KHUB_ENV_NAME --location $AZURE_LOCATION

# az group deployment create \
#     --name $KHUB_ENV_NAME \
#     --resource-group $KHUB_ENV_NAME \
#     --template-uri https://raw.githubusercontent.com/kamoljan/azure-hub-spoke/master/main.json \
#     --parameters ./main.parameters.json

az group deployment create \
    --name $KHUB_ENV_NAME \
    --resource-group $KHUB_ENV_NAME \
    --template-file main.json \
    --parameters @main.parameters.json
