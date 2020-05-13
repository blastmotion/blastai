#!/bin/sh

mkdir notebooks
git clone https://github.com/blastmotion/fastai notebooks/fastai
ln notebooks/fastai/data/bulldozers notebook/fastai/courses/ml1/data/bulldozers
docker run -p 8888:8888 --name blast-ml -v $(pwd)/notebooks:/opt/notebooks blastai