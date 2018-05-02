#!/bin/sh -ex

export OPAMYES=1

. ./vars.sh

rm -rf ~/.opam
opam init -a --compiler=${OCAML_VERSION}
