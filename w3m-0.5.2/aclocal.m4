dnl aclocal.m4 generated automatically by aclocal 1.4-p6

dnl Copyright (C) 1994, 1995-8, 1999, 2001 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY, to the extent permitted by law; without
dnl even the implied warranty of MERCHANTABILITY or FITNESS FOR A
dnl PARTICULAR PURPOSE.

dnl w3m autoconf macros
#
# ----------------------------------------------------------------
# AC_W3M_VERSION
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_VERSION],
[AC_SUBST(CURRENT_VERSION)
 cvsver=`$AWK '\$[1] ~ /Id:/ { print \$[3]}' $srcdir/ChangeLog`
 sed -e 's/define CURRENT_VERSION "\(.*\)+cvs/define CURRENT_VERSION "\1+cvs-'$cvsver'/' $srcdir/version.c.in > version.c
 CURRENT_VERSION=`sed -n 's/.*define CURRENT_VERSION *"w3m\/\(.*\)".*$/\1/p' version.c`])
#
# ----------------------------------------------------------------
# AC_W3M_COLOR
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_COLOR],
[AC_SUBST(USE_COLOR)
AC_MSG_CHECKING(if color escape sequence for kterm/pxvt is enabled)
AC_ARG_ENABLE(color,
 [  --disable-color		disable color for vt100 terminal],,
 [enable_color="yes"])
test x"$enable_color" = xyes && AC_DEFINE(USE_COLOR)
AC_MSG_RESULT($enable_color)])
#
# ----------------------------------------------------------------
# AC_W3M_ANSI_COLOR
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_ANSI_COLOR],
[AC_SUBST(USE_ANSI_COLOR)
AC_MSG_CHECKING(if ansi color escape sequence support is enabled)
AC_ARG_ENABLE(ansi_color,
 [   --disable-ansi-color		disable ansi color escape sequence],,
 [enable_ansi_color="$enable_color"])
 test x"$enable_ansi_color" = xyes && AC_DEFINE(USE_ANSI_COLOR)
 AC_MSG_RESULT($enable_ansi_color)])
#
# ----------------------------------------------------------------
# AC_W3M_BG_COLOR
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_BG_COLOR],
[AC_SUBST(USE_BG_COLOR)
AC_MSG_CHECKING(if background color support is enabled)
AC_ARG_ENABLE(bgcolor,
 [   --disable-bgcolor		disable to set background color],,
 [enable_bgcolor="$enable_color"])
 test x"$enable_bgcolor" = xyes && AC_DEFINE(USE_BG_COLOR)
AC_MSG_RESULT($enable_bgcolor)])
#
# ----------------------------------------------------------------
# AC_W3M_MENU
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_MENU],
[AC_SUBST(USE_MENU)
AC_MSG_CHECKING(if popup menu is enabled)
AC_ARG_ENABLE(menu,
 [  --disable-menu		disable popup menu],,
 [enable_menu="yes"])
 test x"$enable_menu" = xyes && AC_DEFINE(USE_MENU)
 AC_MSG_RESULT($enable_menu)])
#
# ----------------------------------------------------------------
# AC_W3M_MOUSE
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_MOUSE],
[AC_SUBST(USE_MOUSE)
AC_MSG_CHECKING(if mouse operation enabled)
AC_ARG_ENABLE(mouse,
 [  --disable-mouse		disable mouse operation],,
 [enable_mouse="yes"])
test x"$enable_mouse" = xyes && AC_DEFINE(USE_MOUSE)
AC_MSG_RESULT($enable_mouse)])
#
# ----------------------------------------------------------------
# AC_W3M_COOKIE
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_COOKIE],
[AC_SUBST(USE_COOKIE)
AC_MSG_CHECKING(if cookie is enabled)
AC_ARG_ENABLE(cookie,
 [  --disable-cookie		disable cookie],,
 [enable_cookie="yes"])
test x"$enable_cookie" = xyes && AC_DEFINE(USE_COOKIE)
AC_MSG_RESULT($enable_cookie)])
#
# ----------------------------------------------------------------
# AC_W3M_DICT
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_DICT],
[AC_SUBST(USE_DICT)
AC_MSG_CHECKING(if dictionary lookup is enabled)
AC_ARG_ENABLE(dict,
 [  --disable-dict		disable dictionary lookup (see README.dict)],,
 [enable_dict="yes"])
 test x"$enable_dict" = xyes && AC_DEFINE(USE_DICT)
 AC_MSG_RESULT($enable_dict)])
#
# ----------------------------------------------------------------
# AC_W3M_HISTORY
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_HISTORY],
[AC_SUBST(USE_HISTORY)
AC_MSG_CHECKING(if URL history is enabled)
AC_ARG_ENABLE(history,
 [  --disable-history		disable URL history],,
 [enable_history="yes"])
 test x"$enable_history" = xyes && AC_DEFINE(USE_HISTORY)
 AC_MSG_RESULT($enable_history)])
#
# ----------------------------------------------------------------
# AC_W3M_NNTP
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_NNTP],
[AC_SUBST(USE_NNTP)
 AC_MSG_CHECKING(if nntp is enabled)
 AC_ARG_ENABLE(nntp,
  [  --disable-nntp		disable NNTP],,
  [enable_nntp="yes"])
 test x"$enable_nntp" = xyes && AC_DEFINE(USE_NNTP)
 AC_MSG_RESULT($enable_nntp)])
# 
# ----------------------------------------------------------------
# AC_W3M_GOPHER
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_GOPHER],
[AC_SUBST(USE_GOPHER)
 AC_MSG_CHECKING(if gopher is enabled)
 AC_ARG_ENABLE(gopher,
  [  --enable-gopher		enable GOPHER],,
  [enable_gopher="no"])
 test x"$enable_gopher" = xyes &&  AC_DEFINE(USE_GOPHER)
 AC_MSG_RESULT($enable_gopher)])
#
# ----------------------------------------------------------------
# AC_W3M_M17N
# ----------------------------------------------------------------
# m17n enable?
AC_DEFUN([AC_W3M_M17N],
[AC_SUBST(USE_M17N)
AC_SUBST(USE_UNICODE)
AC_SUBST(WCTARGET)
AC_SUBST(WCCFLAGS)
AC_SUBST(DISPLAY_CHARSET)
AC_SUBST(SYSTEM_CHARSET)
AC_SUBST(DOCUMENT_CHARSET)
AC_SUBST(POSUBST)
AC_SUBST(POLANG)
WCTARGET=""; WCCFLAGS=""; wcinclude=""; wclib=""
AC_MSG_CHECKING(if m17n support is enabled)
AC_ARG_ENABLE(m17n,
 [  --disable-m17n		do not use m17n],,
 [enable_m17n="yes"])
AC_MSG_RESULT($enable_m17n)
if test x"$enable_m17n" = xno; then
  w3m_lang="en"
  WCTARGET=""
  WCCFLAGS=""
  wcinclude=""
  wclib=""
  display_charset='WC_CES_US_ASCII'
  system_charset='WC_CES_US_ASCII'
  document_charset='WC_CES_US_ASCII'
else
 AC_DEFINE(USE_M17N)
 WCTARGET="libwc/libwc.a"
 WCCFLAGS='-I$(srcdir) -I$(srcdir)/..'
 wcinclude='-I$(srcdir)/libwc'
 wclib="-L./libwc -lwc"
 AC_MSG_CHECKING(if unicode support is enabled)
 AC_ARG_ENABLE(unicode,
  [   --disable-unicode		do not use unicode],,
  [enable_unicode="yes"])
 AC_MSG_RESULT($enable_unicode)
 if test x"$enable_m17n" = xyes; then
  charset=US-ASCII
 else
  charset=$enable_m17n
 fi
 if test x"$enable_unicode" = xyes; then
    WCCFLAGS="-DUSE_UNICODE $WCCFLAGS"
    if test x"$charset" = xUS-ASCII; then
     charset=UTF-8
    fi
    AC_DEFINE(USE_UNICODE)
 fi
 AC_MSG_CHECKING(if message l10n)
 AC_ARG_ENABLE(messagel10n,
   [   --enable-messagel10n=LL	message l10n instead of NLS],,
   [enable_messagel10n="no"])
 if test x$enable_messagel10n = xyes; then
  enable_messagel10n="ja";
 fi
 AC_MSG_RESULT($enable_messagel10n)
 if test x$enable_messagel10n = xno; then
    :
 else
    POSUBST="\$(top_srcdir)/posubst"
    POLANG="$enable_messagel10n"
 fi
 AC_MSG_CHECKING(if japanese support is enabled)
 AC_ARG_ENABLE(japanese,
   [   --enable-japanese=CODE	support Japanese CODE=(S|E|J|U)],,
   [enable_japanese="no"])
 AC_MSG_RESULT($enable_japanese)
 if test x"$enable_japanese" = xno; then
   w3m_lang="en"
 else
   w3m_lang="ja"
   case "$enable_japanese" in
   E*) charset=EUC-JP;;
   S*) charset=Shift_JIS;;
   J*) charset=ISO-2022-JP;;
   U*) charset=UTF-8;;
   esac 
 fi
 display_charset=$charset
 AC_MSG_CHECKING(which charset is used for display)
 AC_ARG_WITH(charset,
  [  --with-charset=CHARSET],
  [test x"with_charset" = xyes || display_charset="$with_charset"])
 AC_MSG_RESULT($display_charset)
 display_charset=`awk '$[1] == "'$display_charset'" {print $[2]}' $srcdir/charset-list`
 case "$display_charset" in
   WC_CES_ISO_2022_JP*)
     system_charset=WC_CES_EUC_JP
     document_charset=WC_CES_EUC_JP
     ;;
   WC_CES_SHIFT_JIS)
     system_charset=$display_charset
     # for auto-detect
     document_charset=WC_CES_EUC_JP
     ;;
   WC_CES_ISO_2022_CN|WC_CES_HZ_GB_2312)
     system_charset=WC_CES_EUC_CN
     document_charset=WC_CES_EUC_CN
     ;;
   WC_CES_BIG5)
     system_charset=$display_charset
     # for auto-detect
     document_charset=WC_CES_EUC_TW
     ;;
  WC_CES_ISO_2022_KR)
     system_charset=WC_CES_EUC_KR
     document_charset=WC_CES_EUC_KR
     ;;
  *)
     system_charset=$display_charset
     document_charset=$display_charset
     ;;
 esac
fi
W3M_LANGDEF=`echo $w3m_lang | tr 'a-z' 'A-Z'`
W3M_LANG=$W3M_LANGDEF
AC_DEFINE_UNQUOTED(W3M_LANG, $W3M_LANG)
AC_DEFINE_UNQUOTED(WCTARGET, "$WCTARGET")
AC_DEFINE_UNQUOTED(WCCFLAGS, "$WCCFLAGS")
CFLAGS="$CFLAGS $wcinclude"
W3M_LIBS="$W3M_LIBS $wclib"
AC_DEFINE_UNQUOTED(DISPLAY_CHARSET, $display_charset)
AC_DEFINE_UNQUOTED(SYSTEM_CHARSET, $system_charset)
AC_DEFINE_UNQUOTED(DOCUMENT_CHARSET, $document_charset)])
#
# ----------------------------------------------------------------
# AC_W3M_KEYMAP
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_KEYMAP],
[AC_SUBST(KEYMAP_FILE)
 AC_MSG_CHECKING(default keymap)
 AC_ARG_ENABLE(keymap,
  [  --enable-keymap[=w3m|lynx]	default keybind style(w3m or lynx)],,
  [enable_keymap="w3m"])
 AC_MSG_RESULT($enable_keymap)
 case x"$enable_keymap" in
 xw3m)
  KEYMAP_FILE="keybind";;
 xlynx)
  KEYMAP_FILE="keybind_lynx";;
 *)
  AC_MSG_ERROR([keymap should be either w3m or lynx.]);;
 esac
 AC_SUBST(HELP_FILE)
 HELP_FILE=w3mhelp-${enable_keymap}_$w3m_lang.html
 AC_DEFINE_UNQUOTED(HELP_FILE, "$HELP_FILE")
 AC_SUBST(KEYBIND)
 AC_DEFINE_UNQUOTED(KEYBIND, $enable_keymap)])
#
# ----------------------------------------------------------------
# AC_W3M_MIGEMO
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_MIGEMO],
[AC_SUBST(USE_MIGEMO)
 AC_SUBST(DEF_MIGEMO_COMMAND)
 migemo_command="migemo -t egrep /usr/local/share/migemo/migemo-dict"
 AC_MSG_CHECKING(if migemo is supported with)
 AC_ARG_WITH(migemo,
  [  --with-migemo=MIGEMO_COMMAND	migemo command],
  [test x"$with_migemo" = xyes || migemo_command="$with_migemo"])
 if test "${with_migemo+set}" = set -a "$with_migemo" != "no"; then
   AC_DEFINE(USE_MIGEMO)
 fi
 AC_MSG_RESULT($migemo_command)
 AC_DEFINE_UNQUOTED(DEF_MIGEMO_COMMAND, "$migemo_command")])
#
# ----------------------------------------------------------------
# AC_W3M_EDITOR
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_EDITOR],
[AC_SUBST(DEF_EDITOR)
w3m_editor="/usr/bin/vi"
AC_MSG_CHECKING(which editor is used by default)
AC_ARG_WITH(editor,
 [  --with-editor=EDITOR		default editor (/usr/bin/vi)],
 [w3m_editor="$with_editor"])
AC_MSG_RESULT($w3m_editor)
AC_DEFINE_UNQUOTED(DEF_EDITOR, "$w3m_editor")])
#
# ----------------------------------------------------------------
# AC_W3M_MAILER
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_MAILER],
[AC_SUBST(DEF_MAILER)
w3m_mailer="/usr/bin/mail"
AC_MSG_CHECKING(which mailer is used by default)
AC_ARG_WITH(mailer,
 [  --with-mailer=MAILER		default mailer (/usr/bin/mail)],
 [w3m_mailer="$with_mailer"])
AC_MSG_RESULT($w3m_mailer)
AC_DEFINE_UNQUOTED(DEF_MAILER, "$w3m_mailer")])
#
# ----------------------------------------------------------------
# AC_W3M_EXT_BROWSER
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_EXT_BROWSER],
[AC_SUBST(DEF_EXT_BROWSER)
w3m_browser="/usr/bin/mozilla"
AC_MSG_CHECKING(which external browser is used by default)
AC_ARG_WITH(browser,
 [  --with-browser=BROWSER	default browser (/usr/bin/mozilla)],
 [w3m_browser="$with_browser"])
AC_MSG_RESULT($w3m_browser)
AC_DEFINE_UNQUOTED(DEF_EXT_BROWSER, "$w3m_browser")])
#
# ----------------------------------------------------------------
# AC_W3M_HELP_CGI
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_HELP_CGI],
[AC_SUBST(USE_HELP_CGI)
 AC_MSG_CHECKING(if help cgi is enabled)
 AC_ARG_ENABLE(help_cgi,
  [  --disable-help-cgi		disable help cgi],,
  [enable_help_cgi="yes"])
 test x"$enable_help_cgi" = xyes && AC_DEFINE(USE_HELP_CGI)
 AC_MSG_RESULT($enable_help_cgi)])
# 
# ----------------------------------------------------------------
# AC_W3M_EXTERNAL_URI_LOADER
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_EXTERNAL_URI_LOADER],
[AC_SUBST(USE_EXTERNAL_URI_LOADER)
 AC_MSG_CHECKING(if external URI loader is enabled)
 AC_ARG_ENABLE(external_uri_loader,
 [  --disable-external-uri-loader	disable external URI loader],,
 [enable_external_uri_loader="yes"])
 test x"$enable_external_uri_loader" = xyes && AC_DEFINE(USE_EXTERNAL_URI_LOADER)
 AC_MSG_RESULT($enable_external_uri_loader)])
