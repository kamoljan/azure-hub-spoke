#!/usr/bin/env bash

az group deployment validate \
    --name $HUB_ENV_NAME \
    --resource-group $HUB_ENV_NAME \
    --template-file azuredeploy.json \
    --parameters @azuredeploy.parameters.json
    # --template-uri https://raw.githubusercontent.com/kamoljan/azure-hub-spoke/master/azuredeploy.json \
    # --parameters ./azuredeploy.parameters.json

