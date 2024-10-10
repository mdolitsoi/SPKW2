LIB_NAME = libcalculator.a   
TARGET = calculator         

all: $(LIB_NAME) $(TARGET)

$(LIB_NAME): src/calculator.cpp
    g++ -c src/calculator.cpp -Iinclude -o calculator.o
    ar rcs $(LIB_NAME) calculator.o

$(TARGET): src/main.cpp $(LIB_NAME)
    g++ src/main.cpp -L. -lcalculator -Iinclude -o $(TARGET)

clean:
    rm -f .o.a $(TARGET)