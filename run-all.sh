#!/bin/bash

#./example/bin/x86-64-core-i7-glibc

for entry in ./example/bin/*
do
  echo $entry
  $entry
done