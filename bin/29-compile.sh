#!/usr/bin/env bash
# compile the static html using docker + hugo.

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

# compile hugo site
echo "##[group]Compiling static site"
docker run --rm \
  -w /app \
  -v "$PWD:/app" \
  klakegg/hugo:0.78.2-alpine \
  || die "failed to compile hugo site"
echo "##[endgroup]"
