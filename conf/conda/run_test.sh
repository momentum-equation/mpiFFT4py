#!/bin/bash

pushd tests

if [ "${CONDA_PY:0:1}" == "3" ]; then
    mpirun -np 4 py.test
fi

if [ "${CONDA_PY:0:1}" == "2" ]; then
    mpirun -np 1 py.test
fi

