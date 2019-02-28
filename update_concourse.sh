#!/bin/bash
# my-python-examples update_concourse.sh

fly -t ci set-pipeline -p my-python-examples -c ci/pipeline.yml --load-vars-from ../../.credentials.yml
