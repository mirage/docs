#!/bin/sh -ex

rm -rf .gh-pages
git clone git@github.com:mirage/docs .gh-pages --reference .
git -C .gh-pages checkout --orphan gh-pages
git -C .gh-pages reset
git -C .gh-pages clean -dxf
cp -r /home/ocaml/.opam/4.05.0/var/cache/odig/odoc/* .gh-pages/
git -C .gh-pages add .
git -C .gh-pages commit -m "Update Pages"
git -C .gh-pages push origin gh-pages -f
rm -rf .gh-pages
