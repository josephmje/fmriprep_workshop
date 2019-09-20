#!/usr/bin/bash

BASE_DIR=/projects/mjoseph/tutorials/func/fmriprep_workshop
SING_CONTAINER=/archive/code/containers/FMRIPREP/poldracklab_fmriprep_1.5.0-2019-09-10-e262ec6efd8c.simg

# ds000030
# https://openneuro.org/datasets/ds000030/versions/00016
singularity run --cleanenv \
  -H /scratch/mjoseph/tmp \
  -B ${BASE_DIR}/data/ds000030:/bids \
  -B ${BASE_DIR}/data/ds000030/derivatives:/out \
  -B ${BASE_DIR}/tmp:/work \
  -B /scratch/mjoseph/tmp/freesurfer_license/license.txt:/li \
  ${SING_CONTAINER} \
  /bids /out participant \
  --task-id rest \
  --n_cpus 4 \
  --omp-nthreads 2 \
  --low-mem \
  --ignore fieldmaps \
  --output-spaces T1w MNI152NLin2009cAsym fsaverage \
  --use-aroma \
  --use-syn-sdc \
  --fs-license-file /li \
  -w /work

# Baycrest uses a SIEMENS scanner

# ds000117
# https://openneuro.org/datasets/ds000117/versions/1.0.3
singularity run --cleanenv \
  -H /scratch/mjoseph/tmp \
  -B ${BASE_DIR}/data/ds000117:/bids \
  -B ${BASE_DIR}/data/ds000117/derivatives:/out \
  -B ${BASE_DIR}/tmp:/work \
  -B /scratch/mjoseph/tmp/freesurfer_license/license.txt:/li \
  ${SING_CONTAINER} \
  /bids /out participant \
  --n_cpus 4 \
  --omp-nthreads 2 \
  --low-mem \
  --output-spaces T1w MNI152NLin2009cAsym fsaverage \
  --use-aroma \
  --fs-license-file /li \
  -w /work
