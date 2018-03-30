#!/bin/sh -ex
rm -rf /home/ocaml/.opam/4.05.0/var/cache/odig/cache
opam config exec -- odig odoc -q
