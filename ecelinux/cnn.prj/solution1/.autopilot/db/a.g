#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/clc288/lab4/ecelinux/cnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
