EXEC := yafm
CC := gcc
CFLAGS := -std=gnu99 -Wall -Wextra -g -pedantic -O2
LDLIBS := -lncurses

INCDIR := inc
SRCDIR := src

SOURCES := $(wildcard $(SRCDIR)/*.c)
INCLUDES := -I $(INCDIR)

all: clean $(EXEC)

$(EXEC):
	$(CC) $(CFLAGS) $(INCLUDES) $(SOURCES) $(LDLIBS) -o $(EXEC)

clean:
	rm -f $(EXEC)
