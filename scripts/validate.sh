#!/usr/bin/env bash
az group deployment validate \
    --name $KHUB_ENV_NAME_DEPLOYMENT \
    --resource-group $KHUB_ENV_NAME \
    --template-file main.json
    --parameters @main.parameters.json

