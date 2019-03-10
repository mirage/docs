#!/bin/sh -exu

docker run -v `pwd`:/root -w /root ocaml/opam2 /root/build
