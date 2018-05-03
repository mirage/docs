#!/bin/sh -ex

. ./vars.sh

rm -rf /home/opam/.opam/${OCAML_VERSION}/var/cache/odig/cache
opam config exec -- odig odoc -q

if [ "$BUILDKITE" != "" ]; then
  cd /home/opam/.opam/${OCAML_VERSION}/var/cache/odig/ && buildkite-agent artifact upload 'odoc/* odoc/**/*'
fi
