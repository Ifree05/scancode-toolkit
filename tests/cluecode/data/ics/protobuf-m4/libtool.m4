# libtool.m4 - Configure libtool for the host system. -*-Autoconf-*-
#
#   Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2003, 2004, 2005,
#                 2006, 2007, 2008 Free Software Foundation, Inc.
#   Written by Gordon Matzigkeit, 1996
# modifications, as long as this notice is preserved.

m4_define([_LT_COPYING], [dnl
#   Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2003, 2004, 2005,
#                 2006, 2007, 2008 Free Software Foundation, Inc.
#   Written by Gordon Matzigkeit, 1996
m4_ifset([AC_PACKAGE_VERSION], [ AC_PACKAGE_VERSION])
configured by $[0], generated by m4_PACKAGE_STRING.

Copyright (C) 2008 Free Software Foundation, Inc.
This config.lt script is free software; the Free Software Foundation
gives unlimited permision to copy, distribute and modify it."
AC_DEFUN([LT_LANG],
[AC_BEFORE([$0], [LT_OUTPUT])dnl
m4_case([$1],
  [C],			[_LT_LANG(C)],
  [C++],		[_LT_LANG(CXX)],
  [Java],		[_LT_LANG(GCJ)],
  SAVE_CFLAGS="$CFLAGS"
  CFLAGS="$CFLAGS -belf"
  AC_CACHE_CHECK([whether the C compiler needs -belf], lt_cv_cc_needs_belf,
    [AC_LANG_PUSH(C)
     AC_LINK_IFELSE([AC_LANG_PROGRAM([[]],[[]])],[lt_cv_cc_needs_belf=yes],[lt_cv_cc_needs_belf=no])
     AC_LANG_POP])
m4_defun([_LT_LANG_C_CONFIG],
[m4_require([_LT_DECL_EGREP])dnl
lt_save_CC="$CC"
AC_LANG_PUSH(C)

# Source file extension for C test sources.