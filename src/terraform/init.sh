#!/bin/bash

### terraform initializing
/usr/local/bin/terraform init

### azure account
az account show

echo "=========================================================================="
echo "  "
echo "   MAKE SURE THAT YOU ARE LOGED IN THE RIGHT SUBSCRIPTION!!!!!!!!!!!!!!   "
echo "  "
echo "   Now create the service principal to deploy infrastructure on Azure     "
echo "   > az ad sp create-for-rbac -n \"tfuser\" --role=\"Contributor\" --scopes=\"/subscription/\${subscriptionid}\""
echo "=========================================================================="
