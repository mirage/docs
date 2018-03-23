#!/bin/sh -ex

export OPAMYES=1

rm -rf ~/.opam
opam init -a --compiler=4.05.0
opam pin add no-camlp4 https://github.com/avsm/no-camlp4.git
opam pin add -n odoc https://github.com/ocaml/odoc.git
