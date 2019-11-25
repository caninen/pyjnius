#!/usr/bin/env bash

target=$1
echo $target

yum install -y java-1.7.0-openjdk-devel
ls /opt/python/$target/
python=/opt/python/$target/bin/python
$python -m pip install -U setuptools wheel cython
$python setup.py bdist_wheel