# 
# ----------------------------------------------------------------
# AC_W3M_W3MMAILER
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_W3MMAILER],
[AC_SUBST(USE_W3MMAILER)
 AC_MSG_CHECKING(if w3mmail is used)
 AC_ARG_ENABLE(w3mmailer,
 [   --disable-w3mmailer		disable w3mmailer],,
 [enable_w3mmailer="$enable_external_uri_loader"])
 test x"$enable_external_uri_loader" = xno && enable_w3mmailer=no
 test x"$enable_w3mmailer" = xyes && AC_DEFINE(USE_W3MMAILER)
 AC_MSG_RESULT($enable_w3mmailer)])
#
# ----------------------------------------------------------------
# AC_W3M_EXTLIBS(libs)
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_EXTLIBS],
[lib=$1
 AC_MSG_CHECKING(for -l$lib)
 extlib="not found"
 for dir in /lib /usr/lib /usr/local/lib /usr/ucblib /usr/ccslib /usr/ccs/lib
 do
   if test -f $dir/lib$lib.a -o -f $dir/lib$lib.so ; then 
    LIBS="$LIBS -l$lib"
    extlib="found at $dir"
    break
   fi
 done
 AC_MSG_RESULT($extlib)])
#
# ----------------------------------------------------------------
# AC_W3M_TERMLIB
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_TERMLIB],
[AC_MSG_CHECKING(terminal library)
AC_ARG_WITH(termlib,
 [  --with-termlib[=LIBS]		terminal library
				LIBS is space separated list of:
				  terminfo mytinfo termcap ncurses curses],,
 [with_termlib="yes"])
 AC_MSG_RESULT($with_termlib)
 test x"$with_termlib" = xyes && with_termlib="terminfo mytinfo termlib termcap ncurses curses"
 for lib in $with_termlib; do
   AC_CHECK_LIB($lib, tgetent, [W3M_LIBS="$W3M_LIBS -l$lib"; break])
 done
])
#
# ----------------------------------------------------------------
# AC_W3M_GC
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_GC],
[AC_MSG_CHECKING(GC library exists)
AC_SUBST(LIBGC)
AC_ARG_WITH(gc,
 [  --with-gc[=PREFIX]	  	libgc PREFIX],
 [test x"$with_gc" = xno && AC_MSG_ERROR([You can not build w3m without gc])],
 [with_gc="yes"])
 AC_MSG_RESULT($with_gc)
 test x"$with_gc" = xyes && with_gc="/usr /usr/local ${HOME}"
 unset ac_cv_header_gc_h
 AC_CHECK_HEADER(gc.h)
 if test x"$ac_cv_header_gc_h" = xno; then
   AC_MSG_CHECKING(GC header location)
   AC_MSG_RESULT($with_gc)
   gcincludedir=no
   for dir in $with_gc; do
     for inc in include include/gc; do
       cppflags="$CPPFLAGS"
       CPPFLAGS="$CPPFLAGS -I$dir/$inc"
       AC_MSG_CHECKING($dir/$inc)
       unset ac_cv_header_gc_h
       AC_CHECK_HEADER(gc.h, [gcincludedir="$dir/$inc"; CFLAGS="$CFLAGS -I$dir/$inc"; break])
       CPPFLAGS="$cppflags"
     done
     if test x"$gcincludedir" != xno; then
       break;
     fi
   done
   if test x"$gcincludedir" = xno; then
     AC_MSG_ERROR([gc.h not found])
   fi
 fi
 unset ac_cv_lib_gc_GC_init
 AC_CHECK_LIB(gc, GC_init, [LIBGC="-lgc"])
 if test x"$ac_cv_lib_gc_GC_init" = xno; then
    AC_MSG_CHECKING(GC library location)
    AC_MSG_RESULT($with_gc)
    gclibdir=no
    for dir in $with_gc; do
      ldflags="$LDFLAGS"
      LDFLAGS="$LDFLAGS -L$dir/lib"
      AC_MSG_CHECKING($dir)
      unset ac_cv_lib_gc_GC_init
      AC_CHECK_LIB(gc, GC_init, [gclibdir="$dir/lib"; LIBGC="-L$dir/lib -lgc"; break])
      LDFLAGS="$ldflags"
    done
    if test x"$gclibdir" = xno; then
      AC_MSG_ERROR([libgc not found])
    fi
 fi])
#
# ----------------------------------------------------------------
# AC_W3M_SSL_DIGEST_AUTH
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_SSL_DIGEST_AUTH],
[AC_SUBST(USE_SSL)
AC_SUBST(USE_SSL_VERIFY)
AC_MSG_CHECKING(if SSL is suported)
AC_ARG_WITH(ssl,
 [  --with-ssl[=PREFIX]		support https protocol],,
 [with_ssl="yes"])
AC_MSG_RESULT($with_ssl)
if test x"$with_ssl" != xno; then
  PKG_CHECK_MODULES(SSL, openssl,,[
    AC_MSG_CHECKING(for SSL library/header)
    test x"$with_ssl" = xyes && with_ssl="/usr/openssl /usr/ssl /usr /usr/local/openssl /usr/local/ssl /usr/local"
    AC_MSG_RESULT($with_ssl)
    for dir in $with_ssl
    do
       if test -f "$dir/include/openssl/ssl.h"; then
          SSL_CFLAGS="$SSL_CFLAGS -I$dir/include/openssl"
          if test "$dir" != "/usr"; then
             SSL_CFLAGS="$SSL_CFLAGS -I$dir/include"
          fi
       elif test "$dir" != "/usr" -a -f "$dir/include/ssl.h"; then
          SSL_CFLAGS="$SSL_CFLAGS -I$dir/include"
       fi
       if test "$dir" != "/usr" -a -f "$dir/lib/libssl.a"; then
	  SSL_LIBS="$SSL_LIBS -L$dir/lib"
       fi
    done
  ])
  AC_CHECK_LIB(ssl, SSL_new,
	[w3m_ssl="found"; CFLAGS="$CFLAGS $SSL_CFLAGS" W3M_LIBS="$W3M_LIBS $SSL_LIBS -lssl -lcrypto"],
	[w3m_ssl="not found"],
	[$SSL_LIBS -lcrypto])

  if test x"$w3m_ssl" = xfound; then
    AC_DEFINE(USE_SSL)
    AC_MSG_CHECKING(if SSL certificate verify is enabled)
    AC_ARG_ENABLE(sslverify,
      [   --disable-sslverify		verify SSL certificate],,
      [enable_sslverify="yes"])
    test x"$enable_sslverify" = xyes && AC_DEFINE(USE_SSL_VERIFY)
    AC_MSG_RESULT($enable_sslverify)
  fi
fi
AC_SUBST(USE_DIGEST_AUTH)
AC_MSG_CHECKING(if digest auth is enabled)
AC_ARG_ENABLE(digest_auth,
 [  --disable-digest-auth		disable digest auth],,
 [enable_digest_auth="yes"])
if test x"$enable_digest_auth" = xyes -a x"$w3m_ssl" = xfound; then
  AC_DEFINE(USE_DIGEST_AUTH)
else
  enable_digest_auth="no"
fi
AC_MSG_RESULT($enable_digest_auth)
])
#
# ----------------------------------------------------------------
# AC_W3M_ALARM
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_ALARM],
[AC_SUBST(USE_ALARM)
 AC_MSG_CHECKING(if alarm is enabled)
 AC_ARG_ENABLE(alarm,
 [  --disable-alarm		disable alarm],,
 [enable_alarm="yes"])
 AC_MSG_RESULT($enable_alarm)
 if test x"$enable_alarm" = xyes; then
   AC_TRY_COMPILE(
    [#include <unistd.h>
#include <signal.h>],
    [int sa = SIGALRM;
     void (*a) = alarm;],
   [AC_DEFINE(USE_ALARM)])
 fi])
#
# ----------------------------------------------------------------
# AC_W3M_CHECK_VER(name, version, major, minor, micro, 
#		action-if-ok, message-if-badver, action-if-nover)
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_CHECK_VER],
[version="$2"
 if test x"$version" != x; then
   AC_MSG_CHECKING($1 version)
   AC_MSG_RESULT($version)
   set -- `echo "$version" | sed 's/[[^0-9]]/ /g'`
   if test "$[1]" -ne "$3" -o "$[2]" -lt "$4" || test "$[2]" -eq "$4" -a "$[3]" -lt "$5"; then
     AC_MSG_WARN([$1 is too old. Install $1 (version >= $3.$4.$5)])
     $7
   else
     $6
   fi
 else
   AC_MSG_WARN([$1 is not installed.  Install $1 (version >= $3.$4.$5)])
   $7
 fi])
#
# ----------------------------------------------------------------
# AC_W3M_IMAGE
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_IMAGE],
[AC_SUBST(USE_IMAGE)
 AC_SUBST(USE_W3MIMG_X11)
 AC_SUBST(USE_W3MIMG_FB)
 AC_SUBST(W3MIMGDISPLAY_SETUID)
 AC_SUBST(INSTALL_W3MIMGDISPLAY)
 INSTALL_W3MIMGDISPLAY='${INSTALL_PROGRAM}'
 AC_DEFINE(INSTALL_W3MIMGDISPLAY, $INSTALL_W3MIMGDISPLAY)
 AC_SUBST(USE_GDKPIXBUF)
 AC_SUBST(USE_GTK2)
 AC_SUBST(USE_IMLIB)
 AC_SUBST(USE_IMLIB2)
 AC_SUBST(IMGTARGETS)
 AC_SUBST(IMGOBJS)
 AC_SUBST(IMGX11CFLAGS)
 AC_SUBST(IMGX11LDFLAGS)
 AC_SUBST(IMGFBCFLAGS)
 AC_SUBST(IMGFBLDFLAGS)
 AC_MSG_CHECKING(if image is enabled)
 AC_ARG_ENABLE(image,
 [  --enable-image[=DEVS]		enable inline image handler for DEVS
				 DEVS may be comma separeted: x11,fb,fb+s
				 default: autodetected.
				 'no' means disable inline image],,
 [enable_image="yes"])
 AC_MSG_RESULT($enable_image)
 if test x"$enable_image" != xno; then
  IMGOBJS=w3mimg.o
  if test x"$enable_image" = xyes; then
    enable_image=x11
    case "`uname -s`" in
    Linux|linux|LINUX) 
	if test -c /dev/fb0; then
	  enable_image=x11,fb
        fi;;
    esac
  fi   
  save_ifs="$IFS"; IFS=",";
  for img in $enable_image; do
    case $img in
      x11) x11=yes;;
      fb)  fb=yes;;
      fb+s) fb=yes
           AC_DEFINE(W3MIMGDISPLAY_SETUID)
           INSTALL_W3MIMGDISPLAY='${INSTALL} -o root -m 4755 -s'
           AC_DEFINE(INSTALL_W3MIMGDISPLAY, $INSTALL_W3MIMGDISPLAY);;
    esac
  done
  IFS="$save_ifs"
  enable_image=yes
  AC_DEFINE(USE_IMAGE)
  AC_MSG_CHECKING(image library)
  AC_ARG_WITH(imagelib,
   [  --with-imagelib=IMAGELIBS		image library
				 IMAGELIBS may be space separeted list of: 
				    gtk2 gdk-pixbuf imlib imlib2],,

   [with_imagelib="yes"])
  if test x"$with_imagelib" = xyes; then
    with_imagelib="gtk2 gdk-pixbuf imlib imlib2"
  fi
  AC_MSG_RESULT($with_imagelib)
  with_imlib=no
  with_imlib2=no
  with_gdkpixbuf=no
  with_gtk2=no
  for imagelib in $with_imagelib
  do
   case "$imagelib" in
   imlib)
     with_imlib="yes"
     if test x"$IMLIB_CONFIG" = x; then
       IMLIB_CONFIG=imlib-config
     fi;;
   imlib2)
     with_imlib2="yes"
     if test x"$IMLIB2_CONFIG" = x; then
       IMLIB2_CONFIG=imlib2-config
     fi;;
   gdk-pixbuf)
     with_gdkpixbuf="yes"
     if test x"$GDKPIXBUF_CONFIG" = x; then
       GDKPIXBUF_CONFIG=gdk-pixbuf-config
     fi;;
   gtk2)
     with_gtk2="yes"
     if test x"$PKG_CONFIG" = x; then
       PKG_CONFIG=pkg-config
     else
       PKG_CONFIG=:
     fi;;
   esac
  done
  IMGTARGETS=""
  if test x"$with_gtk2" = xyes; then
   AC_W3M_CHECK_VER([GdkPixbuf],
	[`$PKG_CONFIG --modversion gdk-pixbuf-2.0 2>/dev/null`],
	2, 0, 0,
	[have_gdkpixbuf="yes"; have_gtk2="yes"],
	[have_gdkpixbuf="no"; have_gtk2="no"])
  fi
  if test x"$with_gdkpixbuf" = xyes; then
   if test x"$have_gdkpixbuf" != xyes; then
    AC_W3M_CHECK_VER([GdkPixbuf],
	[`$GDKPIXBUF_CONFIG --version 2>/dev/null`],
	0, 16, 0,
	[have_gdkpixbuf="yes"],
	[have_gdkpixbuf="no"])
   fi
  fi
  if test x"$with_imlib" = xyes; then
   AC_W3M_CHECK_VER([Imlib],
	[`$IMLIB_CONFIG --version 2>/dev/null`],
	1, 9, 8,
	[have_imlib="yes"],
	[have_imlib="no"])
  fi
  if test x"$with_imlib2" = xyes; then
   AC_W3M_CHECK_VER([Imlib2],
	[`$IMLIB2_CONFIG --version 2>/dev/null`],
	1, 0, 5,
	[have_imlib2="yes"],
	[have_imlib2="no"])
  fi
  if test x"$x11" = xyes; then
   if test x"$have_gtk2" = xyes; then
     AC_DEFINE(USE_W3MIMG_X11)
     IMGOBJS="$IMGOBJS x11/x11_w3mimg.o"
     IMGTARGETS="x11"    
     AC_DEFINE(USE_GDKPIXBUF)
     AC_DEFINE(USE_GTK2)
     IMGX11CFLAGS="`${PKG_CONFIG} --cflags gdk-pixbuf-2.0 gdk-pixbuf-xlib-2.0 gtk+-2.0`"
     IMGX11LDFLAGS="`${PKG_CONFIG} --libs gdk-pixbuf-2.0 gdk-pixbuf-xlib-2.0 gtk+-2.0`"
   elif test x"$have_gdkpixbuf" = xyes; then
     AC_DEFINE(USE_W3MIMG_X11)
     IMGOBJS="$IMGOBJS x11/x11_w3mimg.o"
     IMGTARGETS="x11"    
     AC_DEFINE(USE_GDKPIXBUF)
     IMGX11CFLAGS="`${GDKPIXBUF_CONFIG} --cflags`"
     IMGX11LDFLAGS="`${GDKPIXBUF_CONFIG} --libs` -lgdk_pixbuf_xlib"
   elif test x"$have_imlib" = xyes; then
     AC_DEFINE(USE_W3MIMG_X11)
     IMGOBJS="$IMGOBJS x11/x11_w3mimg.o"
     IMGTARGETS="x11"    
     AC_DEFINE(USE_IMLIB)
     IMGX11CFLAGS="`${IMLIB_CONFIG} --cflags`"
     IMGX11LDFLAGS="`${IMLIB_CONFIG} --libs`"
     IMGTARGETS="x11"    
   elif test x"$have_imlib2" = xyes; then
     AC_DEFINE(USE_W3MIMG_X11)
     IMGOBJS="$IMGOBJS x11/x11_w3mimg.o"
     IMGTARGETS="x11"    
     AC_DEFINE(USE_IMLIB2)
     IMGX11CFLAGS="`${IMLIB2_CONFIG} --cflags`"
     IMGX11LDFLAGS="`${IMLIB2_CONFIG} --libs`"
   else
     AC_MSG_WARN([unable to build w3mimgdisplay with X11 support])
   fi
  fi
  if test x"$fb" = xyes; then
   if test x"$have_gtk2" = xyes; then
     AC_DEFINE(USE_W3MIMG_FB)
     IMGOBJS="$IMGOBJS fb/fb_w3mimg.o fb/fb.o fb/fb_img.o"
     IMGTARGETS="${IMGTARGETS} fb"
     AC_DEFINE(USE_GDKPIXBUF)
     AC_DEFINE(USE_GTK2)
     IMGFBCFLAGS="`${PKG_CONFIG} --cflags gdk-pixbuf-2.0 gtk+-2.0`"
     IMGFBLDFLAGS="`${PKG_CONFIG} --libs gdk-pixbuf-2.0 gtk+-2.0`"
   elif test x"$have_gdkpixbuf" = xyes; then
     AC_DEFINE(USE_W3MIMG_FB)
     IMGOBJS="$IMGOBJS fb/fb_w3mimg.o fb/fb.o fb/fb_img.o"
     IMGTARGETS="${IMGTARGETS} fb"
     AC_DEFINE(USE_GDKPIXBUF)
     IMGFBCFLAGS="`${GDKPIXBUF_CONFIG} --cflags`"
     IMGFBLDFLAGS="`${GDKPIXBUF_CONFIG} --libs`"
   elif test x"$have_imlib2" = xyes; then
     AC_DEFINE(USE_W3MIMG_FB)
     IMGOBJS="$IMGOBJS fb/fb_w3mimg.o fb/fb.o fb/fb_img.o"
     IMGTARGETS="${IMGTARGETS} fb"
     AC_DEFINE(USE_IMLIB2)
     IMGOBJS="$IMGOBJS fb/fb_w3mimg.o fb/fb.o fb/fb_img.o"
     IMGFBCFLAGS="`${IMLIB2_CONFIG} --cflags`"
     IMGFBLDFLAGS="`${IMLIB2_CONFIG} --libs`"
   else
     AC_MSG_WARN([unable to build w3mimgdisplay with FB support])
   fi
  fi
  AC_DEFINE(IMGTARGETS, "$IMGTARGETS")
  AC_DEFINE(IMGOBJS, "$IMGOBJS")
  AC_DEFINE(IMGX11CFLAGS, "$IMGX11CFLAGS")
  AC_DEFINE(IMGX11LDFLAGS, "$IMGX11LDFLAGS")
  AC_DEFINE(IMGFBCFLAGS, "$IMGFBCFLAGS")
  AC_DEFINE(IMGFBLDFLAGS, "$IMGLDFLAGS")
 fi])
