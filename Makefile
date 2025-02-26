JAVAC = javac
JAVA = java
BUILD_DIR = build
SOURCE_DIR = lox
BIN_DIR = $(BUILD_DIR)/bin
BINARY = $(BIN_DIR)/lox

.PHONY: all clean install run

all: $(BUILD_DIR) $(BINARY)
	$(JAVAC) -d $(BUILD_DIR) $(SOURCE_DIR)/*.java

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BINARY): | $(BIN_DIR)
	echo '#!/bin/sh' > $(BINARY)
	echo 'java -cp $(shell pwd)/$(BUILD_DIR) com.karpreters.lox.Lox "$$@"' >> $(BINARY)
	chmod +x $(BINARY)

install: all
	ln -sf $(shell pwd)/$(BINARY) ~/bin/lox

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

run: all
	$(BINARY)
