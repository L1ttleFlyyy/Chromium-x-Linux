#!/bin/bash

# folder: /etc/init.d/
/usr/bin/intel-undervolt apply

default="0x80001f04"
batterylife="0xe0000c04"

for pno in {0..3..1}

do

/usr/sbin/wrmsr 0x774 -p $pno $batterylife

done
