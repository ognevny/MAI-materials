#!/usr/bin/env bash

set -eo pipefail

root=$(cd "$(dirname ${BASH_SOURCE[0]})"/.. && pwd)
build_dir="$root"/build
artifact="$root"/artifacts

mkdir -p "$build_dir"
mkdir -p "$artifact"

build_pdfs() {
  local -A sources=(
    material-theory       'Material-science'
    strength-of-materials 'Materials-strengths'
    theoritecal-mechanics 'Theoritecal-mechanics'
  )

  for subject in "${!sources[@]}"; do
    typst compile \
      "$root"/materials/$subject/lectures.typ \
      "$build_dir/Lectures_of_${sources[$subject]}.pdf"
  done
}

build_pdfs

cp $build_dir/*.pdf "$artifact"
