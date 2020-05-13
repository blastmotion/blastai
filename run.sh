#!/bin/sh

mkdir notebooks
git clone https://github.com/blastmotion/fastai notebooks/fastai
mkdir notebooks/fastai/courses/ml1/data
mkdir notebooks/fastai/courses/ml1/data/bulldozers
ln -s notebooks/fastai/data/bulldozers notebooks/fastai/courses/ml1/data/bulldozers
docker run -p 8888:8888 --name blast-ml -v $(pwd)/notebooks:/opt/notebooks blastmotion/blastai:latest
