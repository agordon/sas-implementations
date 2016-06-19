
SRC=compile.c main.c misc.c process.c
HDR=defs.h  extern.h
OBJ=$(SRC:.c=.o)

CFLAGS=-D_GNU_SOURCE
CPPFLAGS=-I..
LIBS=-lbsd

.PHONY: all
all: sed

sed: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

%.o: %.c $(HDR)

.PHONY: clean
clean:
	rm -f $(OBJ) sed
