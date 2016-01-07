#!/bin/bash

sudo apt-get update

sudo apt-get install -y python-pip python-dev python-virtualenv

if [[ ! -d ~/WF-Cloudify ]]; then
   virtualenv ~/WF-Cloudify 
fi
. ~/WF-Cloudify/bin/activate

cloudify=$(which cfy)

if [[ -z ${cloudify} ]]; then
   pip install cloudify==3.2
fi
