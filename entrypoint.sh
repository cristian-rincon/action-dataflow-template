#!/bin/bash

set -e
echo "${INPUT_GOOGLE_APPLICATION_CREDENTIALS}" | base64 -d > "${HOME}/gcloud.json"

echo $INPUT_IMAGE_VERSION
echo $INPUT_IMAGE_NAME

gcloud auth activate-service-account --key-file="${HOME}/gcloud.json" --project "${INPUT_GCP_PROJECT_ID}"

gcloud dataflow flex-template build ${INPUT_GCS_TEMPLATE_LOCATION} \
    --image ${INPUT_GCP_CONTAINER_REGISTRY}/${INPUT_IMAGE_NAME}:${INPUT_IMAGE_VERSION} \
    --sdk-languaje=PYTHON \
    --metadata-file=${INPUT_METADATA_PATH}