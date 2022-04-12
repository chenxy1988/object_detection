#!/bin/bash
INPUT_FILE=$1
OUTPUT_FILE=$2


dd if=/dev/zero of=$OUTPUT_FILE.tmp bs=1M count=128
dd if=$INPUT_FILE of=$OUTPUT_FILE.tmp skip=128
md5sum $INPUT_FILE >> $OUTPUT_FILE.tmp
dd if=/proc/version of=./version
cat ./version $OUTPUT_FILE.tmp >$OUTPUT_FILE
