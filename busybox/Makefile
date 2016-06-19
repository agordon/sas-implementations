VER=1.24.2

.PHONY: all
all:
	sh ./setup.sh "$(VER)"

.PHONY: clean
clean:
	$(MAKE) -C busybox-$(VER)
	rm ./bin/busybox-sas
