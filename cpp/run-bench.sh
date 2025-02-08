#!/bin/bash

for NAME in $(find . -maxdepth 1 -type f -executable | xargs -i basename {}); do
    echo $NAME
done
