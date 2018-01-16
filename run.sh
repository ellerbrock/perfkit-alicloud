#!/usr/bin/env bash

MACHINE_TYPE="ecs.sn1.medium"
ZONE="eu-central-1a"
BENCHMARKS="iperf"

function main() {
  docker run \
    -it \
    -v "${HOME}/.aliyuncli:/home/perfkit/.aliyuncli:ro" \
  ellerbrock/perfkit \
    --cloud=AliCloud \
    --machine_type=${MACHINE_TYPE} \
    --zones=${ZONE} \
    --benchmarks=${BENCHMARKS}
}

main

