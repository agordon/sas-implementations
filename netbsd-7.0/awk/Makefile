
SRC=b.c lex.c lib.c main.c parse.c run.c tran.c
OBJ=$(SRC:.c=.o)
HDR=awk.h proto.h ytab.h

GENSRC=awkgram.c proctab.c
GENOBJ=awkgram.o proctab.o
GENHDR=awkgram.h ytab.h

CPPFLAGS=-I..
LIBS=-lbsd -lm

.PHONY: all
all: awk

awk: $(OBJ) $(GENOBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

b.o: ytab.h

ytab.h: awkgram.h
	ln -sf $^ $@

awkgram.h awkgram.c: awkgram.y
	$(YACC) --defines=awkgram.h -o awkgram.c $<

maketab: maketab.c

proctab.c: maketab
	./maketab > $@

.PHONY: clean
clean:
	rm -f $(OBJ) $(GENSRC) $(GENOBJ) $(GENHDR) maketab awk
