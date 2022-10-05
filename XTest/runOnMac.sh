#!/bin/bash
CURRENT_DIR=$(cd $(dirname $0); pwd)

ADB=$CURRENT_DIR/MacAdb/adb

DEST="/data/local/tmp/xtest-agent"

$ADB push $CURRENT_DIR/xtest-agent $DEST
$ADB shell chmod 755 $DEST
$ADB shell $DEST server --stop
$ADB shell $DEST server -d "$@"
