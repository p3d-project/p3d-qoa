CC ?= gcc

TARGET_CONV ?= qoaconv
CFLAGS_CONV ?= -std=c99 -O3
LFLAGS_CONV ?= -lm

all: $(TARGET_CONV)

conv: $(TARGET_CONV)
$(TARGET_CONV): source/$(TARGET_CONV).c source/qoa.h
	$(CC) $(CFLAGS_CONV) source/$(TARGET_CONV).c -o $(TARGET_CONV) $(LFLAGS_CONV)

.PHONY: clean
clean:
	$(RM) $(TARGET_CONV)
