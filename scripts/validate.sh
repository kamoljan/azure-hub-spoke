#!/usr/bin/env bash

az group deployment validate \
    --name $HUB_ENV_NAME \
    --resource-group $HUB_ENV_NAME \
    --template-file main.json \
    --parameters @main.parameters.json
    # --template-uri https://raw.githubusercontent.com/kamoljan/azure-hub-spoke/master/main.json \
    # --parameters ./main.parameters.json

