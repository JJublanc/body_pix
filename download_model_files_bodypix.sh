#!/bin/bash

# nb : execute script in sudo mode // sudo bash -c ./download_model_files.sh

# load model.json
curl https://storage.googleapis.com/tfjs-models/savedmodel/bodypix/resnet50/float/model-stride8.json --output model_bodypix/model.json

# load weights
for i in {1..23}
do
    curl https://storage.googleapis.com/tfjs-models/savedmodel/bodypix/resnet50/float/group1-shard${i}of23.bin --output model_bodypix/group1-shard${i}of23.bin
done