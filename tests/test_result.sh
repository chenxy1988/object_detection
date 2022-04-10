#!/bin/bash

echo "Testing the training result"

dnn detector test $1 $2 $3 $4 -i 0 -thresh 0.25
