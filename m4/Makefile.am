## Process this file with automake to produce Makefile.in.
EXTRA_DIST =
EXTRA_DIST += Makefile.am.in
EXTRA_DIST += afs.m4
EXTRA_DIST += alloca.m4
EXTRA_DIST += basename.m4
EXTRA_DIST += c-strtod.m4
EXTRA_DIST += codeset.m4
EXTRA_DIST += dos.m4
EXTRA_DIST += error.m4
EXTRA_DIST += exitfail.m4
EXTRA_DIST += extensions.m4
EXTRA_DIST += fcntl-safer.m4
EXTRA_DIST += fstypename.m4
EXTRA_DIST += fsusage.m4
EXTRA_DIST += getopt.m4
EXTRA_DIST += gettext.m4
EXTRA_DIST += glibc21.m4
EXTRA_DIST += iconv.m4
EXTRA_DIST += inttypes-pri.m4
EXTRA_DIST += inttypes.m4
EXTRA_DIST += inttypes_h.m4
EXTRA_DIST += lib-ld.m4
EXTRA_DIST += lib-link.m4
EXTRA_DIST += lib-prefix.m4
EXTRA_DIST += longdouble.m4
EXTRA_DIST += longlong.m4
EXTRA_DIST += ls-mntd-fs.m4
EXTRA_DIST += mountlist.m4
EXTRA_DIST += nls.m4
EXTRA_DIST += np_coreutils.m4
EXTRA_DIST += np_curl.m4
EXTRA_DIST += onceonly_2_57.m4
EXTRA_DIST += po.m4
EXTRA_DIST += progtest.m4
EXTRA_DIST += regex.m4
EXTRA_DIST += restrict.m4
EXTRA_DIST += signed.m4
EXTRA_DIST += stdbool.m4
EXTRA_DIST += stdint_h.m4
EXTRA_DIST += uintmax_t.m4
EXTRA_DIST += ulonglong.m4
EXTRA_DIST += unistd-safer.m4
EXTRA_DIST += unlocked-io.m4
EXTRA_DIST += wchar_t.m4
EXTRA_DIST += wint_t.m4
EXTRA_DIST += xalloc.m4

Makefile.am: Makefile.am.in
	rm -f $@ $@t
	(echo "## Process this file with automake to produce Makefile.in."; \
	 echo EXTRA_DIST =;				\
	 echo "EXTRA_DIST += Makefile.am.in";		\
	 ls -1 *.m4 | sed 's/^/EXTRA_DIST += /'; echo )	\
	  >> $@t
	sed -n '/^Makefile\.am:/,$$p' $@.in >> $@t
	chmod a-w $@t
	mv $@t $@

print_coreutil_files:
	@echo $(EXTRA_DIST)
