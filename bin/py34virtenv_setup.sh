#!/bin/bash

python3.4 -m venv --without-pip virtualenv
source ./virtualenv/bin/activate
curl 'https://bootstrap.pypa.io/get-pip.py' | python
