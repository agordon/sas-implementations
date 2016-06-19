SUBDIRS= gnu \
	busybox \
	heirloom \
	freebsd-10 \
	netbsd-7.0 \
	openbsd-5.9 \
	other-shells

.PHONY: all
all:
	mkdir -p ./bin/
	for d in $(SUBDIRS) ; do \
	  $(MAKE) -C "$$d" ; \
	  cp "$$d/bin/"* ./bin/ ; \
	done

.PHONY: clean
clean:
	for d in $(SUBDIRS) ; do $(MAKE) -C "$$d" clean ; done
