#!/bin/sh -xe
pushd kubevirt-conversion-test
docker build -t kubevirt-test:latest .
popd

docker run -ti \
    -v /tmp/vm-input:/data/input \
    -v /tmp/disk1:/data/vm/disk1 \
    -v /tmp/disk2:/data/vm/disk2 \
    -v /tmp/vmware-vix-disklib-distrib:/opt/vmware-vix-disklib-distrib \
    kubevirt-test:latest 
