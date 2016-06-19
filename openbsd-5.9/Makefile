.PHONY: all
all: bin/openbsd-5.9-awk bin/openbsd-5.9-sed

#
# awk
#
bin/openbsd-5.9-awk: awk/awk
	mkdir -p bin
	cp awk/awk bin/openbsd-5.9-awk

awk/awk:
	$(MAKE) -C awk

#
# sed
#
bin/openbsd-5.9-sed: sed/sed
	mkdir -p bin
	cp sed/sed bin/openbsd-5.9-sed

sed/sed:
	$(MAKE) -C sed


.PHONY: clean
clean:
	-$(MAKE) -C sed clean
	-$(MAKE) -C awk clean
	-rm -f bin/openbsd-5.9-*