# ----------------------------------------------------------------
# AC_W3M_XFACE
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_XFACE],
[AC_SUBST(USE_XFACE)
 AC_MSG_CHECKING(if xface is enabled)
 AC_ARG_ENABLE(xface,
  [   --disable-xface		disable xface support],,
  [enable_xface="$enable_image"])
 test x"$enable_xface" = xyes && AC_DEFINE(USE_XFACE)
 AC_MSG_RESULT($enable_xface)
 AC_CHECK_PROG(uncompface, uncompface, "yes", "no")
 test "$uncompface" = "no" && AC_MSG_WARN([uncompface is not installed.])
])
#
# ----------------------------------------------------------------
# AC_W3M_IPv6
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_IPv6],
[AC_MSG_CHECKING(if IPv6 support is enabled)
AC_ARG_ENABLE(ipv6,
 [  --disable-ipv6		disable IPv6],,
 [enable_ipv6="yes"])
AC_MSG_RESULT($enable_ipv6)

if test x"$enable_ipv6" = xyes; then
 AC_MSG_CHECKING(if IPv6 API available)
 AC_SUBST(INET6)
 AC_CHECK_FUNC(getaddrinfo, 
	[enable_ipv6="yes"],
	[enable_ipv6="no"])
 if test x"$enable_ipv6" = xno; then
    AC_MSG_CHECKING(for libinet6)
    for dir in /usr/local/v6/lib /usr/local/lib /usr/lib
    do
	if test -f $dir/libinet6.a; then
	  if test $dir != "/usr/lib"; then
		W3M_LIBS="$W3M_LIBS -L$dir"
	  fi
	  AC_CHECK_LIB(inet6, getaddrinfo,
		[enable_ipv6="yes"
	         use_libinet6="found"; W3M_LIBS="$W3M_LIBS -linet6"; break],
		[use_libinet6="not found"])
	fi
    done
    AC_MSG_RESULT($use_libinet6)
 fi
 if test x"$enable_ipv6" = xyes; then
    AC_SUBST(HAVE_OLD_SS_FAMILY)
    AC_MSG_CHECKING(if struct sockaddr_storage has an ss_family member)
    AC_TRY_COMPILE([
#include <sys/types.h>
#include <sys/socket.h>
      ], [
	struct sockaddr_storage ss;
	int i = ss.ss_family;
      ],
      [AC_MSG_RESULT(yes)],
      [AC_TRY_COMPILE([
#include <sys/types.h>
#include <sys/socket.h>
	],
	[
	struct sockaddr_storage ss;
	int i = ss.__ss_family;
	],
	[AC_MSG_RESULT(no, but __ss_family exists)
	 AC_DEFINE(HAVE_OLD_SS_FAMILY)],
	[AC_MSG_RESULT(no)
	 AC_MSG_WARN(IPv6 support is disabled)
	 enable_ipv6="no"])
      ])
 fi
 if test x"$enable_ipv6" = xyes; then
    AC_DEFINE(INET6)
 fi
fi])
#
# ----------------------------------------------------------------
# AC_W3M_SYS_ERRLIST
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_SYS_ERRLIST],
[AC_SUBST(HAVE_SYS_ERRLIST)
AC_MSG_CHECKING(for sys_errlist)
AC_TRY_COMPILE(
changequote(<<,>>)dnl
<<extern char *sys_errlist[];>>,
<<printf(sys_errlist[0]);>>,
changequote([,])dnl
[have_sys_errlist="yes"; AC_DEFINE(HAVE_SYS_ERRLIST)],
[have_sys_errlist="no"])
AC_MSG_RESULT($have_sys_errlist)])
#
# ----------------------------------------------------------------
# AC_W3M_SIGSETJMP
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_SIGSETJMP],
[AC_SUBST(HAVE_SIGSETJMP)
AC_MSG_CHECKING(for sigsetjmp)
AC_TRY_COMPILE(
[#include <setjmp.h>],
[ jmp_buf env;
   if (sigsetjmp(env, 1) != 0) { exit(0); } siglongjmp(env, 1);],
[have_sigsetjmp="yes"; AC_DEFINE(HAVE_SIGSETJMP)],
[have_sigsetjmp="no"])
AC_MSG_RESULT($have_sigsetjmp)])
#
# ----------------------------------------------------------------
# AC_W3M_SIGNAL_RETURN
# ----------------------------------------------------------------
AC_DEFUN([AC_W3M_SIGNAL],
[AC_TYPE_SIGNAL
 AC_SUBST(RETSIGTYPE)
 AC_SUBST(SIGNAL_RETURN)
 if test x"$ac_cv_type_signal" = xvoid; then
  AC_DEFINE(SIGNAL_RETURN,return)
 else
  AC_DEFINE(SIGNAL_RETURN,return 0)
 fi])

# lib-prefix.m4 serial 3 (gettext-0.13)
dnl Copyright (C) 2001-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

dnl AC_LIB_ARG_WITH is synonymous to AC_ARG_WITH in autoconf-2.13, and
dnl similar to AC_ARG_WITH in autoconf 2.52...2.57 except that is doesn't
dnl require excessive bracketing.
ifdef([AC_HELP_STRING],
[AC_DEFUN([AC_LIB_ARG_WITH], [AC_ARG_WITH([$1],[[$2]],[$3],[$4])])],
[AC_DEFUN([AC_][LIB_ARG_WITH], [AC_ARG_WITH([$1],[$2],[$3],[$4])])])

dnl AC_LIB_PREFIX adds to the CPPFLAGS and LDFLAGS the flags that are needed
dnl to access previously installed libraries. The basic assumption is that
dnl a user will want packages to use other packages he previously installed
dnl with the same --prefix option.
dnl This macro is not needed if only AC_LIB_LINKFLAGS is used to locate
dnl libraries, but is otherwise very convenient.
AC_DEFUN([AC_LIB_PREFIX],
[
  AC_BEFORE([$0], [AC_LIB_LINKFLAGS])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib-prefix],
[  --with-lib-prefix[=DIR] search for libraries in DIR/include and DIR/lib
  --without-lib-prefix    don't search for libraries in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  if test $use_additional = yes; then
    dnl Potentially add $additional_includedir to $CPPFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/include,
    dnl   2. if it's already present in $CPPFLAGS,
    dnl   3. if it's /usr/local/include and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_includedir" != "X/usr/include"; then
      haveit=
      for x in $CPPFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-I$additional_includedir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_includedir" = "X/usr/local/include"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_includedir"; then
            dnl Really add $additional_includedir to $CPPFLAGS.
            CPPFLAGS="${CPPFLAGS}${CPPFLAGS:+ }-I$additional_includedir"
          fi
        fi
      fi
    fi
    dnl Potentially add $additional_libdir to $LDFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/lib,
    dnl   2. if it's already present in $LDFLAGS,
    dnl   3. if it's /usr/local/lib and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_libdir" != "X/usr/lib"; then
      haveit=
      for x in $LDFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-L$additional_libdir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_libdir" = "X/usr/local/lib"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_libdir"; then
            dnl Really add $additional_libdir to $LDFLAGS.
            LDFLAGS="${LDFLAGS}${LDFLAGS:+ }-L$additional_libdir"
          fi
        fi
      fi
    fi
  fi
])

dnl AC_LIB_PREPARE_PREFIX creates variables acl_final_prefix,
dnl acl_final_exec_prefix, containing the values to which $prefix and
dnl $exec_prefix will expand at the end of the configure script.
AC_DEFUN([AC_LIB_PREPARE_PREFIX],
[
  dnl Unfortunately, prefix and exec_prefix get only finally determined
  dnl at the end of configure.
  if test "X$prefix" = "XNONE"; then
    acl_final_prefix="$ac_default_prefix"
  else
    acl_final_prefix="$prefix"
  fi
  if test "X$exec_prefix" = "XNONE"; then
    acl_final_exec_prefix='${prefix}'
  else
    acl_final_exec_prefix="$exec_prefix"
  fi
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  eval acl_final_exec_prefix=\"$acl_final_exec_prefix\"
  prefix="$acl_save_prefix"
])

dnl AC_LIB_WITH_FINAL_PREFIX([statement]) evaluates statement, with the
dnl variables prefix and exec_prefix bound to the values they will have
dnl at the end of the configure script.
AC_DEFUN([AC_LIB_WITH_FINAL_PREFIX],
[
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  acl_save_exec_prefix="$exec_prefix"
  exec_prefix="$acl_final_exec_prefix"
  $1
  exec_prefix="$acl_save_exec_prefix"
  prefix="$acl_save_prefix"
])

# lib-link.m4 serial 4 (gettext-0.12)
dnl Copyright (C) 2001-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

dnl AC_LIB_LINKFLAGS(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets and AC_SUBSTs the LIB${NAME} and LTLIB${NAME} variables and
dnl augments the CPPFLAGS variable.
AC_DEFUN([AC_LIB_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  AC_CACHE_CHECK([how to link with lib[]$1], [ac_cv_lib[]Name[]_libs], [
    AC_LIB_LINKFLAGS_BODY([$1], [$2])
    ac_cv_lib[]Name[]_libs="$LIB[]NAME"
    ac_cv_lib[]Name[]_ltlibs="$LTLIB[]NAME"
    ac_cv_lib[]Name[]_cppflags="$INC[]NAME"
  ])
  LIB[]NAME="$ac_cv_lib[]Name[]_libs"
  LTLIB[]NAME="$ac_cv_lib[]Name[]_ltlibs"
  INC[]NAME="$ac_cv_lib[]Name[]_cppflags"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  dnl Also set HAVE_LIB[]NAME so that AC_LIB_HAVE_LINKFLAGS can reuse the
  dnl results of this search when this library appears as a dependency.
  HAVE_LIB[]NAME=yes
  undefine([Name])
  undefine([NAME])
])

dnl AC_LIB_HAVE_LINKFLAGS(name, dependencies, includes, testcode)
dnl searches for libname and the libraries corresponding to explicit and
dnl implicit dependencies, together with the specified include files and
dnl the ability to compile and link the specified testcode. If found, it
dnl sets and AC_SUBSTs HAVE_LIB${NAME}=yes and the LIB${NAME} and
dnl LTLIB${NAME} variables and augments the CPPFLAGS variable, and
dnl #defines HAVE_LIB${NAME} to 1. Otherwise, it sets and AC_SUBSTs
dnl HAVE_LIB${NAME}=no and LIB${NAME} and LTLIB${NAME} to empty.
AC_DEFUN([AC_LIB_HAVE_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])

  dnl Search for lib[]Name and define LIB[]NAME, LTLIB[]NAME and INC[]NAME
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([$1], [$2])

  dnl Add $INC[]NAME to CPPFLAGS before performing the following checks,
  dnl because if the user has installed lib[]Name and not disabled its use
  dnl via --without-lib[]Name-prefix, he wants to use it.
  ac_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)

  AC_CACHE_CHECK([for lib[]$1], [ac_cv_lib[]Name], [
    ac_save_LIBS="$LIBS"
    LIBS="$LIBS $LIB[]NAME"
    AC_TRY_LINK([$3], [$4], [ac_cv_lib[]Name=yes], [ac_cv_lib[]Name=no])
    LIBS="$ac_save_LIBS"
  ])
  if test "$ac_cv_lib[]Name" = yes; then
    HAVE_LIB[]NAME=yes
    AC_DEFINE([HAVE_LIB]NAME, 1, [Define if you have the $1 library.])
    AC_MSG_CHECKING([how to link with lib[]$1])
    AC_MSG_RESULT([$LIB[]NAME])
  else
    HAVE_LIB[]NAME=no
    dnl If $LIB[]NAME didn't lead to a usable library, we don't need
    dnl $INC[]NAME either.
    CPPFLAGS="$ac_save_CPPFLAGS"
    LIB[]NAME=
    LTLIB[]NAME=
  fi
  AC_SUBST([HAVE_LIB]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  undefine([Name])
  undefine([NAME])
])

dnl Determine the platform dependent parameters needed to use rpath:
dnl libext, shlibext, hardcode_libdir_flag_spec, hardcode_libdir_separator,
dnl hardcode_direct, hardcode_minus_L.
AC_DEFUN([AC_LIB_RPATH],
[
  AC_REQUIRE([AC_PROG_CC])                dnl we use $CC, $GCC, $LDFLAGS
  AC_REQUIRE([AC_LIB_PROG_LD])            dnl we use $LD, $with_gnu_ld
  AC_REQUIRE([AC_CANONICAL_HOST])         dnl we use $host
  AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT]) dnl we use $ac_aux_dir
  AC_CACHE_CHECK([for shared library run path origin], acl_cv_rpath, [
    CC="$CC" GCC="$GCC" LDFLAGS="$LDFLAGS" LD="$LD" with_gnu_ld="$with_gnu_ld" \
    ${CONFIG_SHELL-/bin/sh} "$ac_aux_dir/config.rpath" "$host" > conftest.sh
    . ./conftest.sh
    rm -f ./conftest.sh
    acl_cv_rpath=done
  ])
  wl="$acl_cv_wl"
  libext="$acl_cv_libext"
  shlibext="$acl_cv_shlibext"
  hardcode_libdir_flag_spec="$acl_cv_hardcode_libdir_flag_spec"
  hardcode_libdir_separator="$acl_cv_hardcode_libdir_separator"
  hardcode_direct="$acl_cv_hardcode_direct"
  hardcode_minus_L="$acl_cv_hardcode_minus_L"
  dnl Determine whether the user wants rpath handling at all.
  AC_ARG_ENABLE(rpath,
    [  --disable-rpath         do not hardcode runtime library paths],
    :, enable_rpath=yes)
])

