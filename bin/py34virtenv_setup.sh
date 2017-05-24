#!/bin/bash

# set -ex

python3.5 -m venv --without-pip virtualenv
ln -s `pwd`/virtualenv/bin/activate
source `pwd`/virtualenv/bin/activate
curl 'https://bootstrap.pypa.io/get-pip.py' | python

echo -e '\nActivate new virtual env with: . ./activate'
