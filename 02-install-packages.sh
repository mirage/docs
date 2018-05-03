#!/bin/sh -ex

opam --yes depext -uyi -j 20 `grep -v '^#' PACKAGES`
