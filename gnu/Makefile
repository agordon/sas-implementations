
PROGS= \
       bash-3.2.57 \
       bash-4.3.30 \
       gawk-3.1.8 \
       gawk-4.1.3 \
       sed-3.02 \
       sed-4.0.6 \
       sed-4.2.2

.PHONY: all
all:
	for d in $(PROGS) ; \
	do \
	  sh setup.sh "$$d" || exit 1; \
	done

.PHONY: clean
clean:
	for d in $(PROGS) ; \
	do \
	  $(MAKE) -C "$$d" clean ; \
	done
	rm -f ./bin/*
