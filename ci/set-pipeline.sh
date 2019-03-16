#!/bin/bash
# my-python-examples set-pipeline.sh

fly -t ci set-pipeline -p my-python-examples -c pipeline.yml --load-vars-from ../../../.credentials.yml
