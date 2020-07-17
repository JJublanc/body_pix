#!/bin/bash

# nb : execute script in sudo mode // sudo bash -c ./download_model_files.sh

# load model.json
curl https://storage.googleapis.com/tfjs-models/savedmodel/posenet/resnet50/float/model-stride32.json --output model_posenet/model.json

# load weights
for i in {1..23}
do
    curl https://storage.googleapis.com/tfjs-models/savedmodel/posenet/resnet50/float/group1-shard${i}of23.bin --output model_posenet/group1-shard${i}of23.bin
done