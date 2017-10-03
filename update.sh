#!/usr/bin/env bash
set -e

function make_image {
  name="vitalibo/${1%%/}:${2%%/}"
  docker build --pull -t ${name} $1$2.
  docker push ${name}
}

for folder in `ls -d */`; do
  for subfolder in $(ls -d ${folder}/*/); do
    subfolder=${subfolder##`echo ${folder}`/};
    make_image ${folder} ${subfolder}
  done
done