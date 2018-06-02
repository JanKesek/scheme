# Copyright (C) 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994,
#     1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004,
#     2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014
#     Massachusetts Institute of Technology
#
# This file is part of MIT/GNU Scheme.
#
# MIT/GNU Scheme is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of the
# License, or (at your option) any later version.
#
# MIT/GNU Scheme is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with MIT/GNU Scheme; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
# 02110-1301, USA.

# **** BEGIN BOILERPLATE ****

SHELL = /bin/bash



srcdir = .
top_srcdir = .

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datarootdir = ${prefix}/share
datadir = ${datarootdir}
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${datarootdir}/info
mandir = ${datarootdir}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =
top_builddir = .

INSTALL = /usr/bin/install -c --preserve-timestamps
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}

LN_S = ln -s
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs

# **** END BOILERPLATE ****

htmldir = ${exec_prefix}/lib/mit-scheme/doc
pdfdir = ${exec_prefix}/lib/mit-scheme/doc
psdir = ${exec_prefix}/lib/mit-scheme/doc
INST_TARGETS =  install-html install-pdf install-ps

SUBDIRS = ffi imail ref-manual sos user-manual
DISTCLEAN_FILES = Makefile make-common config.log config.status

all:
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

mostlyclean:
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

clean:
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

distclean:
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done
	rm -f $(DISTCLEAN_FILES)

maintainer-clean:
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done
	rm -f $(DISTCLEAN_FILES) configure
	rm -rf autom4te.cache

tags TAGS:

install: install-config install-info-gz install-man $(INST_TARGETS)

install-config: doc-config.scm
	$(mkinstalldirs) $(DESTDIR)$(infodir)
	$(INSTALL_DATA) $< $(DESTDIR)$(infodir)/mit-scheme-doc-config.scm

doc-config.scm:
	@echo "Saving documentation configuration."
	@ ( echo "(QUOTE"; \
	    echo " ((INSTALL \"$(INSTALL_DATA)\")"; \
	    echo "  (HTMLDIR \"${htmldir}\")"; \
	    echo "  (PDFDIR \"${pdfdir}\")"; \
	    echo "  (PSDIR \"${psdir}\")))" ) >doc-config.scm

install-info-gz install-info:
	$(mkinstalldirs) $(DESTDIR)$(infodir)
	if [ ! -e $(DESTDIR)$(infodir)/dir ]; then \
	    $(INSTALL_DATA) info-dir $(DESTDIR)$(infodir)/dir; fi
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

install-man:
	$(mkinstalldirs) $(DESTDIR)$(mandir)/man1
	$(INSTALL_DATA) scheme.1 $(DESTDIR)$(mandir)/man1/.

install-html:
	$(mkinstalldirs) $(DESTDIR)$(htmldir)
	$(INSTALL_DATA) index.html $(DESTDIR)$(htmldir)/.
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

install-pdf:
	$(mkinstalldirs) $(DESTDIR)$(pdfdir)
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

install-ps:
	$(mkinstalldirs) $(DESTDIR)$(psdir)
	@for D in $(SUBDIRS); do \
	    echo "making $@ in $${D}";\
	    ( cd $${D} && $(MAKE) $@ ) || exit 1;\
	done

.PHONY: all mostlyclean clean distclean maintainer-clean tags TAGS
.PHONY: install install-man install-info install-html install-pdf install-ps
