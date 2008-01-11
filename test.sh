#!/bin/sh
#
# $Id$

test -n "$CC" || \
CC="gcc"

test -n "$CPPFLAGS" || \
CPPFLAGS="-DTEST_SNPRINTF"

test -n "$LIBS" || \
LIBS="-lm"

test -n "$CFLAGS" || \
CFLAGS="-g3 -O2 -Wall -W -Wbad-function-cast -Wcast-align -Wmissing-noreturn \
	-Wnested-externs -Wpointer-arith -Wsign-compare -Wwrite-strings \
	-Werror"

$CC $CFLAGS $CPPFLAGS -o snprintf snprintf.c $LIBS && \
./snprintf
