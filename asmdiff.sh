#!/bin/bash

buildname=$3
baserom=$4

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS ${baserom}.gba > ${baserom}.dump || exit 1
$OBJDUMP $OPTIONS ${buildname}.gba > ${buildname}.dump
diff -u ${baserom}.dump ${buildname}.dump
