# dmenu version
VERSION = 4.9

# paths
PREFIX = /usr
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = $(X11INC)/freetype2

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC)
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS)

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" \
	   -D_FORTIFY_SOURCE=2 $(XINERAMAFLAGS)
CFLAGS   = -std=c99 -pedantic -Wall -O2 -flto=thin $(INCS) $(CPPFLAGS) \
	   -Wformat -Wformat-security -fstack-clash-protection -fstack-protector-strong \
	   -fcf-protection
LDFLAGS  = -flto=thin -Wl,-O2 -Wl,-z,relro,-z,now -Wl,--as-needed $(LIBS)

# compiler and linker
CC = clang
