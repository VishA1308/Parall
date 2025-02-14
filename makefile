# Определение компилятора и флагов
CXX = g++
CXXFLAGS = -std=c++11 -O2

# Определение исходного файла и исполняемого файла
SRC = main.cpp
TARGET = program
BUILD_DIR = build

# Определение флагов для выбора типа данных
USE_DOUBLE = 0

ifeq ($(USE_DOUBLE), 1)
    CXXFLAGS += -DUSE_DOUBLE
endif

# Правило для создания директории build
dir:
	@mkdir -p $(BUILD_DIR)

# Правило для компиляции исполняемого файла
build_main:
	$(CXX) $(SRC) $(CXXFLAGS) -o $(BUILD_DIR)/$(TARGET)


# Правило для очистки
clean:
	@rm -rf $(BUILD_DIR)

# Правило по умолчанию
.PHONY: all
all: clean dir build_main

