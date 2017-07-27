#!/usr/bin/env bash
# az login
# az account set --subscription {subscription-id}

az group create --name $KHUB_ENV_NAME --location $AZURE_LOCATION

az group deployment create \
    --name $KHUB_ENV_NAME_DEPLOYMENT \
    --resource-group $KHUB_ENV_NAME \
    --template-file main.json \
    --parameters @main.parameters.json

