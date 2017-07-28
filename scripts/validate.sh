#!/usr/bin/env bash
az group deployment validate \
    --name $KHUB_ENV_NAME \
    --resource-group $KHUB_ENV_NAME \
    --template-uri https://raw.githubusercontent.com/kamoljan/azure-hub-spoke/master/main.json \
    --parameters ./main.parameters.json

