#!/bin/sh -ex

export OPAMYES=1

rm -rf ~/.opam
opam init -a --compiler=4.05.0
