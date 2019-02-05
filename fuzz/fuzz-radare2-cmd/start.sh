#!/bin/sh

AFL_PATH=$(realpath ../afl-latest/afl-fuzz)
RADARE_PATH=$(realpath ../radare2-install/bin/radare2)

$AFL_PATH -m 256 -i in/ -o out/ $RADARE_PATH -i @@ -q /sbin/ebtables
