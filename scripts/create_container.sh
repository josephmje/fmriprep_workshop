#!/usr/bin/bash

FMRIPREP_VERSION=1.5.0
SINGULARITY_VERSION=v2.5
OUTPUT_FOLDER=/projects/mjoseph/containers/FMRIPREP

# Singularity version >= 2.5
singularity build \
    ${OUTPUT_FOLDER}/fmriprep-${FMRIPREP_VERSION}.simg \
    docker://poldracklab/fmriprep:${FMRIPREP_VERSION}

# Singularity version < 2.5
docker run --privileged -t --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ${OUTPUT_FOLDER}:/output \
    singularityware/docker2singularity:${SINGULARITY_VERSION} \
    poldracklab/fmriprep:${FMRIPREP_VERSION}
