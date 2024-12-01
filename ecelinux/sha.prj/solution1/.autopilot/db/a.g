#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ayl47/ece6775/hls-bitcoin-miner/ecelinux/sha.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
