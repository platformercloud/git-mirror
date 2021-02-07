#!/bin/sh

curl -s -X GET $PROGRESS_URL

export GOOGLE_PROJECT_ID=$( cat /$(pwd)/key.json | jq -r .project_id)

# gcloud auth
gcloud auth activate-service-account --key-file=$(pwd)/key.json
git config --global credential.'https://source.developers.google.com'.helper gcloud.sh

# clone repo
git clone --mirror $SOURCE_URL clone && cd clone
echo "Cloning complete. Pushing to GSR"
# change remote origin url
eval git push --mirror $GSR_REPO 

curl -s -X  GET $SUCCESS_URL

cd ..
rm -Rf clone
