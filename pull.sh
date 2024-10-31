#!/usr/bin/bash


git submodule update --init --recursive

while(($? == 1))
do
  sleep 3
  git submodule update --init --recursive
done

echo "successed!"
