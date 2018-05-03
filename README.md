# docs.mirage.io

[![Build status](https://badge.buildkite.com/ef64c563a52c6fc9153e298492f7e6e0efaf674e776f3474f4.svg)](https://buildkite.com/ocaml/mirage-docs)

The scripts in this repository use the [OCaml Buildkite](https://buildkite.com/ocaml/mirage-docs) infrastructure to regularly
build a snapshot of MirageOS libraries and generate their documentation using
[odoc](https://github.com/ocaml/odoc).  The HTML is then pushed to the
`gh-pages` branch of this repository, and is served at
[docs.mirage.io](https://docs.mirage.io) via GitHub pages.

## Contributing

The opam package list that we build is held in [PACKAGES](PACKAGES). Feel free
to contribute additional libraries that are relevant to MirageOS that we should
also regularly publish up there.  Any package included in this must be
co-installable with the mainline MirageOS package set, so your contribution
also acts as a useful addition to the continuous testing pool.

## Contact

This infrastructure is run by [Anil Madhavapeddy](mailto:anil@recoil.org), or also
use <mirageos-devel@lists.xenproject.org> or the [OCaml Discussion](https://discuss.ocaml.org)
using the tag `mirage`.