dnl AC_LIB_LINKFLAGS_BODY(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets the LIB${NAME}, LTLIB${NAME} and INC${NAME} variables.
AC_DEFUN([AC_LIB_LINKFLAGS_BODY],
[
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib$1-prefix],
[  --with-lib$1-prefix[=DIR]  search for lib$1 in DIR/include and DIR/lib
  --without-lib$1-prefix     don't search for lib$1 in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  dnl Search the library and its dependencies in $additional_libdir and
  dnl $LDFLAGS. Using breadth-first-seach.
  LIB[]NAME=
  LTLIB[]NAME=
  INC[]NAME=
  rpathdirs=
  ltrpathdirs=
  names_already_handled=
  names_next_round='$1 $2'
  while test -n "$names_next_round"; do
    names_this_round="$names_next_round"
    names_next_round=
    for name in $names_this_round; do
      already_handled=
      for n in $names_already_handled; do
        if test "$n" = "$name"; then
          already_handled=yes
          break
        fi
      done
      if test -z "$already_handled"; then
        names_already_handled="$names_already_handled $name"
        dnl See if it was already located by an earlier AC_LIB_LINKFLAGS
        dnl or AC_LIB_HAVE_LINKFLAGS call.
        uppername=`echo "$name" | sed -e 'y|abcdefghijklmnopqrstuvwxyz./-|ABCDEFGHIJKLMNOPQRSTUVWXYZ___|'`
        eval value=\"\$HAVE_LIB$uppername\"
        if test -n "$value"; then
          if test "$value" = yes; then
            eval value=\"\$LIB$uppername\"
            test -z "$value" || LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$value"
            eval value=\"\$LTLIB$uppername\"
            test -z "$value" || LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$value"
          else
            dnl An earlier call to AC_LIB_HAVE_LINKFLAGS has determined
            dnl that this library doesn't exist. So just drop it.
            :
          fi
        else
          dnl Search the library lib$name in $additional_libdir and $LDFLAGS
          dnl and the already constructed $LIBNAME/$LTLIBNAME.
          found_dir=
          found_la=
          found_so=
          found_a=
          if test $use_additional = yes; then
            if test -n "$shlibext" && test -f "$additional_libdir/lib$name.$shlibext"; then
              found_dir="$additional_libdir"
              found_so="$additional_libdir/lib$name.$shlibext"
              if test -f "$additional_libdir/lib$name.la"; then
                found_la="$additional_libdir/lib$name.la"
              fi
            else
              if test -f "$additional_libdir/lib$name.$libext"; then
                found_dir="$additional_libdir"
                found_a="$additional_libdir/lib$name.$libext"
                if test -f "$additional_libdir/lib$name.la"; then
                  found_la="$additional_libdir/lib$name.la"
                fi
              fi
            fi
          fi
          if test "X$found_dir" = "X"; then
            for x in $LDFLAGS $LTLIB[]NAME; do
              AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
              case "$x" in
                -L*)
                  dir=`echo "X$x" | sed -e 's/^X-L//'`
                  if test -n "$shlibext" && test -f "$dir/lib$name.$shlibext"; then
                    found_dir="$dir"
                    found_so="$dir/lib$name.$shlibext"
                    if test -f "$dir/lib$name.la"; then
                      found_la="$dir/lib$name.la"
                    fi
                  else
                    if test -f "$dir/lib$name.$libext"; then
                      found_dir="$dir"
                      found_a="$dir/lib$name.$libext"
                      if test -f "$dir/lib$name.la"; then
                        found_la="$dir/lib$name.la"
                      fi
                    fi
                  fi
                  ;;
              esac
              if test "X$found_dir" != "X"; then
                break
              fi
            done
          fi
          if test "X$found_dir" != "X"; then
            dnl Found the library.
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$found_dir -l$name"
            if test "X$found_so" != "X"; then
              dnl Linking with a shared library. We attempt to hardcode its
              dnl directory into the executable's runpath, unless it's the
              dnl standard /usr/lib.
              if test "$enable_rpath" = no || test "X$found_dir" = "X/usr/lib"; then
                dnl No hardcoding is needed.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
              else
                dnl Use an explicit option to hardcode DIR into the resulting
                dnl binary.
                dnl Potentially add DIR to ltrpathdirs.
                dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                haveit=
                for x in $ltrpathdirs; do
                  if test "X$x" = "X$found_dir"; then
                    haveit=yes
                    break
                  fi
                done
                if test -z "$haveit"; then
                  ltrpathdirs="$ltrpathdirs $found_dir"
                fi
                dnl The hardcoding into $LIBNAME is system dependent.
                if test "$hardcode_direct" = yes; then
                  dnl Using DIR/libNAME.so during linking hardcodes DIR into the
                  dnl resulting binary.
                  LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                else
                  if test -n "$hardcode_libdir_flag_spec" && test "$hardcode_minus_L" = no; then
                    dnl Use an explicit option to hardcode DIR into the resulting
                    dnl binary.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    dnl Potentially add DIR to rpathdirs.
                    dnl The rpathdirs will be appended to $LIBNAME at the end.
                    haveit=
                    for x in $rpathdirs; do
                      if test "X$x" = "X$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      rpathdirs="$rpathdirs $found_dir"
                    fi
                  else
                    dnl Rely on "-L$found_dir".
                    dnl But don't add it if it's already contained in the LDFLAGS
                    dnl or the already constructed $LIBNAME
                    haveit=
                    for x in $LDFLAGS $LIB[]NAME; do
                      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                      if test "X$x" = "X-L$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir"
                    fi
                    if test "$hardcode_minus_L" != no; then
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    else
                      dnl We cannot use $hardcode_runpath_var and LD_RUN_PATH
                      dnl here, because this doesn't fit in flags passed to the
                      dnl compiler. So give up. No hardcoding. This affects only
                      dnl very old systems.
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
                    fi
                  fi
                fi
              fi
            else
              if test "X$found_a" != "X"; then
                dnl Linking with a static library.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_a"
              else
                dnl We shouldn't come here, but anyway it's good to have a
                dnl fallback.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir -l$name"
              fi
            fi
            dnl Assume the include files are nearby.
            additional_includedir=
            case "$found_dir" in
              */lib | */lib/)
                basedir=`echo "X$found_dir" | sed -e 's,^X,,' -e 's,/lib/*$,,'`
                additional_includedir="$basedir/include"
                ;;
            esac
            if test "X$additional_includedir" != "X"; then
              dnl Potentially add $additional_includedir to $INCNAME.
              dnl But don't add it
              dnl   1. if it's the standard /usr/include,
              dnl   2. if it's /usr/local/include and we are using GCC on Linux,
              dnl   3. if it's already present in $CPPFLAGS or the already
              dnl      constructed $INCNAME,
              dnl   4. if it doesn't exist as a directory.
              if test "X$additional_includedir" != "X/usr/include"; then
                haveit=
                if test "X$additional_includedir" = "X/usr/local/include"; then
                  if test -n "$GCC"; then
                    case $host_os in
                      linux*) haveit=yes;;
                    esac
                  fi
                fi
                if test -z "$haveit"; then
                  for x in $CPPFLAGS $INC[]NAME; do
                    AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                    if test "X$x" = "X-I$additional_includedir"; then
                      haveit=yes
                      break
                    fi
                  done
                  if test -z "$haveit"; then
                    if test -d "$additional_includedir"; then
                      dnl Really add $additional_includedir to $INCNAME.
                      INC[]NAME="${INC[]NAME}${INC[]NAME:+ }-I$additional_includedir"
                    fi
                  fi
                fi
              fi
            fi
            dnl Look for dependencies.
            if test -n "$found_la"; then
              dnl Read the .la file. It defines the variables
              dnl dlname, library_names, old_library, dependency_libs, current,
              dnl age, revision, installed, dlopen, dlpreopen, libdir.
              save_libdir="$libdir"
              case "$found_la" in
                */* | *\\*) . "$found_la" ;;
                *) . "./$found_la" ;;
              esac
              libdir="$save_libdir"
              dnl We use only dependency_libs.
              for dep in $dependency_libs; do
                case "$dep" in
                  -L*)
                    additional_libdir=`echo "X$dep" | sed -e 's/^X-L//'`
                    dnl Potentially add $additional_libdir to $LIBNAME and $LTLIBNAME.
                    dnl But don't add it
                    dnl   1. if it's the standard /usr/lib,
                    dnl   2. if it's /usr/local/lib and we are using GCC on Linux,
                    dnl   3. if it's already present in $LDFLAGS or the already
                    dnl      constructed $LIBNAME,
                    dnl   4. if it doesn't exist as a directory.
                    if test "X$additional_libdir" != "X/usr/lib"; then
                      haveit=
                      if test "X$additional_libdir" = "X/usr/local/lib"; then
                        if test -n "$GCC"; then
                          case $host_os in
                            linux*) haveit=yes;;
                          esac
                        fi
                      fi
                      if test -z "$haveit"; then
                        haveit=
                        for x in $LDFLAGS $LIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LIBNAME.
                            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                        haveit=
                        for x in $LDFLAGS $LTLIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LTLIBNAME.
                            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                      fi
                    fi
                    ;;
                  -R*)
                    dir=`echo "X$dep" | sed -e 's/^X-R//'`
                    if test "$enable_rpath" != no; then
                      dnl Potentially add DIR to rpathdirs.
                      dnl The rpathdirs will be appended to $LIBNAME at the end.
                      haveit=
                      for x in $rpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        rpathdirs="$rpathdirs $dir"
                      fi
                      dnl Potentially add DIR to ltrpathdirs.
                      dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                      haveit=
                      for x in $ltrpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        ltrpathdirs="$ltrpathdirs $dir"
                      fi
                    fi
                    ;;
                  -l*)
                    dnl Handle this in the next round.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's/^X-l//'`
                    ;;
                  *.la)
                    dnl Handle this in the next round. Throw away the .la's
                    dnl directory; it is already contained in a preceding -L
                    dnl option.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's,^X.*/,,' -e 's,^lib,,' -e 's,\.la$,,'`
                    ;;
                  *)
                    dnl Most likely an immediate library name.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$dep"
                    LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$dep"
                    ;;
                esac
              done
            fi
          else
            dnl Didn't find the library; assume it is in the system directories
            dnl known to the linker and runtime loader. (All the system
            dnl directories known to the linker should also be known to the
            dnl runtime loader, otherwise the system is severely misconfigured.)
            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-l$name"
          fi
        fi
      fi
    done
  done
  if test "X$rpathdirs" != "X"; then
    if test -n "$hardcode_libdir_separator"; then
      dnl Weird platform: only the last -rpath option counts, the user must
      dnl pass all path elements in one option. We can arrange that for a
      dnl single library, but not when more than one $LIBNAMEs are used.
      alldirs=
      for found_dir in $rpathdirs; do
        alldirs="${alldirs}${alldirs:+$hardcode_libdir_separator}$found_dir"
      done
      dnl Note: hardcode_libdir_flag_spec uses $libdir and $wl.
      acl_save_libdir="$libdir"
      libdir="$alldirs"
      eval flag=\"$hardcode_libdir_flag_spec\"
      libdir="$acl_save_libdir"
      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
    else
      dnl The -rpath options are cumulative.
      for found_dir in $rpathdirs; do
        acl_save_libdir="$libdir"
        libdir="$found_dir"
        eval flag=\"$hardcode_libdir_flag_spec\"
        libdir="$acl_save_libdir"
        LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
      done
    fi
  fi
  if test "X$ltrpathdirs" != "X"; then
    dnl When using libtool, the option that works for both libraries and
    dnl executables is -R. The -R options are cumulative.
    for found_dir in $ltrpathdirs; do
      LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-R$found_dir"
    done
  fi
])

dnl AC_LIB_APPENDTOVAR(VAR, CONTENTS) appends the elements of CONTENTS to VAR,
dnl unless already present in VAR.
dnl Works only for CPPFLAGS, not for LIB* variables because that sometimes
dnl contains two or three consecutive elements that belong together.
AC_DEFUN([AC_LIB_APPENDTOVAR],
[
  for element in [$2]; do
    haveit=
    for x in $[$1]; do
      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
      if test "X$x" = "X$element"; then
        haveit=yes
        break
      fi
    done
    if test -z "$haveit"; then
      [$1]="${[$1]}${[$1]:+ }$element"
    fi
  done
])

# lib-ld.m4 serial 3 (gettext-0.13)
dnl Copyright (C) 1996-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl Subroutines of libtool.m4,
dnl with replacements s/AC_/AC_LIB/ and s/lt_cv/acl_cv/ to avoid collision
dnl with libtool.m4.

dnl From libtool-1.4. Sets the variable with_gnu_ld to yes or no.
AC_DEFUN([AC_LIB_PROG_LD_GNU],
[AC_CACHE_CHECK([if the linker ($LD) is GNU ld], acl_cv_prog_gnu_ld,
[# I'd rather use --version here, but apparently some GNU ld's only accept -v.
case `$LD -v 2>&1 </dev/null` in
*GNU* | *'with BFD'*)
  acl_cv_prog_gnu_ld=yes ;;
*)
  acl_cv_prog_gnu_ld=no ;;
esac])
with_gnu_ld=$acl_cv_prog_gnu_ld
])

dnl From libtool-1.4. Sets the variable LD.
AC_DEFUN([AC_LIB_PROG_LD],
[AC_ARG_WITH(gnu-ld,
[  --with-gnu-ld           assume the C compiler uses GNU ld [default=no]],
test "$withval" = no || with_gnu_ld=yes, with_gnu_ld=no)
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=:
  fi
  rm -f conf$$.sh
fi
ac_prog=ld
if test "$GCC" = yes; then
  # Check if gcc -print-prog-name=ld gives a path.
  AC_MSG_CHECKING([for ld used by GCC])
  case $host in
  *-*-mingw*)
    # gcc leaves a trailing carriage return which upsets mingw
    ac_prog=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
  *)
    ac_prog=`($CC -print-prog-name=ld) 2>&5` ;;
  esac
  case $ac_prog in
    # Accept absolute paths.
    [[\\/]* | [A-Za-z]:[\\/]*)]
      [re_direlt='/[^/][^/]*/\.\./']
      # Canonicalize the path of ld
      ac_prog=`echo $ac_prog| sed 's%\\\\%/%g'`
      while echo $ac_prog | grep "$re_direlt" > /dev/null 2>&1; do
	ac_prog=`echo $ac_prog| sed "s%$re_direlt%/%"`
      done
      test -z "$LD" && LD="$ac_prog"
      ;;
  "")
    # If it fails, then pretend we aren't using GCC.
    ac_prog=ld
    ;;
  *)
    # If it is relative, then search for the first ld in PATH.
    with_gnu_ld=unknown
    ;;
  esac
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
AC_CACHE_VAL(acl_cv_path_LD,
[if test -z "$LD"; then
  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}${PATH_SEPARATOR-:}"
  for ac_dir in $PATH; do
    test -z "$ac_dir" && ac_dir=.
    if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
      acl_cv_path_LD="$ac_dir/$ac_prog"
      # Check to see if the program is GNU ld.  I'd rather use --version,
      # but apparently some GNU ld's only accept -v.
      # Break only if it was the GNU/non-GNU ld that we prefer.
      case `"$acl_cv_path_LD" -v 2>&1 < /dev/null` in
      *GNU* | *'with BFD'*)
	test "$with_gnu_ld" != no && break ;;
      *)
	test "$with_gnu_ld" != yes && break ;;
      esac
    fi
  done
  IFS="$ac_save_ifs"
else
  acl_cv_path_LD="$LD" # Let the user override the test with a path.
fi])
LD="$acl_cv_path_LD"
if test -n "$LD"; then
  AC_MSG_RESULT($LD)
else
  AC_MSG_RESULT(no)
fi
test -z "$LD" && AC_MSG_ERROR([no acceptable ld found in \$PATH])
AC_LIB_PROG_LD_GNU
])


