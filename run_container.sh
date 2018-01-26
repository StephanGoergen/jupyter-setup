#! /bin/bash

FOLDER=$1
CONTAINER=`docker run -dp 8888:8888 \
                      -v $FOLDER:/home/ds/notebooks \
           sgoergen/jupyter-setup`

echo $CONTAINER
