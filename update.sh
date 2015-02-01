#!/usr/bin/env bash

git reset --hard
git fetch origin
git merge origin/master
git submodule update --init
git clean -f