dnl PKG_CHECK_MODULES(GSTUFF, gtk+-2.0 >= 1.3 glib = 1.3.4, action-if, action-not)
dnl defines GSTUFF_LIBS, GSTUFF_CFLAGS, see pkg-config man page
dnl also defines GSTUFF_PKG_ERRORS on error
AC_DEFUN(PKG_CHECK_MODULES, [
  succeeded=no

  if test -z "$PKG_CONFIG"; then
    AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
  fi

  if test "$PKG_CONFIG" = "no" ; then
     echo "*** The pkg-config script could not be found. Make sure it is"
     echo "*** in your path, or set the PKG_CONFIG environment variable"
     echo "*** to the full path to pkg-config."
     echo "*** Or see http://www.freedesktop.org/software/pkgconfig to get pkg-config."
  else
     PKG_CONFIG_MIN_VERSION=0.9.0
     if $PKG_CONFIG --atleast-pkgconfig-version $PKG_CONFIG_MIN_VERSION; then
        AC_MSG_CHECKING(for $2)

        if $PKG_CONFIG --exists "$2" ; then
            AC_MSG_RESULT(yes)
            succeeded=yes

            AC_MSG_CHECKING($1_CFLAGS)
            $1_CFLAGS=`$PKG_CONFIG --cflags "$2"`
            AC_MSG_RESULT($$1_CFLAGS)

            AC_MSG_CHECKING($1_LIBS)
            $1_LIBS=`$PKG_CONFIG --libs "$2"`
            AC_MSG_RESULT($$1_LIBS)
        else
            $1_CFLAGS=""
            $1_LIBS=""
            ## If we have a custom action on failure, don't print errors, but 
            ## do set a variable so people can do so.
            $1_PKG_ERRORS=`$PKG_CONFIG --errors-to-stdout --print-errors "$2"`
            ifelse([$4], ,echo $$1_PKG_ERRORS,)
        fi

        AC_SUBST($1_CFLAGS)
        AC_SUBST($1_LIBS)
     else
        echo "*** Your version of pkg-config is too old. You need version $PKG_CONFIG_MIN_VERSION or newer."
        echo "*** See http://www.freedesktop.org/software/pkgconfig"
     fi
  fi

  if test $succeeded = yes; then
     ifelse([$3], , :, [$3])
  else
     ifelse([$4], , AC_MSG_ERROR([Library requirements ($2) not met; consider adjusting the PKG_CONFIG_PATH environment variable if your libraries are in a nonstandard prefix so pkg-config can find them.]), [$4])
  fi
])



# gettext.m4 serial 28 (gettext-0.13)
dnl Copyright (C) 1995-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

dnl Macro to add for using GNU gettext.

dnl Usage: AM_GNU_GETTEXT([INTLSYMBOL], [NEEDSYMBOL], [INTLDIR]).
dnl INTLSYMBOL can be one of 'external', 'no-libtool', 'use-libtool'. The
dnl    default (if it is not specified or empty) is 'no-libtool'.
dnl    INTLSYMBOL should be 'external' for packages with no intl directory,
dnl    and 'no-libtool' or 'use-libtool' for packages with an intl directory.
dnl    If INTLSYMBOL is 'use-libtool', then a libtool library
dnl    $(top_builddir)/intl/libintl.la will be created (shared and/or static,
dnl    depending on --{enable,disable}-{shared,static} and on the presence of
dnl    AM-DISABLE-SHARED). If INTLSYMBOL is 'no-libtool', a static library
dnl    $(top_builddir)/intl/libintl.a will be created.
dnl If NEEDSYMBOL is specified and is 'need-ngettext', then GNU gettext
dnl    implementations (in libc or libintl) without the ngettext() function
dnl    will be ignored.  If NEEDSYMBOL is specified and is
dnl    'need-formatstring-macros', then GNU gettext implementations that don't
dnl    support the ISO C 99 <inttypes.h> formatstring macros will be ignored.
dnl INTLDIR is used to find the intl libraries.  If empty,
dnl    the value `$(top_builddir)/intl/' is used.
dnl
dnl The result of the configuration is one of three cases:
dnl 1) GNU gettext, as included in the intl subdirectory, will be compiled
dnl    and used.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 2) GNU gettext has been found in the system's C library.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 3) No internationalization, always use English msgid.
dnl    Catalog format: none
dnl    Catalog extension: none
dnl If INTLSYMBOL is 'external', only cases 2 and 3 can occur.
dnl The use of .gmo is historical (it was needed to avoid overwriting the
dnl GNU format catalogs when building on a platform with an X/Open gettext),
dnl but we keep it in order not to force irrelevant filename changes on the
dnl maintainers.
dnl
AC_DEFUN([AM_GNU_GETTEXT],
[
  dnl Argument checking.
  ifelse([$1], [], , [ifelse([$1], [external], , [ifelse([$1], [no-libtool], , [ifelse([$1], [use-libtool], ,
    [errprint([ERROR: invalid first argument to AM_GNU_GETTEXT
])])])])])
  ifelse([$2], [], , [ifelse([$2], [need-ngettext], , [ifelse([$2], [need-formatstring-macros], ,
    [errprint([ERROR: invalid second argument to AM_GNU_GETTEXT
])])])])
  define(gt_included_intl, ifelse([$1], [external], [no], [yes]))
  define(gt_libtool_suffix_prefix, ifelse([$1], [use-libtool], [l], []))

  AC_REQUIRE([AM_PO_SUBDIRS])dnl
  ifelse(gt_included_intl, yes, [
    AC_REQUIRE([AM_INTL_SUBDIR])dnl
  ])

  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Sometimes libintl requires libiconv, so first search for libiconv.
  dnl Ideally we would do this search only after the
  dnl      if test "$USE_NLS" = "yes"; then
  dnl        if test "$gt_cv_func_gnugettext_libc" != "yes"; then
  dnl tests. But if configure.in invokes AM_ICONV after AM_GNU_GETTEXT
  dnl the configure script would need to contain the same shell code
  dnl again, outside any 'if'. There are two solutions:
  dnl - Invoke AM_ICONV_LINKFLAGS_BODY here, outside any 'if'.
  dnl - Control the expansions in more detail using AC_PROVIDE_IFELSE.
  dnl Since AC_PROVIDE_IFELSE is only in autoconf >= 2.52 and not
  dnl documented, we avoid it.
  ifelse(gt_included_intl, yes, , [
    AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])
  ])

  dnl Set USE_NLS.
  AM_NLS

  ifelse(gt_included_intl, yes, [
    BUILD_INCLUDED_LIBINTL=no
    USE_INCLUDED_LIBINTL=no
  ])
  LIBINTL=
  LTLIBINTL=
  POSUB=

  dnl If we use NLS figure out what method
  if test "$USE_NLS" = "yes"; then
    gt_use_preinstalled_gnugettext=no
    ifelse(gt_included_intl, yes, [
      AC_MSG_CHECKING([whether included gettext is requested])
      AC_ARG_WITH(included-gettext,
        [  --with-included-gettext use the GNU gettext library included here],
        nls_cv_force_use_gnu_gettext=$withval,
        nls_cv_force_use_gnu_gettext=no)
      AC_MSG_RESULT($nls_cv_force_use_gnu_gettext)

      nls_cv_use_gnu_gettext="$nls_cv_force_use_gnu_gettext"
      if test "$nls_cv_force_use_gnu_gettext" != "yes"; then
    ])
        dnl User does not insist on using GNU NLS library.  Figure out what
        dnl to use.  If GNU gettext is available we use this.  Else we have
        dnl to fall back to GNU NLS library.

        dnl Add a version number to the cache macros.
        define([gt_api_version], ifelse([$2], [need-formatstring-macros], 3, ifelse([$2], [need-ngettext], 2, 1)))
        define([gt_cv_func_gnugettext_libc], [gt_cv_func_gnugettext]gt_api_version[_libc])
        define([gt_cv_func_gnugettext_libintl], [gt_cv_func_gnugettext]gt_api_version[_libintl])

        AC_CACHE_CHECK([for GNU gettext in libc], gt_cv_func_gnugettext_libc,
         [AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern int *_nl_domain_bindings;],
            [bindtextdomain ("", "");
return (int) gettext ("")]ifelse([$2], [need-ngettext], [ + (int) ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_domain_bindings],
            gt_cv_func_gnugettext_libc=yes,
            gt_cv_func_gnugettext_libc=no)])

        if test "$gt_cv_func_gnugettext_libc" != "yes"; then
          dnl Sometimes libintl requires libiconv, so first search for libiconv.
          ifelse(gt_included_intl, yes, , [
            AM_ICONV_LINK
          ])
          dnl Search for libintl and define LIBINTL, LTLIBINTL and INCINTL
          dnl accordingly. Don't use AC_LIB_LINKFLAGS_BODY([intl],[iconv])
          dnl because that would add "-liconv" to LIBINTL and LTLIBINTL
          dnl even if libiconv doesn't exist.
          AC_LIB_LINKFLAGS_BODY([intl])
          AC_CACHE_CHECK([for GNU gettext in libintl],
            gt_cv_func_gnugettext_libintl,
           [gt_save_CPPFLAGS="$CPPFLAGS"
            CPPFLAGS="$CPPFLAGS $INCINTL"
            gt_save_LIBS="$LIBS"
            LIBS="$LIBS $LIBINTL"
            dnl Now see whether libintl exists and does not depend on libiconv.
            AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias ();],
              [bindtextdomain ("", "");
return (int) gettext ("")]ifelse([$2], [need-ngettext], [ + (int) ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_expand_alias (0)],
              gt_cv_func_gnugettext_libintl=yes,
              gt_cv_func_gnugettext_libintl=no)
            dnl Now see whether libintl exists and depends on libiconv.
            if test "$gt_cv_func_gnugettext_libintl" != yes && test -n "$LIBICONV"; then
              LIBS="$LIBS $LIBICONV"
              AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias ();],
                [bindtextdomain ("", "");
return (int) gettext ("")]ifelse([$2], [need-ngettext], [ + (int) ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_expand_alias (0)],
               [LIBINTL="$LIBINTL $LIBICONV"
                LTLIBINTL="$LTLIBINTL $LTLIBICONV"
                gt_cv_func_gnugettext_libintl=yes
               ])
            fi
            CPPFLAGS="$gt_save_CPPFLAGS"
            LIBS="$gt_save_LIBS"])
        fi

        dnl If an already present or preinstalled GNU gettext() is found,
        dnl use it.  But if this macro is used in GNU gettext, and GNU
        dnl gettext is already preinstalled in libintl, we update this
        dnl libintl.  (Cf. the install rule in intl/Makefile.in.)
        if test "$gt_cv_func_gnugettext_libc" = "yes" \
           || { test "$gt_cv_func_gnugettext_libintl" = "yes" \
                && test "$PACKAGE" != gettext-runtime \
                && test "$PACKAGE" != gettext-tools; }; then
          gt_use_preinstalled_gnugettext=yes
        else
          dnl Reset the values set by searching for libintl.
          LIBINTL=
          LTLIBINTL=
          INCINTL=
        fi

    ifelse(gt_included_intl, yes, [
        if test "$gt_use_preinstalled_gnugettext" != "yes"; then
          dnl GNU gettext is not found in the C library.
          dnl Fall back on included GNU gettext library.
          nls_cv_use_gnu_gettext=yes
        fi
      fi

      if test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions used to generate GNU NLS library.
        BUILD_INCLUDED_LIBINTL=yes
        USE_INCLUDED_LIBINTL=yes
        LIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.[]gt_libtool_suffix_prefix[]a $LIBICONV"
        LTLIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.[]gt_libtool_suffix_prefix[]a $LTLIBICONV"
        LIBS=`echo " $LIBS " | sed -e 's/ -lintl / /' -e 's/^ //' -e 's/ $//'`
      fi

      if test "$gt_use_preinstalled_gnugettext" = "yes" \
         || test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions to use GNU gettext tools.
        CATOBJEXT=.gmo
      fi
    ])

    if test "$gt_use_preinstalled_gnugettext" = "yes" \
       || test "$nls_cv_use_gnu_gettext" = "yes"; then
      AC_DEFINE(ENABLE_NLS, 1,
        [Define to 1 if translation of program messages to the user's native language
   is requested.])
    else
      USE_NLS=no
    fi
  fi

  AC_MSG_CHECKING([whether to use NLS])
  AC_MSG_RESULT([$USE_NLS])
  if test "$USE_NLS" = "yes"; then
    AC_MSG_CHECKING([where the gettext function comes from])
    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if test "$gt_cv_func_gnugettext_libintl" = "yes"; then
        gt_source="external libintl"
      else
        gt_source="libc"
      fi
    else
      gt_source="included intl directory"
    fi
    AC_MSG_RESULT([$gt_source])
  fi

  if test "$USE_NLS" = "yes"; then

    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if test "$gt_cv_func_gnugettext_libintl" = "yes"; then
        AC_MSG_CHECKING([how to link with libintl])
        AC_MSG_RESULT([$LIBINTL])
        AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCINTL])
      fi

      dnl For backward compatibility. Some packages may be using this.
      AC_DEFINE(HAVE_GETTEXT, 1,
       [Define if the GNU gettext() function is already present or preinstalled.])
      AC_DEFINE(HAVE_DCGETTEXT, 1,
       [Define if the GNU dcgettext() function is already present or preinstalled.])
    fi

    dnl We need to process the po/ directory.
    POSUB=po
  fi

  ifelse(gt_included_intl, yes, [
    dnl If this is used in GNU gettext we have to set BUILD_INCLUDED_LIBINTL
    dnl to 'yes' because some of the testsuite requires it.
    if test "$PACKAGE" = gettext-runtime || test "$PACKAGE" = gettext-tools; then
      BUILD_INCLUDED_LIBINTL=yes
    fi

    dnl Make all variables we use known to autoconf.
    AC_SUBST(BUILD_INCLUDED_LIBINTL)
    AC_SUBST(USE_INCLUDED_LIBINTL)
    AC_SUBST(CATOBJEXT)

    dnl For backward compatibility. Some configure.ins may be using this.
    nls_cv_header_intl=
    nls_cv_header_libgt=

    dnl For backward compatibility. Some Makefiles may be using this.
    DATADIRNAME=share
    AC_SUBST(DATADIRNAME)

    dnl For backward compatibility. Some Makefiles may be using this.
    INSTOBJEXT=.mo
    AC_SUBST(INSTOBJEXT)

    dnl For backward compatibility. Some Makefiles may be using this.
    GENCAT=gencat
    AC_SUBST(GENCAT)

    dnl For backward compatibility. Some Makefiles may be using this.
    if test "$USE_INCLUDED_LIBINTL" = yes; then
      INTLOBJS="\$(GETTOBJS)"
    fi
    AC_SUBST(INTLOBJS)

    dnl Enable libtool support if the surrounding package wishes it.
    INTL_LIBTOOL_SUFFIX_PREFIX=gt_libtool_suffix_prefix
    AC_SUBST(INTL_LIBTOOL_SUFFIX_PREFIX)
  ])

  dnl For backward compatibility. Some Makefiles may be using this.
  INTLLIBS="$LIBINTL"
  AC_SUBST(INTLLIBS)

  dnl Make all documented variables known to autoconf.
  AC_SUBST(LIBINTL)
  AC_SUBST(LTLIBINTL)
  AC_SUBST(POSUB)
])


dnl Checks for all prerequisites of the intl subdirectory,
dnl except for INTL_LIBTOOL_SUFFIX_PREFIX (and possibly LIBTOOL), INTLOBJS,
dnl            USE_INCLUDED_LIBINTL, BUILD_INCLUDED_LIBINTL.
AC_DEFUN([AM_INTL_SUBDIR],
[
  AC_REQUIRE([AC_PROG_INSTALL])dnl
  AC_REQUIRE([AM_MKINSTALLDIRS])dnl
  AC_REQUIRE([AC_PROG_CC])dnl
  AC_REQUIRE([AC_CANONICAL_HOST])dnl
  AC_REQUIRE([AC_PROG_RANLIB])dnl
  AC_REQUIRE([AC_ISC_POSIX])dnl
  AC_REQUIRE([AC_HEADER_STDC])dnl
  AC_REQUIRE([AC_C_CONST])dnl
  AC_REQUIRE([bh_C_SIGNED])dnl
  AC_REQUIRE([AC_C_INLINE])dnl
  AC_REQUIRE([AC_TYPE_OFF_T])dnl
  AC_REQUIRE([AC_TYPE_SIZE_T])dnl
  AC_REQUIRE([jm_AC_TYPE_LONG_LONG])dnl
  AC_REQUIRE([gt_TYPE_LONGDOUBLE])dnl
  AC_REQUIRE([gt_TYPE_WCHAR_T])dnl
  AC_REQUIRE([gt_TYPE_WINT_T])dnl
  AC_REQUIRE([jm_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([jm_AC_HEADER_STDINT_H])
  AC_REQUIRE([gt_TYPE_INTMAX_T])
  AC_REQUIRE([gt_PRINTF_POSIX])
  AC_REQUIRE([AC_FUNC_ALLOCA])dnl
  AC_REQUIRE([AC_FUNC_MMAP])dnl
  AC_REQUIRE([jm_GLIBC21])dnl
  AC_REQUIRE([gt_INTDIV0])dnl
  AC_REQUIRE([jm_AC_TYPE_UINTMAX_T])dnl
  AC_REQUIRE([gt_HEADER_INTTYPES_H])dnl
  AC_REQUIRE([gt_INTTYPES_PRI])dnl
  AC_REQUIRE([gl_XSIZE])dnl

  AC_CHECK_TYPE([ptrdiff_t], ,
    [AC_DEFINE([ptrdiff_t], [long],
       [Define as the type of the result of subtracting two pointers, if the system doesn't define it.])
    ])
  AC_CHECK_HEADERS([argz.h limits.h locale.h nl_types.h malloc.h stddef.h \
stdlib.h string.h unistd.h sys/param.h])
  AC_CHECK_FUNCS([asprintf fwprintf getcwd getegid geteuid getgid getuid \
mempcpy munmap putenv setenv setlocale snprintf stpcpy strcasecmp strdup \
strtoul tsearch wcslen __argz_count __argz_stringify __argz_next \
__fsetlocking])

  dnl Use the _snprintf function only if it is declared (because on NetBSD it
  dnl is defined as a weak alias of snprintf; we prefer to use the latter).
  gt_CHECK_DECL(_snprintf, [#include <stdio.h>])
  gt_CHECK_DECL(_snwprintf, [#include <stdio.h>])

  dnl Use the *_unlocked functions only if they are declared.
  dnl (because some of them were defined without being declared in Solaris
  dnl 2.5.1 but were removed in Solaris 2.6, whereas we want binaries built
  dnl on Solaris 2.5.1 to run on Solaris 2.6).
  dnl Don't use AC_CHECK_DECLS because it isn't supported in autoconf-2.13.
  gt_CHECK_DECL(feof_unlocked, [#include <stdio.h>])
  gt_CHECK_DECL(fgets_unlocked, [#include <stdio.h>])
  gt_CHECK_DECL(getc_unlocked, [#include <stdio.h>])

  case $gt_cv_func_printf_posix in
    *yes) HAVE_POSIX_PRINTF=1 ;;
    *) HAVE_POSIX_PRINTF=0 ;;
  esac
  AC_SUBST([HAVE_POSIX_PRINTF])
  if test "$ac_cv_func_asprintf" = yes; then
    HAVE_ASPRINTF=1
  else
    HAVE_ASPRINTF=0
  fi
  AC_SUBST([HAVE_ASPRINTF])
  if test "$ac_cv_func_snprintf" = yes; then
    HAVE_SNPRINTF=1
  else
    HAVE_SNPRINTF=0
  fi
  AC_SUBST([HAVE_SNPRINTF])
  if test "$ac_cv_func_wprintf" = yes; then
    HAVE_WPRINTF=1
  else
    HAVE_WPRINTF=0
  fi
  AC_SUBST([HAVE_WPRINTF])

  AM_ICONV
  AM_LANGINFO_CODESET
  if test $ac_cv_header_locale_h = yes; then
    AM_LC_MESSAGES
  fi

  dnl intl/plural.c is generated from intl/plural.y. It requires bison,
  dnl because plural.y uses bison specific features. It requires at least
  dnl bison-1.26 because earlier versions generate a plural.c that doesn't
  dnl compile.
  dnl bison is only needed for the maintainer (who touches plural.y). But in
  dnl order to avoid separate Makefiles or --enable-maintainer-mode, we put
  dnl the rule in general Makefile. Now, some people carelessly touch the
  dnl files or have a broken "make" program, hence the plural.c rule will
  dnl sometimes fire. To avoid an error, defines BISON to ":" if it is not
  dnl present or too old.
  AC_CHECK_PROGS([INTLBISON], [bison])
  if test -z "$INTLBISON"; then
    ac_verc_fail=yes
  else
    dnl Found it, now check the version.
    AC_MSG_CHECKING([version of bison])
changequote(<<,>>)dnl
    ac_prog_version=`$INTLBISON --version 2>&1 | sed -n 's/^.*GNU Bison.* \([0-9]*\.[0-9.]*\).*$/\1/p'`
    case $ac_prog_version in
      '') ac_prog_version="v. ?.??, bad"; ac_verc_fail=yes;;
      1.2[6-9]* | 1.[3-9][0-9]* | [2-9].*)
changequote([,])dnl
         ac_prog_version="$ac_prog_version, ok"; ac_verc_fail=no;;
      *) ac_prog_version="$ac_prog_version, bad"; ac_verc_fail=yes;;
    esac
    AC_MSG_RESULT([$ac_prog_version])
  fi
  if test $ac_verc_fail = yes; then
    INTLBISON=:
  fi
])


dnl gt_CHECK_DECL(FUNC, INCLUDES)
dnl Check whether a function is declared.
AC_DEFUN([gt_CHECK_DECL],
[
  AC_CACHE_CHECK([whether $1 is declared], ac_cv_have_decl_$1,
    [AC_TRY_COMPILE([$2], [
#ifndef $1
  char *p = (char *) $1;
#endif
], ac_cv_have_decl_$1=yes, ac_cv_have_decl_$1=no)])
  if test $ac_cv_have_decl_$1 = yes; then
    gt_value=1
  else
    gt_value=0
  fi
  AC_DEFINE_UNQUOTED([HAVE_DECL_]translit($1, [a-z], [A-Z]), [$gt_value],
    [Define to 1 if you have the declaration of `$1', and to 0 if you don't.])
])


