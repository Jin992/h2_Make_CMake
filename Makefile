APP_NAME = calculator
LIB_NAME = calc
CXX = g++
CXXFLAGS = -Wall -Wextra -Werror -Wpedantic -Wshadow -Wundef -Wno-missing-field-initializers
LIB_SRC = src/calculator.cpp
SRC = src/main.cpp
SRC_OBJ = main.o
LIB_DIR = -L ./
LIB_OBJ = calculator.o
INCLUDE = -Iinclude

all: lib $(SRC)
	$(CXX) $(CXXFLAGS) -c $(INCLUDE) $(SRC) -o $(SRC_OBJ)
	$(CXX) $(CXXFLAGS) $(SRC_OBJ) $(LIB_DIR) -l$(LIB_NAME)  -o $(APP_NAME)

lib: $(LIB_SRC)
	$(CXX) $(CXXFLAGS) -c $(INCLUDE) $(LIB_SRC) -o $(LIB_OBJ)
	ar rcs lib$(LIB_NAME).a $(LIB_OBJ)

clean:
	/bin/rm -f $(SRC_OBJ) $(LIB_OBJ)

fclean: clean
	/bin/rm -f $(APP_NAME) lib$(LIB_NAME).a
	
re: fclean all
