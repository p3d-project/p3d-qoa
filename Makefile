CC ?= gcc

TARGET_CONV ?= qoaconv
CFLAGS_CONV ?= -std=c99 -O3
LFLAGS_CONV ?= -lm
INCLUDES_CONV ?= -I.
DEPS_CONV = source/$(TARGET_CONV).c source/qoa.h libs/dr_libs/dr_mp3.h

all: $(TARGET_CONV)

conv: $(TARGET_CONV)
$(TARGET_CONV): $(DEPS_CONV)
	$(CC) $(CFLAGS_CONV) $(INCLUDES_CONV) source/$(TARGET_CONV).c -o $(TARGET_CONV) $(LFLAGS_CONV)

.PHONY: clean
clean:
	$(RM) $(TARGET_CONV)
