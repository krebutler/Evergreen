#----------------------------------------------------------
# Makefile.am for openils
# Author: Kevin Beswick (kevinbeswick00@gmail.com)
## Process this file with automake to generate Makefile.in
#----------------------------------------------------------

# Set some variables

export PREFIX=@prefix@
export BINDIR=@bindir@
export LIBDIR=@libdir@
export perldir=$(LIBDIR)/perl5
export INCLUDEDIR=@includedir@
export ETCDIR=@sysconfdir@
export WEBDIR=@localstatedir@/web
export CGIDIR=@localstatedir@/cgi-bin
export TEMPLATEDIR=@localstatedir@/templates
export UPDATESDIR=@localstatedir@/updates

export datadir=@localstatedir@/data
export circrulesdir=@localstatedir@/circ
export catalogscriptdir=@localstatedir@/catalog
export penaltyrulesdir=@localstatedir@/penalty
export XSLDIR=@localstatedir@/xsl
export REPORTERDIR=@localstatedir@/reporter
export SOCK=@localstatedir@/lock
export PID=@localstatedir@/run
export LOG=@localstatedir@/log



# Derived from autoconf:
export TMP = @TMP@
export APXS2 = @APXS2@
export LIBXML2_HEADERS = @LIBXML2_HEADERS@
export DBI_LIBS = @DBI_LIBS@
export OPENSRF_HEADERS = @OPENSRF_HEADERS@
export OPENSRF_LIBS = @OPENSRF_LIBS@

SUBDIRS = Open-ILS/src Open-ILS/web Open-ILS/updates Open-ILS/xul/staff_client

