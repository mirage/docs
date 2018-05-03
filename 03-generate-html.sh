#!/bin/sh -ex

. ./vars.sh

rm -rf /home/ocaml/.opam/${OCAML_VERSION}/var/cache/odig/cache
opam config exec -- odig odoc -q

if [ "$BUILDKITE" != "" ]; then
  cd /home/ocaml/.opam/${OCAML_VERSION}/var/cache/odig/ && buildkite-agent artifact upload 'odoc/* odoc/**/*'
fi
