
SRC=compile.c main.c misc.c process.c
HDR=defs.h extern.h
OBJ=$(SRC:.c=.o)

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
