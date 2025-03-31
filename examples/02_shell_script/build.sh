#!/bin/bash

# 检查源文件是否存在
if [ ! -f "main.c" ]; then
    echo "Error: main.c not found!"
    exit 1
fi

# 检查是否需要重新编译
if [ ! -f "main.o" ] || [ main.c -nt main.o ]; then
    echo "Compiling main.c..."
    gcc -c main.c -o main.o
fi

# 链接可执行文件
echo "Linking..."
gcc main.o -o program

echo "Build completed!"