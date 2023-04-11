#!/bin/bash

> ../feature_matrix.md

if ! command -v gomplate &> /dev/null
then
    echo "The required tool \"gomplate\" could not be found. Please make sure to install it and try again."
    exit
fi

gomplate -d fm='../feature_matrix.yaml' -o '../feature_matrix.md' -f 'yaml2md.tmpl'