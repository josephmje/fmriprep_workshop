# fMRIPrep Workshop

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/josephmje/fmriprep_workshop/master)

## Overview

This workshop will introduce trainees to fMRIPrep, a pipeline for minimally pre-processing fMRI data. fMRIPrep was built around 3 principles: robustness, ease of use, and a "glass box" design. Trainees will learn how to install and run fMRIPrep, inspect fMRIPrep's outputs, and trouble shoot errors.

## Objectives

1. Understand the structure of an fMRI experiment
  - Introduce the Brain Imaging Data Structure (BIDS) hierarchy
  - Get to know important metadata that must be present in the JSON sidecar

2. Understand the common pre-processing steps involved in fMRI data analysis
  - T1w/T2w pre-processing
  - Susceptibility distortion correction
  - BOLD pre-processing

3. Get a working installation of fMRIPrep
  - Docker
  - Singularity
  - Python environment

4. Become familiar with fmriprep's command line interface
  - Optionally ignoring steps
  - Specifying output spaces
  - Longitudinal workflows
  - Options for more reproducible results

5. Trouble shoot common errors

6. Understand how to assess the quality of fMRIPrep's pre-processing results

7. What's next?
  - Caveats
  - Confound cleaning
