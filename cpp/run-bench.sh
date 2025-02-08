#!/bin/bash

INPUT_DIR=build/benchmarks
OUTPUT_DIR=bench_output/g4dn.xlarge

mkdir -p $OUTPUT_DIR

for NAME in $(find $INPUT_DIR -maxdepth 1 -type f -executable | xargs -i basename {}); do
    echo $NAME
    $INPUT_DIR/$NAME 1>$OUTPUT_DIR/bench_${NAME}.stdout 2>$OUTPUT_DIR/bench_${NAME}.stderr
done
