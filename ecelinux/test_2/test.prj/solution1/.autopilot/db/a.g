#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vml37/ece6775/bitcoin/ecelinux/test_2/test.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
