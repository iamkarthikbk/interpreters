JAVAC = javac
JAVA = java
BUILD_DIR = build
SOURCE_DIR = lox

.PHONY: all clean run

all: $(BUILD_DIR)
	$(JAVAC) -d $(BUILD_DIR) $(SOURCE_DIR)/*.java

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

run: all
	$(JAVA) -cp $(BUILD_DIR) com.karpreters.lox.Lox
