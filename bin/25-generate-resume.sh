#!/usr/bin/env bash
# generate a PDF of my resume from markdown.

# funcs
die() { echo "$1" >&2; exit "${2:-1}"; }

# check project root
[[ ! -d .git ]] \
  && die "must be run from repository root directory"

# check deps
deps=(docker)
for dep in "${deps[@]}"; do
  hash "$dep" 2>/dev/null || missing+=("$dep")
done
if [[ ${#missing[@]} -ne 0 ]]; then
  [[ ${#missing[@]} -gt 1 ]] && { s="s"; }
  die "missing dep${s}: ${missing[*]}"
fi

# get repo name
repo=$(basename "$PWD") \
  || die "failed to retrieve repository name"

# build docker image
docker build . -t "$repo" \
  || die "failed to build Dockerfile for $repo"

# generate resume usind docker image
# https://pandoc.org/demos.html
file="Resume.pdf"
docker run --rm \
  -w /app \
  -v "$PWD:/app" \
  "$repo" --metadata-file ./resume/metadata.yml ./resume/data.md -o $file \
  || die "failed to docker run"

# chown file
# FIXME is this really needed?
sudo chown "$(whoami)" "$file" \
  || die "failed to chown $file"