#!/bin/sh

. ./vars.sh

while true; do
  sudo /home/ocaml/.opam/${OCAML_VERSION}/bin/cohttp-server-lwt -p 80 /home/ocaml/.opam/${OCAML_VERSION}/var/cache/odig/odoc
  sleep 1
done
