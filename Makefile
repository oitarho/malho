CC = gcc
CFLAGS = -Wall -Werror -Iinclude

SRCS = src/main.c src/database.c
OBJS = $(SRCS:.c=.o)
TARGET = database

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -f $(OBJS) $(TARGET)
