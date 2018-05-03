#!/bin/sh -ex

. ./vars.sh

rm -rf /home/opam/.opam/${OCAML_VERSION}/var/cache/odig/cache
opam config exec -- odig odoc -q

if [ "$BUILDKITE" != "" ]; then
  cd $(opam config var prefix)/var/cache/odig/ && tar -jcf docs.tbz odoc/ && buildkite-agent artifact upload docs.tbz'
fi