dnl Usage: AM_GNU_GETTEXT_VERSION([gettext-version])
AC_DEFUN([AM_GNU_GETTEXT_VERSION], [])

# po.m4 serial 3 (gettext-0.14)
dnl Copyright (C) 1995-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

dnl Checks for all prerequisites of the po subdirectory.
AC_DEFUN([AM_PO_SUBDIRS],
[
  AC_REQUIRE([AC_PROG_MAKE_SET])dnl
  AC_REQUIRE([AC_PROG_INSTALL])dnl
  AC_REQUIRE([AM_MKINSTALLDIRS])dnl
  AC_REQUIRE([AM_NLS])dnl

  dnl Perform the following tests also if --disable-nls has been given,
  dnl because they are needed for "make dist" to work.

  dnl Search for GNU msgfmt in the PATH.
  dnl The first test excludes Solaris msgfmt and early GNU msgfmt versions.
  dnl The second test excludes FreeBSD msgfmt.
  AM_PATH_PROG_WITH_TEST(MSGFMT, msgfmt,
    [$ac_dir/$ac_word --statistics /dev/null >/dev/null 2>&1 &&
     (if $ac_dir/$ac_word --statistics /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  AC_PATH_PROG(GMSGFMT, gmsgfmt, $MSGFMT)

  dnl Search for GNU xgettext 0.12 or newer in the PATH.
  dnl The first test excludes Solaris xgettext and early GNU xgettext versions.
  dnl The second test excludes FreeBSD xgettext.
  AM_PATH_PROG_WITH_TEST(XGETTEXT, xgettext,
    [$ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null >/dev/null 2>&1 &&
     (if $ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  dnl Remove leftover from FreeBSD xgettext call.
  rm -f messages.po

  dnl Search for GNU msgmerge 0.11 or newer in the PATH.
  AM_PATH_PROG_WITH_TEST(MSGMERGE, msgmerge,
    [$ac_dir/$ac_word --update -q /dev/null /dev/null >/dev/null 2>&1], :)

  dnl This could go away some day; the PATH_PROG_WITH_TEST already does it.
  dnl Test whether we really found GNU msgfmt.
  if test "$GMSGFMT" != ":"; then
    dnl If it is no GNU msgfmt we define it as : so that the
    dnl Makefiles still can work.
    if $GMSGFMT --statistics /dev/null >/dev/null 2>&1 &&
       (if $GMSGFMT --statistics /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi); then
      : ;
    else
      GMSGFMT=`echo "$GMSGFMT" | sed -e 's,^.*/,,'`
      AC_MSG_RESULT(
        [found $GMSGFMT program is not GNU msgfmt; ignore it])
      GMSGFMT=":"
    fi
  fi

  dnl This could go away some day; the PATH_PROG_WITH_TEST already does it.
  dnl Test whether we really found GNU xgettext.
  if test "$XGETTEXT" != ":"; then
    dnl If it is no GNU xgettext we define it as : so that the
    dnl Makefiles still can work.
    if $XGETTEXT --omit-header --copyright-holder= --msgid-bugs-address= /dev/null >/dev/null 2>&1 &&
       (if $XGETTEXT --omit-header --copyright-holder= --msgid-bugs-address= /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi); then
      : ;
    else
      AC_MSG_RESULT(
        [found xgettext program is not GNU xgettext; ignore it])
      XGETTEXT=":"
    fi
    dnl Remove leftover from FreeBSD xgettext call.
    rm -f messages.po
  fi

  AC_OUTPUT_COMMANDS([
    for ac_file in $CONFIG_FILES; do
      # Support "outfile[:infile[:infile...]]"
      case "$ac_file" in
        *:*) ac_file=`echo "$ac_file"|sed 's%:.*%%'` ;;
      esac
      # PO directories have a Makefile.in generated from Makefile.in.in.
      case "$ac_file" in */Makefile.in)
        # Adjust a relative srcdir.
        ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
        ac_dir_suffix="/`echo "$ac_dir"|sed 's%^\./%%'`"
        ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
        # In autoconf-2.13 it is called $ac_given_srcdir.
        # In autoconf-2.50 it is called $srcdir.
        test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
        case "$ac_given_srcdir" in
          .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
          /*) top_srcdir="$ac_given_srcdir" ;;
          *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
        esac
        if test -f "$ac_given_srcdir/$ac_dir/POTFILES.in"; then
          rm -f "$ac_dir/POTFILES"
          test -n "$as_me" && echo "$as_me: creating $ac_dir/POTFILES" || echo "creating $ac_dir/POTFILES"
          cat "$ac_given_srcdir/$ac_dir/POTFILES.in" | sed -e "/^#/d" -e "/^[ 	]*\$/d" -e "s,.*,     $top_srcdir/& \\\\," | sed -e "\$s/\(.*\) \\\\/\1/" > "$ac_dir/POTFILES"
          POMAKEFILEDEPS="POTFILES.in"
          # ALL_LINGUAS, POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES depend
          # on $ac_dir but don't depend on user-specified configuration
          # parameters.
          if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
            # The LINGUAS file contains the set of available languages.
            if test -n "$OBSOLETE_ALL_LINGUAS"; then
              test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
            fi
            ALL_LINGUAS_=`sed -e "/^#/d" "$ac_given_srcdir/$ac_dir/LINGUAS"`
            # Hide the ALL_LINGUAS assigment from automake.
            eval 'ALL_LINGUAS''=$ALL_LINGUAS_'
            POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
          else
            # The set of available languages was given in configure.in.
            eval 'ALL_LINGUAS''=$OBSOLETE_ALL_LINGUAS'
          fi
          # Compute POFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
          # Compute UPDATEPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
          # Compute DUMMYPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
          # Compute GMOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
          case "$ac_given_srcdir" in
            .) srcdirpre= ;;
            *) srcdirpre='$(srcdir)/' ;;
          esac
          POFILES=
          UPDATEPOFILES=
          DUMMYPOFILES=
          GMOFILES=
          for lang in $ALL_LINGUAS; do
            POFILES="$POFILES $srcdirpre$lang.po"
            UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
            DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
            GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
          done
          # CATALOGS depends on both $ac_dir and the user's LINGUAS
          # environment variable.
          INST_LINGUAS=
          if test -n "$ALL_LINGUAS"; then
            for presentlang in $ALL_LINGUAS; do
              useit=no
              if test "%UNSET%" != "$LINGUAS"; then
                desiredlanguages="$LINGUAS"
              else
                desiredlanguages="$ALL_LINGUAS"
              fi
              for desiredlang in $desiredlanguages; do
                # Use the presentlang catalog if desiredlang is
                #   a. equal to presentlang, or
                #   b. a variant of presentlang (because in this case,
                #      presentlang can be used as a fallback for messages
                #      which are not translated in the desiredlang catalog).
                case "$desiredlang" in
                  "$presentlang"*) useit=yes;;
                esac
              done
              if test $useit = yes; then
                INST_LINGUAS="$INST_LINGUAS $presentlang"
              fi
            done
          fi
          CATALOGS=
          if test -n "$INST_LINGUAS"; then
            for lang in $INST_LINGUAS; do
              CATALOGS="$CATALOGS $lang.gmo"
            done
          fi
          test -n "$as_me" && echo "$as_me: creating $ac_dir/Makefile" || echo "creating $ac_dir/Makefile"
          sed -e "/^POTFILES =/r $ac_dir/POTFILES" -e "/^# Makevars/r $ac_given_srcdir/$ac_dir/Makevars" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@POMAKEFILEDEPS@|$POMAKEFILEDEPS|g" "$ac_dir/Makefile.in" > "$ac_dir/Makefile"
          for f in "$ac_given_srcdir/$ac_dir"/Rules-*; do
            if test -f "$f"; then
              case "$f" in
                *.orig | *.bak | *~) ;;
                *) cat "$f" >> "$ac_dir/Makefile" ;;
              esac
            fi
          done
        fi
        ;;
      esac
    done],
   [# Capture the value of obsolete ALL_LINGUAS because we need it to compute
    # POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES, CATALOGS. But hide it
    # from automake.
    eval 'OBSOLETE_ALL_LINGUAS''="$ALL_LINGUAS"'
    # Capture the value of LINGUAS because we need it to compute CATALOGS.
    LINGUAS="${LINGUAS-%UNSET%}"
   ])
])

dnl Postprocesses a Makefile in a directory containing PO files.
AC_DEFUN([AM_POSTPROCESS_PO_MAKEFILE],
[
  # When this code is run, in config.status, two variables have already been
  # set:
  # - OBSOLETE_ALL_LINGUAS is the value of LINGUAS set in configure.in,
  # - LINGUAS is the value of the environment variable LINGUAS at configure
  #   time.

changequote(,)dnl
  # Adjust a relative srcdir.
  ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
  ac_dir_suffix="/`echo "$ac_dir"|sed 's%^\./%%'`"
  ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
  # In autoconf-2.13 it is called $ac_given_srcdir.
  # In autoconf-2.50 it is called $srcdir.
  test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
  case "$ac_given_srcdir" in
    .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
    /*) top_srcdir="$ac_given_srcdir" ;;
    *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
  esac

  # Find a way to echo strings without interpreting backslash.
  if test "X`(echo '\t') 2>/dev/null`" = 'X\t'; then
    gt_echo='echo'
  else
    if test "X`(printf '%s\n' '\t') 2>/dev/null`" = 'X\t'; then
      gt_echo='printf %s\n'
    else
      echo_func () {
        cat <<EOT
$*
EOT
      }
      gt_echo='echo_func'
    fi
  fi

  # A sed script that extracts the value of VARIABLE from a Makefile.
  sed_x_variable='
# Test if the hold space is empty.
x
s/P/P/
x
ta
# Yes it was empty. Look if we have the expected variable definition.
/^[	 ]*VARIABLE[	 ]*=/{
  # Seen the first line of the variable definition.
  s/^[	 ]*VARIABLE[	 ]*=//
  ba
}
bd
:a
# Here we are processing a line from the variable definition.
# Remove comment, more precisely replace it with a space.
s/#.*$/ /
# See if the line ends in a backslash.
tb
:b
s/\\$//
# Print the line, without the trailing backslash.
p
tc
# There was no trailing backslash. The end of the variable definition is
# reached. Clear the hold space.
s/^.*$//
x
bd
:c
# A trailing backslash means that the variable definition continues in the
# next line. Put a nonempty string into the hold space to indicate this.
s/^.*$/P/
x
:d
'
changequote([,])dnl

  # Set POTFILES to the value of the Makefile variable POTFILES.
  sed_x_POTFILES="`$gt_echo \"$sed_x_variable\" | sed -e '/^ *#/d' -e 's/VARIABLE/POTFILES/g'`"
  POTFILES=`sed -n -e "$sed_x_POTFILES" < "$ac_file"`
  # Compute POTFILES_DEPS as
  #   $(foreach file, $(POTFILES), $(top_srcdir)/$(file))
  POTFILES_DEPS=
  for file in $POTFILES; do
    POTFILES_DEPS="$POTFILES_DEPS "'$(top_srcdir)/'"$file"
  done
  POMAKEFILEDEPS=""

  if test -n "$OBSOLETE_ALL_LINGUAS"; then
    test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
  fi
  if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
    # The LINGUAS file contains the set of available languages.
    ALL_LINGUAS_=`sed -e "/^#/d" "$ac_given_srcdir/$ac_dir/LINGUAS"`
    POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
  else
    # Set ALL_LINGUAS to the value of the Makefile variable LINGUAS.
    sed_x_LINGUAS="`$gt_echo \"$sed_x_variable\" | sed -e '/^ *#/d' -e 's/VARIABLE/LINGUAS/g'`"
    ALL_LINGUAS_=`sed -n -e "$sed_x_LINGUAS" < "$ac_file"`
  fi
  # Hide the ALL_LINGUAS assigment from automake.
  eval 'ALL_LINGUAS''=$ALL_LINGUAS_'
  # Compute POFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
  # Compute UPDATEPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
  # Compute DUMMYPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
  # Compute GMOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
  # Compute PROPERTIESFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(top_srcdir)/$(DOMAIN)_$(lang).properties)
  # Compute CLASSFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(top_srcdir)/$(DOMAIN)_$(lang).class)
  # Compute QMFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).qm)
  # Compute MSGFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang)).msg)
  # Compute RESOURCESDLLFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang))/$(DOMAIN).resources.dll)
  case "$ac_given_srcdir" in
    .) srcdirpre= ;;
    *) srcdirpre='$(srcdir)/' ;;
  esac
  POFILES=
  UPDATEPOFILES=
  DUMMYPOFILES=
  GMOFILES=
  PROPERTIESFILES=
  CLASSFILES=
  QMFILES=
  MSGFILES=
  RESOURCESDLLFILES=
  for lang in $ALL_LINGUAS; do
    POFILES="$POFILES $srcdirpre$lang.po"
    UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
    DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
    GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
    PROPERTIESFILES="$PROPERTIESFILES \$(top_srcdir)/\$(DOMAIN)_$lang.properties"
    CLASSFILES="$CLASSFILES \$(top_srcdir)/\$(DOMAIN)_$lang.class"
    QMFILES="$QMFILES $srcdirpre$lang.qm"
    frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
    MSGFILES="$MSGFILES $srcdirpre$frobbedlang.msg"
    frobbedlang=`echo $lang | sed -e 's/_/-/g'`
    RESOURCESDLLFILES="$RESOURCESDLLFILES $srcdirpre$frobbedlang/\$(DOMAIN).resources.dll"
  done
  # CATALOGS depends on both $ac_dir and the user's LINGUAS
  # environment variable.
  INST_LINGUAS=
  if test -n "$ALL_LINGUAS"; then
    for presentlang in $ALL_LINGUAS; do
      useit=no
      if test "%UNSET%" != "$LINGUAS"; then
        desiredlanguages="$LINGUAS"
      else
        desiredlanguages="$ALL_LINGUAS"
      fi
      for desiredlang in $desiredlanguages; do
        # Use the presentlang catalog if desiredlang is
        #   a. equal to presentlang, or
        #   b. a variant of presentlang (because in this case,
        #      presentlang can be used as a fallback for messages
        #      which are not translated in the desiredlang catalog).
        case "$desiredlang" in
          "$presentlang"*) useit=yes;;
        esac
      done
      if test $useit = yes; then
        INST_LINGUAS="$INST_LINGUAS $presentlang"
      fi
    done
  fi
  CATALOGS=
  JAVACATALOGS=
  QTCATALOGS=
  TCLCATALOGS=
  CSHARPCATALOGS=
  if test -n "$INST_LINGUAS"; then
    for lang in $INST_LINGUAS; do
      CATALOGS="$CATALOGS $lang.gmo"
      JAVACATALOGS="$JAVACATALOGS \$(DOMAIN)_$lang.properties"
      QTCATALOGS="$QTCATALOGS $lang.qm"
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      TCLCATALOGS="$TCLCATALOGS $frobbedlang.msg"
      frobbedlang=`echo $lang | sed -e 's/_/-/g'`
      CSHARPCATALOGS="$CSHARPCATALOGS $frobbedlang/\$(DOMAIN).resources.dll"
    done
  fi

  sed -e "s|@POTFILES_DEPS@|$POTFILES_DEPS|g" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@PROPERTIESFILES@|$PROPERTIESFILES|g" -e "s|@CLASSFILES@|$CLASSFILES|g" -e "s|@QMFILES@|$QMFILES|g" -e "s|@MSGFILES@|$MSGFILES|g" -e "s|@RESOURCESDLLFILES@|$RESOURCESDLLFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@JAVACATALOGS@|$JAVACATALOGS|g" -e "s|@QTCATALOGS@|$QTCATALOGS|g" -e "s|@TCLCATALOGS@|$TCLCATALOGS|g" -e "s|@CSHARPCATALOGS@|$CSHARPCATALOGS|g" -e 's,^#distdir:,distdir:,' < "$ac_file" > "$ac_file.tmp"
  if grep -l '@TCLCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang.msg: $lang.po
	@echo "\$(MSGFMT) -c --tcl -d \$(srcdir) -l $lang $srcdirpre$lang.po"; \
	\$(MSGFMT) -c --tcl -d "\$(srcdir)" -l $lang $srcdirpre$lang.po || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if grep -l '@CSHARPCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/_/-/g'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang/\$(DOMAIN).resources.dll: $lang.po
	@echo "\$(MSGFMT) -c --csharp -d \$(srcdir) -l $lang $srcdirpre$lang.po -r \$(DOMAIN)"; \
	\$(MSGFMT) -c --csharp -d "\$(srcdir)" -l $lang $srcdirpre$lang.po -r "\$(DOMAIN)" || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if test -n "$POMAKEFILEDEPS"; then
    cat >> "$ac_file.tmp" <<EOF
Makefile: $POMAKEFILEDEPS
EOF
  fi
  mv "$ac_file.tmp" "$ac_file"
])

# nls.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 1995-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

AC_DEFUN([AM_NLS],
[
  AC_MSG_CHECKING([whether NLS is requested])
  dnl Default is enabled NLS
  AC_ARG_ENABLE(nls,
    [  --disable-nls           do not use Native Language Support],
    USE_NLS=$enableval, USE_NLS=yes)
  AC_MSG_RESULT($USE_NLS)
  AC_SUBST(USE_NLS)
])

AC_DEFUN([AM_MKINSTALLDIRS],
[
  dnl If the AC_CONFIG_AUX_DIR macro for autoconf is used we possibly
  dnl find the mkinstalldirs script in another subdir but $(top_srcdir).
  dnl Try to locate it.
  MKINSTALLDIRS=
  if test -n "$ac_aux_dir"; then
    case "$ac_aux_dir" in
      /*) MKINSTALLDIRS="$ac_aux_dir/mkinstalldirs" ;;
      *) MKINSTALLDIRS="\$(top_builddir)/$ac_aux_dir/mkinstalldirs" ;;
    esac
  fi
  if test -z "$MKINSTALLDIRS"; then
    MKINSTALLDIRS="\$(top_srcdir)/mkinstalldirs"
  fi
  AC_SUBST(MKINSTALLDIRS)
])

# progtest.m4 serial 3 (gettext-0.12)
dnl Copyright (C) 1996-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1996.

# Search path for a program which passes the given test.

dnl AM_PATH_PROG_WITH_TEST(VARIABLE, PROG-TO-CHECK-FOR,
dnl   TEST-PERFORMED-ON-FOUND_PROGRAM [, VALUE-IF-NOT-FOUND [, PATH]])
AC_DEFUN([AM_PATH_PROG_WITH_TEST],
[
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=:
  fi
  rm -f conf$$.sh
fi

# Find out how to test for executable files. Don't use a zero-byte file,
# as systems may use methods other than mode bits to determine executability.
cat >conf$$.file <<_ASEOF
#! /bin/sh
exit 0
_ASEOF
chmod +x conf$$.file
if test -x conf$$.file >/dev/null 2>&1; then
  ac_executable_p="test -x"
else
  ac_executable_p="test -f"
fi
rm -f conf$$.file

# Extract the first word of "$2", so it can be a program name with args.
set dummy $2; ac_word=[$]2
AC_MSG_CHECKING([for $ac_word])
AC_CACHE_VAL(ac_cv_path_$1,
[case "[$]$1" in
  [[\\/]]* | ?:[[\\/]]*)
    ac_cv_path_$1="[$]$1" # Let the user override the test with a path.
    ;;
  *)
    ac_save_IFS="$IFS"; IFS=$PATH_SEPARATOR
    for ac_dir in ifelse([$5], , $PATH, [$5]); do
      IFS="$ac_save_IFS"
      test -z "$ac_dir" && ac_dir=.
      for ac_exec_ext in '' $ac_executable_extensions; do
        if $ac_executable_p "$ac_dir/$ac_word$ac_exec_ext"; then
          if [$3]; then
            ac_cv_path_$1="$ac_dir/$ac_word$ac_exec_ext"
            break 2
          fi
        fi
      done
    done
    IFS="$ac_save_IFS"
dnl If no 4th arg is given, leave the cache variable unset,
dnl so AC_PATH_PROGS will keep looking.
ifelse([$4], , , [  test -z "[$]ac_cv_path_$1" && ac_cv_path_$1="$4"
])dnl
    ;;
esac])dnl
$1="$ac_cv_path_$1"
if test ifelse([$4], , [-n "[$]$1"], ["[$]$1" != "$4"]); then
  AC_MSG_RESULT([$]$1)
else
  AC_MSG_RESULT(no)
fi
AC_SUBST($1)dnl
])

# iconv.m4 serial AM4 (gettext-0.11.3)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([AM_ICONV_LINKFLAGS_BODY],
[
  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([iconv])
])

AC_DEFUN([AM_ICONV_LINK],
[
  dnl Some systems have iconv in libc, some have it in libiconv (OSF/1 and
  dnl those with the standalone portable GNU libiconv installed).

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])

  dnl Add $INCICONV to CPPFLAGS before performing the following checks,
  dnl because if the user has installed libiconv and not disabled its use
  dnl via --without-libiconv-prefix, he wants to use it. The first
  dnl AC_TRY_LINK will then fail, the second AC_TRY_LINK will succeed.
  am_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCICONV])

  AC_CACHE_CHECK(for iconv, am_cv_func_iconv, [
    am_cv_func_iconv="no, consider installing GNU libiconv"
    am_cv_lib_iconv=no
    AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
      [iconv_t cd = iconv_open("","");
       iconv(cd,NULL,NULL,NULL,NULL);
       iconv_close(cd);],
      am_cv_func_iconv=yes)
    if test "$am_cv_func_iconv" != yes; then
      am_save_LIBS="$LIBS"
      LIBS="$LIBS $LIBICONV"
      AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
        [iconv_t cd = iconv_open("","");
         iconv(cd,NULL,NULL,NULL,NULL);
         iconv_close(cd);],
        am_cv_lib_iconv=yes
        am_cv_func_iconv=yes)
      LIBS="$am_save_LIBS"
    fi
  ])
  if test "$am_cv_func_iconv" = yes; then
    AC_DEFINE(HAVE_ICONV, 1, [Define if you have the iconv() function.])
  fi
  if test "$am_cv_lib_iconv" = yes; then
    AC_MSG_CHECKING([how to link with libiconv])
    AC_MSG_RESULT([$LIBICONV])
  else
    dnl If $LIBICONV didn't lead to a usable library, we don't need $INCICONV
    dnl either.
    CPPFLAGS="$am_save_CPPFLAGS"
    LIBICONV=
    LTLIBICONV=
  fi
  AC_SUBST(LIBICONV)
  AC_SUBST(LTLIBICONV)
])

AC_DEFUN([AM_ICONV],
[
  AM_ICONV_LINK
  if test "$am_cv_func_iconv" = yes; then
    AC_MSG_CHECKING([for iconv declaration])
    AC_CACHE_VAL(am_cv_proto_iconv, [
      AC_TRY_COMPILE([
#include <stdlib.h>
#include <iconv.h>
extern
#ifdef __cplusplus
"C"
#endif
#if defined(__STDC__) || defined(__cplusplus)
size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);
#else
size_t iconv();
#endif
], [], am_cv_proto_iconv_arg1="", am_cv_proto_iconv_arg1="const")
      am_cv_proto_iconv="extern size_t iconv (iconv_t cd, $am_cv_proto_iconv_arg1 char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);"])
    am_cv_proto_iconv=`echo "[$]am_cv_proto_iconv" | tr -s ' ' | sed -e 's/( /(/'`
    AC_MSG_RESULT([$]{ac_t:-
         }[$]am_cv_proto_iconv)
    AC_DEFINE_UNQUOTED(ICONV_CONST, $am_cv_proto_iconv_arg1,
      [Define as const if the declaration of iconv() needs const.])
  fi
])

# isc-posix.m4 serial 2 (gettext-0.11.2)
dnl Copyright (C) 1995-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

# This file is not needed with autoconf-2.53 and newer.  Remove it in 2005.

# This test replaces the one in autoconf.
# Currently this macro should have the same name as the autoconf macro
# because gettext's gettext.m4 (distributed in the automake package)
# still uses it.  Otherwise, the use in gettext.m4 makes autoheader
# give these diagnostics:
#   configure.in:556: AC_TRY_COMPILE was called before AC_ISC_POSIX
#   configure.in:556: AC_TRY_RUN was called before AC_ISC_POSIX

undefine([AC_ISC_POSIX])

AC_DEFUN([AC_ISC_POSIX],
  [
    dnl This test replaces the obsolescent AC_ISC_POSIX kludge.
    AC_CHECK_LIB(cposix, strerror, [LIBS="$LIBS -lcposix"])
  ]
)

# signed.m4 serial 1 (gettext-0.10.40)
dnl Copyright (C) 2001-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([bh_C_SIGNED],
[
  AC_CACHE_CHECK([for signed], bh_cv_c_signed,
   [AC_TRY_COMPILE(, [signed char x;], bh_cv_c_signed=yes, bh_cv_c_signed=no)])
  if test $bh_cv_c_signed = no; then
    AC_DEFINE(signed, ,
              [Define to empty if the C compiler doesn't support this keyword.])
  fi
])

# longlong.m4 serial 4
dnl Copyright (C) 1999-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_LONG_LONG if 'long long' works.

AC_DEFUN([jm_AC_TYPE_LONG_LONG],
[
  AC_CACHE_CHECK([for long long], ac_cv_type_long_long,
  [AC_TRY_LINK([long long ll = 1LL; int i = 63;],
    [long long llmax = (long long) -1;
     return ll << i | ll >> i | llmax / ll | llmax % ll;],
    ac_cv_type_long_long=yes,
    ac_cv_type_long_long=no)])
  if test $ac_cv_type_long_long = yes; then
    AC_DEFINE(HAVE_LONG_LONG, 1,
      [Define if you have the 'long long' type.])
  fi
])

# longdouble.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2002-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.
dnl Test whether the compiler supports the 'long double' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_LONGDOUBLE],
[
  AC_CACHE_CHECK([for long double], gt_cv_c_long_double,
    [if test "$GCC" = yes; then
       gt_cv_c_long_double=yes
     else
       AC_TRY_COMPILE([
         /* The Stardent Vistra knows sizeof(long double), but does not support it.  */
         long double foo = 0.0;
         /* On Ultrix 4.3 cc, long double is 4 and double is 8.  */
         int array [2*(sizeof(long double) >= sizeof(double)) - 1];
         ], ,
         gt_cv_c_long_double=yes, gt_cv_c_long_double=no)
     fi])
  if test $gt_cv_c_long_double = yes; then
    AC_DEFINE(HAVE_LONG_DOUBLE, 1, [Define if you have the 'long double' type.])
  fi
])

# wchar_t.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2002-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.
dnl Test whether <stddef.h> has the 'wchar_t' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WCHAR_T],
[
  AC_CACHE_CHECK([for wchar_t], gt_cv_c_wchar_t,
    [AC_TRY_COMPILE([#include <stddef.h>
       wchar_t foo = (wchar_t)'\0';], ,
       gt_cv_c_wchar_t=yes, gt_cv_c_wchar_t=no)])
  if test $gt_cv_c_wchar_t = yes; then
    AC_DEFINE(HAVE_WCHAR_T, 1, [Define if you have the 'wchar_t' type.])
  fi
])

