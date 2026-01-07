#!/usr/bin/env bash

set -eo pipefail

root=$(cd "$(dirname ${BASH_SOURCE[0]})"/.. && pwd)
build_dir="$root"/build
artifact="$root"/artifacts

mkdir -p "$build_dir"
mkdir -p "$artifact"

build_pdfs() {
  local -A sources=(
    material-theory       'Материаловедению'
    strength-of-materials 'Сопротивлению_материалов'
    theoritecal-mechanics 'Теоретической_механике'
  )

  for subject in "${!sources[@]}"; do
    typst compile \
      "$root"/materials/$subject/lectures.typ \
      "$build_dir/Лекции_по_${sources[$subject]}.pdf"
  done
}

build_pdfs

cp $build_dir/*.pdf "$artifact"
