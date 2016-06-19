
.PHONY: all
all: bin/heirloom-sh \
	bin/heirloom-nawk bin/heirloom-oawk \
	bin/heirloom-sed


#
# Shell
#
bin/heirloom-sh: sh/sh
	mkdir -p bin
	cp sh/sh bin/heirloom-sh

sh/sh:
	$(MAKE) -C sh

#
# New awk
#
bin/heirloom-nawk: nawk/awk
	mkdir -p bin
	cp nawk/awk bin/heirloom-nawk
	cp nawk/awk_su3 bin/heirloom-nawk_su3
	cp nawk/awk_sus bin/heirloom-nawk_sus

nawk/awk: libuxre/libuxre.a libcommon/libcommon.a
	$(MAKE) -C nawk

#
# oawk
#
bin/heirloom-oawk: oawk/awk
	mkdir -p bin
	cp oawk/awk bin/heirloom-oawk

oawk/awk: libuxre/libuxre.a libcommon/libcommon.a
	$(MAKE) -C oawk

#
# sed
#
bin/heirloom-sed: sed/sed
	mkdir -p bin
	cp sed/sed bin/heirloom-sed
	cp sed/sed_s42 bin/heirloom-sed_s42
	cp sed/sed_sus bin/heirloom-sed_sus
	cp sed/sed_su3 bin/heirloom-sed_su3

sed/sed: libuxre/libuxre.a libcommon/libcommon.a
	$(MAKE) -C sed

# Support libraries
libuxre/libuxre.a:
	$(MAKE) -C libuxre

libcommon/libcommon.a:
	$(MAKE) -C libcommon


.PHONY: clean
clean:
	-$(MAKE) -C sh clean
	-$(MAKE) -C nawk clean
	-$(MAKE) -C oawk clean
	-$(MAKE) -C sed clean
	-$(MAKE) -C libuxre clean
	-$(MAKE) -C libcommon clean
	-rm -f bin/heirloom-* libuxre/libuxre.a libcommon/libcommon.a
