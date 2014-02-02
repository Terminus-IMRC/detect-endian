PROG=detect-endian
SRCS=detect-endian.c
OBJS=$(SRCS:%.c=%.c.o)
ALLDEP=$(MAKEFILE_LIST)

all: $(PROG)

$(PROG): $(OBJS) $(ALLDEP)
	$(LINK.o) $(OUTPUT_OPTION) $(OBJS)

%.c.o: %.c $(ALLDEP)
	$(COMPILE.c) $(OUTPUT_OPTION) $<

run: $(PROG)
	./$(PROG)

.PHONY: clean
clean:
	$(RM) $(PROG) $(OBJS)
