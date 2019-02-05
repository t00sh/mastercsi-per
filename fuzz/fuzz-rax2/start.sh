#!/bin/sh

AFL_PATH=$(realpath ../afl-latest/afl-fuzz)
RADARE_PATH=$(realpath ../radare2-install/bin/rax2)

$AFL_PATH -i in/ -o out/ $RADARE_PATH
