#!/bin/sh

mkdir notebooks
git clone https://github.com/blastmotion/fastai notebooks/fastai
docker run -it -p 8888:8888 --name blast-ml -v $(pwd)/notebooks:/opt/notebooks blastai