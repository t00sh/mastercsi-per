#!/bin/sh

AFL_PATH=$(realpath ../afl-latest/afl-fuzz)
RADARE_PATH=$(realpath ../radare2-install/bin/rasm2)

$AFL_PATH -i in/ -o out/ -m 256 $RADARE_PATH -f @@ -d -a x86
