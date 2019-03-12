FROM kubevirt-conversion:latest

RUN install --mode=0775 --group=0 -d /data/vm/disk1
RUN install --mode=0775 --group=0 -d /data/vm/disk2

VOLUME [ "/data/input", "/data/vm/disk1", "/data/vm/disk2", ]

# Notes:
# $ chcon -Rt svirt_sandbox_file_t /tmp/vmware-vix-disklib-distrib/
