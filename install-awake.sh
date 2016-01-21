#!/bin/bash

BINDIR="${BINDIR-./}"

sudo apt-get update && sudo apt-get -y install \
                            libaio-dev \
                            libleveldb-dev \
                            libsnappy-dev \
                            g++ \
                            libcap2-bin \
                            libseccomp-dev
go get
go build
cp -vf stenographer "$BINDIR/stenographer"
pushd stenotype
make
popd
cp -vf stenotype/stenotype "$BINDIR/stenotype"
cp -vf stenoread "$BINDIR/stenoread"
cp -vf stenocurl "$BINDIR/stenocurl"
