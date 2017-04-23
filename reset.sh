#!/usr/bin/env bash

rm -rf Godeps
rm -rf vendor
rm -f *.json
rm -f Gopkg.*
rm -f dep-demo

for lib in [github.com/Sirupsen/logrus github.com/sirupsen/logrus github.com/spf13/cobra/cobra]; do
  echo "Deleting $lib"
  set -x
  rm -rf $GOPATH/src/$lib
  rm -rf $GOPATH/pkg/darwin_amd64/$lib
  set +x
done
