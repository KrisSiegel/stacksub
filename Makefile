TARGET=stacksub
CC=g++
CFLAGS=-std=gnu11 -O3 -Wall -Wextra -Wpedantic -Wstrict-aliasing
SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:.cpp=.o)

all: $(TARGET)

${TARGET}: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean

clean:
	@rm -rf $(OBJ)
	@rm -rf $(TARGET)

run: $(TARGET)
	./$(TARGET)