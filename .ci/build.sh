#!/usr/bin/env bash

set -eo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)
build_dir="$root"/build

mkdir -p "$build_dir"

declare -A sources=(
  [material_theory]='Material-science'
  [strength_of_materials]='Materials-strength'
  [theoritecal_mechanics]='Theoritecal-mechanics'
)

for subject in "${!sources[@]}"; do
  typst compile \
    "$root/materials/${subject//_/-}/lectures.typ" \
    "$build_dir/Lectures_of_${sources[$subject]}.pdf"
done
