TARGET = a.out

LD = gcc
LDFLAGS = -Wall

CC = gcc
CFLAGS = -Wall -O2

OBJS = main.o sub1.o sub2.o
DEFS = defs.h

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

$(OBJS): $(DEFS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

test: $(TARGET)
	./$<

clean:
	rm -rf $(TARGET) $(OBJS)
