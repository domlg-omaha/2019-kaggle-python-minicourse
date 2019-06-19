#!/bin/bash

NOTEBOOK_HOME=/Users/nwertzberger/LocalJupyterNotebook

docker run \
    -it -p 8888:8888 \
    -v $NOTEBOOK_HOME/storage:/root/storage \
    -v $NOTEBOOK_HOME/datasets:/root/datasets \
    --ipc=host ufoym/deepo:all-py36-jupyter-cpu \
    jupyter notebook --no-browser \
    --ip=0.0.0.0 --allow-root \
    --NotebookApp.token= \
    --notebook-dir='/root'
