cmake_minimum_required(VERSION 3.10)

project(HelloWorld)

#set(SOURCES main.c utils.c)

file(GLOB SOURCES "./*.c")

add_executable(hello ${SOURCES})
