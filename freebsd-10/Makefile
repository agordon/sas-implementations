.PHONY: all
all: bin/freebsd-10-awk bin/freebsd-10-sed

#
# awk
#
bin/freebsd-10-awk: one-true-awk/awk
	mkdir -p bin
	cp one-true-awk/awk bin/freebsd-10-awk

one-true-awk/awk:
	$(MAKE) -C one-true-awk

#
# sed
#
bin/freebsd-10-sed: sed/sed
	mkdir -p bin
	cp sed/sed bin/freebsd-10-sed

sed/sed:
	$(MAKE) -C sed


.PHONY: clean
clean:
	-$(MAKE) -C sed clean
	-$(MAKE) -C one-true-awk clean
	-rm -f bin/freebsd-10-*
