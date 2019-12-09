cmake_minimum_required (VERSION 2.6)

project (myc)

Find_Package(BISON REQUIRED)

bison_target(grammar grammar.ypp ${CMAKE_CURRENT_BINARY_DIR}/grammar.tab.cpp)

add_executable(myc myc.cpp ${BISON_grammar_OUTPUTS})
#add_executable(myc myc.cpp)
