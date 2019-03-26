#!/bin/sh
export CC=clang
export CFLAGS="-fsanitize=address"
export LSAN_OPTIONS=suppressions=ci-scripts/lsan.supp
autoreconf -fi
./configure --enable-debug=yes
make
make check 2>/dev/null
