#!/bin/bash

RESOURCE_GROUP="rg-bicep-demo-ci"
PARAMETERS_FILE="$1"

if [ -z "$PARAMETERS_FILE" ]; then
  echo "Usage: ./docs/analyze-what-if.sh <parameter-file>"
  exit 1
fi

echo "=========================================="
echo " Bicep What-If Change Analysis"
echo "=========================================="
echo "Resource Group : $RESOURCE_GROUP"
echo "Parameters     : $PARAMETERS_FILE"
echo "=========================================="

az deployment group what-if \
  --resource-group "$RESOURCE_GROUP" \
  --parameters "$PARAMETERS_FILE" \
  --no-pretty-print
