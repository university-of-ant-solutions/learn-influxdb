#!/usr/bin/env bash

function fileExists {
if [ -f $1 ]; then
  return 0
fi
return 1
}