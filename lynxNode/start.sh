#!/bin/bash
################################################################################
# Lynx tools 
#
# Created by CryptoLions.io
#
# https://github.com/needly/lynx.start 
# 
#
###############################################################################


NODEOSBINDIR="/opt/bin/bin"
DATADIR="/opt/LynxMainNet/lynxNode"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000


$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid

