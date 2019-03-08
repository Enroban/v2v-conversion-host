#!/bin/sh -xe
cp wrapper/virt-v2v-wrapper.py kubevirt-conversion-pod/
chmod a+rx kubevirt-conversion-pod/virt-v2v-wrapper.py

pushd kubevirt-conversion-pod
docker build -t kubevirt-conversion:latest .
popd
