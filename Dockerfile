# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/scipy-notebook:latest
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"


# Install Tensorflow
RUN pip install --quiet \
    'tensorflow-gpu==1.15' && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

RUN $CONDA_DIR/bin/python -m pip install lime 