# wint_t.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.
dnl Test whether <wchar.h> has the 'wint_t' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WINT_T],
[
  AC_CACHE_CHECK([for wint_t], gt_cv_c_wint_t,
    [AC_TRY_COMPILE([#include <wchar.h>
       wint_t foo = (wchar_t)'\0';], ,
       gt_cv_c_wint_t=yes, gt_cv_c_wint_t=no)])
  if test $gt_cv_c_wint_t = yes; then
    AC_DEFINE(HAVE_WINT_T, 1, [Define if you have the 'wint_t' type.])
  fi
])

# inttypes_h.m4 serial 5 (gettext-0.12)
dnl Copyright (C) 1997-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H_WITH_UINTMAX if <inttypes.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([jm_AC_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], jm_ac_cv_header_inttypes_h,
  [AC_TRY_COMPILE(
    [#include <sys/types.h>
#include <inttypes.h>],
    [uintmax_t i = (uintmax_t) -1;],
    jm_ac_cv_header_inttypes_h=yes,
    jm_ac_cv_header_inttypes_h=no)])
  if test $jm_ac_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H_WITH_UINTMAX, 1,
      [Define if <inttypes.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# stdint_h.m4 serial 3 (gettext-0.12)
dnl Copyright (C) 1997-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_STDINT_H_WITH_UINTMAX if <stdint.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([jm_AC_HEADER_STDINT_H],
[
  AC_CACHE_CHECK([for stdint.h], jm_ac_cv_header_stdint_h,
  [AC_TRY_COMPILE(
    [#include <sys/types.h>
#include <stdint.h>],
    [uintmax_t i = (uintmax_t) -1;],
    jm_ac_cv_header_stdint_h=yes,
    jm_ac_cv_header_stdint_h=no)])
  if test $jm_ac_cv_header_stdint_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_STDINT_H_WITH_UINTMAX, 1,
      [Define if <stdint.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# intmax.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2002-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.
dnl Test whether the system has the 'intmax_t' type, but don't attempt to
dnl find a replacement if it is lacking.

AC_DEFUN([gt_TYPE_INTMAX_T],
[
  AC_REQUIRE([jm_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([jm_AC_HEADER_STDINT_H])
  AC_CACHE_CHECK(for intmax_t, gt_cv_c_intmax_t,
    [AC_TRY_COMPILE([
#include <stddef.h> 
#include <stdlib.h>
#if HAVE_STDINT_H_WITH_UINTMAX
#include <stdint.h>
#endif
#if HAVE_INTTYPES_H_WITH_UINTMAX
#include <inttypes.h>
#endif
], [intmax_t x = -1;], gt_cv_c_intmax_t=yes, gt_cv_c_intmax_t=no)])
  if test $gt_cv_c_intmax_t = yes; then
    AC_DEFINE(HAVE_INTMAX_T, 1,
      [Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>.])
  fi
])

# printf-posix.m4 serial 2 (gettext-0.13.1)
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.
dnl Test whether the printf() function supports POSIX/XSI format strings with
dnl positions.

AC_DEFUN([gt_PRINTF_POSIX],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_CACHE_CHECK([whether printf() supports POSIX/XSI format strings],
    gt_cv_func_printf_posix,
    [
      AC_TRY_RUN([
#include <stdio.h>
#include <string.h>
/* The string "%2$d %1$d", with dollar characters protected from the shell's
   dollar expansion (possibly an autoconf bug).  */
static char format[] = { '%', '2', '$', 'd', ' ', '%', '1', '$', 'd', '\0' };
static char buf[100];
int main ()
{
  sprintf (buf, format, 33, 55);
  return (strcmp (buf, "55 33") != 0);
}], gt_cv_func_printf_posix=yes, gt_cv_func_printf_posix=no,
      [
        AC_EGREP_CPP(notposix, [
#if defined __NetBSD__ || defined _MSC_VER || defined __MINGW32__ || defined __CYGWIN__
  notposix
#endif
        ], gt_cv_func_printf_posix="guessing no",
           gt_cv_func_printf_posix="guessing yes")
      ])
    ])
  case $gt_cv_func_printf_posix in
    *yes)
      AC_DEFINE(HAVE_POSIX_PRINTF, 1,
        [Define if your printf() function supports format strings with positions.])
      ;;
  esac
])

# glibc21.m4 serial 2 (fileutils-4.1.3, gettext-0.10.40)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

# Test for the GNU C Library, version 2.1 or newer.
# From Bruno Haible.

AC_DEFUN([jm_GLIBC21],
  [
    AC_CACHE_CHECK(whether we are using the GNU C Library 2.1 or newer,
      ac_cv_gnu_library_2_1,
      [AC_EGREP_CPP([Lucky GNU user],
	[
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if (__GLIBC__ == 2 && __GLIBC_MINOR__ >= 1) || (__GLIBC__ > 2)
  Lucky GNU user
 #endif
#endif
	],
	ac_cv_gnu_library_2_1=yes,
	ac_cv_gnu_library_2_1=no)
      ]
    )
    AC_SUBST(GLIBC21)
    GLIBC21="$ac_cv_gnu_library_2_1"
  ]
)

# intdiv0.m4 serial 1 (gettext-0.11.3)
dnl Copyright (C) 2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([gt_INTDIV0],
[
  AC_REQUIRE([AC_PROG_CC])dnl
  AC_REQUIRE([AC_CANONICAL_HOST])dnl

  AC_CACHE_CHECK([whether integer division by zero raises SIGFPE],
    gt_cv_int_divbyzero_sigfpe,
    [
      AC_TRY_RUN([
#include <stdlib.h>
#include <signal.h>

static void
#ifdef __cplusplus
sigfpe_handler (int sig)
#else
sigfpe_handler (sig) int sig;
#endif
{
  /* Exit with code 0 if SIGFPE, with code 1 if any other signal.  */
  exit (sig != SIGFPE);
}

int x = 1;
int y = 0;
int z;
int nan;

int main ()
{
  signal (SIGFPE, sigfpe_handler);
/* IRIX and AIX (when "xlc -qcheck" is used) yield signal SIGTRAP.  */
#if (defined (__sgi) || defined (_AIX)) && defined (SIGTRAP)
  signal (SIGTRAP, sigfpe_handler);
#endif
/* Linux/SPARC yields signal SIGILL.  */
#if defined (__sparc__) && defined (__linux__)
  signal (SIGILL, sigfpe_handler);
#endif

  z = x / y;
  nan = y / y;
  exit (1);
}
], gt_cv_int_divbyzero_sigfpe=yes, gt_cv_int_divbyzero_sigfpe=no,
        [
          # Guess based on the CPU.
          case "$host_cpu" in
            alpha* | i[34567]86 | m68k | s390*)
              gt_cv_int_divbyzero_sigfpe="guessing yes";;
            *)
              gt_cv_int_divbyzero_sigfpe="guessing no";;
          esac
        ])
    ])
  case "$gt_cv_int_divbyzero_sigfpe" in
    *yes) value=1;;
    *) value=0;;
  esac
  AC_DEFINE_UNQUOTED(INTDIV0_RAISES_SIGFPE, $value,
    [Define if integer division by zero raises signal SIGFPE.])
])

# uintmax_t.m4 serial 7 (gettext-0.12)
dnl Copyright (C) 1997-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

AC_PREREQ(2.13)

# Define uintmax_t to 'unsigned long' or 'unsigned long long'
# if it is not already defined in <stdint.h> or <inttypes.h>.

AC_DEFUN([jm_AC_TYPE_UINTMAX_T],
[
  AC_REQUIRE([jm_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([jm_AC_HEADER_STDINT_H])
  if test $jm_ac_cv_header_inttypes_h = no && test $jm_ac_cv_header_stdint_h = no; then
    AC_REQUIRE([jm_AC_TYPE_UNSIGNED_LONG_LONG])
    test $ac_cv_type_unsigned_long_long = yes \
      && ac_type='unsigned long long' \
      || ac_type='unsigned long'
    AC_DEFINE_UNQUOTED(uintmax_t, $ac_type,
      [Define to unsigned long or unsigned long long
       if <stdint.h> and <inttypes.h> don't define.])
  else
    AC_DEFINE(HAVE_UINTMAX_T, 1,
      [Define if you have the 'uintmax_t' type in <stdint.h> or <inttypes.h>.])
  fi
])

# ulonglong.m4 serial 3
dnl Copyright (C) 1999-2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_UNSIGNED_LONG_LONG if 'unsigned long long' works.

AC_DEFUN([jm_AC_TYPE_UNSIGNED_LONG_LONG],
[
  AC_CACHE_CHECK([for unsigned long long], ac_cv_type_unsigned_long_long,
  [AC_TRY_LINK([unsigned long long ull = 1ULL; int i = 63;],
    [unsigned long long ullmax = (unsigned long long) -1;
     return ull << i | ull >> i | ullmax / ull | ullmax % ull;],
    ac_cv_type_unsigned_long_long=yes,
    ac_cv_type_unsigned_long_long=no)])
  if test $ac_cv_type_unsigned_long_long = yes; then
    AC_DEFINE(HAVE_UNSIGNED_LONG_LONG, 1,
      [Define if you have the 'unsigned long long' type.])
  fi
])

# inttypes.m4 serial 1 (gettext-0.11.4)
dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H if <inttypes.h> exists and doesn't clash with
# <sys/types.h>.

AC_DEFUN([gt_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], gt_cv_header_inttypes_h,
  [
    AC_TRY_COMPILE(
      [#include <sys/types.h>
#include <inttypes.h>],
      [], gt_cv_header_inttypes_h=yes, gt_cv_header_inttypes_h=no)
  ])
  if test $gt_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H, 1,
      [Define if <inttypes.h> exists and doesn't clash with <sys/types.h>.])
  fi
])

# inttypes-pri.m4 serial 1 (gettext-0.11.4)
dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

# Define PRI_MACROS_BROKEN if <inttypes.h> exists and defines the PRI*
# macros to non-string values.  This is the case on AIX 4.3.3.

AC_DEFUN([gt_INTTYPES_PRI],
[
  AC_REQUIRE([gt_HEADER_INTTYPES_H])
  if test $gt_cv_header_inttypes_h = yes; then
    AC_CACHE_CHECK([whether the inttypes.h PRIxNN macros are broken],
      gt_cv_inttypes_pri_broken,
      [
        AC_TRY_COMPILE([#include <inttypes.h>
#ifdef PRId32
char *p = PRId32;
#endif
], [], gt_cv_inttypes_pri_broken=no, gt_cv_inttypes_pri_broken=yes)
      ])
  fi
  if test "$gt_cv_inttypes_pri_broken" = yes; then
    AC_DEFINE_UNQUOTED(PRI_MACROS_BROKEN, 1,
      [Define if <inttypes.h> exists and defines unusable PRI* macros.])
  fi
])

# xsize.m4 serial 2
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

AC_DEFUN([gl_XSIZE],
[
  dnl Prerequisites of lib/xsize.h.
  AC_REQUIRE([gl_SIZE_MAX])
  AC_CHECK_HEADERS(stdint.h)
])

# size_max.m4 serial 2
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([gl_SIZE_MAX],
[
  AC_CHECK_HEADERS(stdint.h)
  dnl First test whether the system already has SIZE_MAX.
  AC_MSG_CHECKING([for SIZE_MAX])
  result=
  AC_EGREP_CPP([Found it], [
#include <limits.h>
#if HAVE_STDINT_H
#include <stdint.h>
#endif
#ifdef SIZE_MAX
Found it
#endif
], result=yes)
  if test -z "$result"; then
    dnl Define it ourselves. Here we assume that the type 'size_t' is not wider
    dnl than the type 'unsigned long'.
    dnl The _AC_COMPUTE_INT macro works up to LONG_MAX, since it uses 'expr',
    dnl which is guaranteed to work from LONG_MIN to LONG_MAX.
    _AC_COMPUTE_INT([~(size_t)0 / 10], res_hi,
      [#include <stddef.h>], result=?)
    _AC_COMPUTE_INT([~(size_t)0 % 10], res_lo,
      [#include <stddef.h>], result=?)
    _AC_COMPUTE_INT([sizeof (size_t) <= sizeof (unsigned int)], fits_in_uint,
      [#include <stddef.h>], result=?)
    if test "$fits_in_uint" = 1; then
      dnl Even though SIZE_MAX fits in an unsigned int, it must be of type
      dnl 'unsigned long' if the type 'size_t' is the same as 'unsigned long'.
      AC_TRY_COMPILE([#include <stddef.h>
        extern size_t foo;
        extern unsigned long foo;
        ], [], fits_in_uint=0)
    fi
    if test -z "$result"; then
      if test "$fits_in_uint" = 1; then
        result="$res_hi$res_lo"U
      else
        result="$res_hi$res_lo"UL
      fi
    else
      dnl Shouldn't happen, but who knows...
      result='~(size_t)0'
    fi
  fi
  AC_MSG_RESULT([$result])
  if test "$result" != yes; then
    AC_DEFINE_UNQUOTED([SIZE_MAX], [$result],
      [Define as the maximum value of type 'size_t', if the system doesn't define it.])
  fi
])

# codeset.m4 serial AM1 (gettext-0.10.40)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible.

AC_DEFUN([AM_LANGINFO_CODESET],
[
  AC_CACHE_CHECK([for nl_langinfo and CODESET], am_cv_langinfo_codeset,
    [AC_TRY_LINK([#include <langinfo.h>],
      [char* cs = nl_langinfo(CODESET);],
      am_cv_langinfo_codeset=yes,
      am_cv_langinfo_codeset=no)
    ])
  if test $am_cv_langinfo_codeset = yes; then
    AC_DEFINE(HAVE_LANGINFO_CODESET, 1,
      [Define if you have <langinfo.h> and nl_langinfo(CODESET).])
  fi
])

# lcmessage.m4 serial 3 (gettext-0.11.3)
dnl Copyright (C) 1995-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995.

# Check whether LC_MESSAGES is available in <locale.h>.

AC_DEFUN([AM_LC_MESSAGES],
[
  AC_CACHE_CHECK([for LC_MESSAGES], am_cv_val_LC_MESSAGES,
    [AC_TRY_LINK([#include <locale.h>], [return LC_MESSAGES],
       am_cv_val_LC_MESSAGES=yes, am_cv_val_LC_MESSAGES=no)])
  if test $am_cv_val_LC_MESSAGES = yes; then
    AC_DEFINE(HAVE_LC_MESSAGES, 1,
      [Define if your <locale.h> file defines LC_MESSAGES.])
  fi
])

