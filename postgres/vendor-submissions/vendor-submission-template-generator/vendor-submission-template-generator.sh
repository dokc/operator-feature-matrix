#!/bin/bash

> vendor-submission-template.yaml

if ! command -v gomplate &> /dev/null
then
    echo "The required tool \"gomplate\" could not be found. Please make sure to install it and try again."
    exit
fi

gomplate -d fm='../../spec/feature_matrix.yaml' -o '../vendor-submission-template.yaml' -f 'vendor-submission-template-generator.tmpl'
