#!/usr/bin/bash

set -e


# pytorch
export USE_CUDA=0
export TORCHDYNAMO_VERBOSE=1
export CC=`which clang`
export CXX=`which clang++`
export MAX_JOBS=4

# export CMAKE_PREFIX_PATH="${CONDA_PREFIX:-'$(dirname $(which conda))/../'}:${CMAKE_PREFIX_PATH}"
python setup.py develop --cmake # regenerate cmake cache.
