SUBDIRS= gnu

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