CC = gcc
CFLAGS = -Wall -O2
TARGET = hello.exe

all: $(TARGET)

$(TARGET): main.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c

clean:
	del $(TARGET) 2>nul || true
	