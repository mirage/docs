#!/bin/sh

while true; do
  sudo /home/ocaml/.opam/4.05.0/bin/cohttp-server-lwt -p 80 /home/ocaml/.opam/4.05.0/var/cache/odig/odoc
  sleep 1
done
