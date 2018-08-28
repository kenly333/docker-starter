#!/usr/bin/env bash

mkdir gitbooks

gitbook init

gitbook build
gitbook build ./ --log=debug --debug

gitbook serve

gitbook pdf