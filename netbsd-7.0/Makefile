.PHONY: all
all: bin/netbsd-7.0-awk bin/netbsd-7.0-sed

#
# awk
#
bin/netbsd-7.0-awk: awk/awk
	mkdir -p bin
	cp awk/awk bin/netbsd-7.0-awk

awk/awk:
	$(MAKE) -C awk

#
# sed
#
bin/netbsd-7.0-sed: sed/sed
	mkdir -p bin
	cp sed/sed bin/netbsd-7.0-sed

sed/sed:
	$(MAKE) -C sed


.PHONY: clean
clean:
	-$(MAKE) -C sed clean
	-$(MAKE) -C awk clean
	-rm -f bin/netbsd-7.0-*
