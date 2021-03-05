#!/bin/bash
if [ -f .env ]
then 
    rm .env
    echo "le fichier .env vient d'être supprimée"
fi

USERID="$(id -u)"
GROUPID="$(id -g)"

API_PROJECT_PATH="./e-commerce"
API_IP="127.0.3.1"

echo "USERID=$USERID" >> .env
echo "GROUPID=$GROUPID" >> .env
echo "API_PROJECT_PATH=$API_PROJECT_PATH" >> .env
echo "API_IP=$API_IP" >> .env
echo "le fichier .env vient d'être créé avec les variables d'env requises"
