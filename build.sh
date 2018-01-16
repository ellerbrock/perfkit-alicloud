#!/usr/bin/env sh

function main () {
  local CONTAINER_NAME="ellerbrock/perfkit"

  docker build -t ${CONTAINER_NAME} .
}

main

