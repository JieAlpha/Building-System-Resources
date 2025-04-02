#!/bin/bash

EXAMPLE_ROOT="$(pwd)/examples"

clean_all() {
    echo "清理所有示例..."
    echo "----------------------------------------"
    cd "$EXAMPLE_ROOT/01_basic_compilation" && rm -f hello *.o
    cd "$EXAMPLE_ROOT/02_shell_script" && rm -f program *.o
    cd "$EXAMPLE_ROOT/03_makefile_basic" && rm -f calculator *.o
    cd "$EXAMPLE_ROOT/04_makefile_variables" && rm -f hello *.o
    cd "$EXAMPLE_ROOT/05_makefile_special_vars" && rm -f program *.o
    cd "$EXAMPLE_ROOT/06_makefile_functions" && rm -f *.o
    cd "$EXAMPLE_ROOT/07_makefile_path_functions" && rm -f *.o && make clean
    cd "$EXAMPLE_ROOT/08_makefile_foreach_shell" && rm -f *.o
    cd "$EXAMPLE_ROOT/09_makefile_patterns" && rm -f *.o
    cd "$EXAMPLE_ROOT/10_ninja_basic" && ninja -t clean && rm -rf build
    cd "$EXAMPLE_ROOT/11_cmake" && rm -rf build
    cd "$EXAMPLE_ROOT/12_cmake" && rm -rf build bin
    echo "清理完成"
    echo "----------------------------------------"
}

run_example() {
    case $1 in
        "clean")
            clean_all
            ;;
        1)
            echo "运行基础编译示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/01_basic_compilation" && \
            gcc -o hello hello.c && \
            ./hello
            echo "----------------------------------------"
            ;;
        2)
            echo "运行Shell脚本构建示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/02_shell_script" && \
            chmod +x build.sh && \
            ./build.sh && \
            ./program
            echo "----------------------------------------"
            ;;
        3)
            echo "运行基础Makefile示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/03_makefile_basic" && \
            make clean && make && \
            ./calculator
            echo "----------------------------------------"
            ;;
        4)
            echo "运行Makefile变量示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/04_makefile_variables" && \
            make show_vars
            echo "----------------------------------------"
            ;;
        5)
            echo "运行Makefile特殊变量示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/05_makefile_special_vars" && \
            make
            echo "----------------------------------------"
            ;;
        6)
            echo "运行Makefile函数示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/06_makefile_functions" && \
            make show
            echo "----------------------------------------"
            ;;
        7)
            echo "运行Makefile路径函数示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/07_makefile_path_functions" && \
            make setup && make show_paths
            echo "----------------------------------------"
            ;;
        8)
            echo "运行Makefile foreach和shell示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/08_makefile_foreach_shell" && \
            make create_files && make show_files && make clean
            echo "----------------------------------------"
            ;;
        9)
            echo "运行Makefile模式匹配示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/09_makefile_patterns" && \
            make setup && make show_matches && make clean
            echo "----------------------------------------"
            ;;
        10)
            echo "运行Ninja基础示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/10_ninja_basic" && \
            mkdir -p build && \
            ninja && \
            ./build/program
            echo "----------------------------------------"
            ;;
        11)
            echo "运行CMake文件示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/11_cmake" && \
            cmake . -B build && \
            cmake --build build && \
            build/hello
            echo "----------------------------------------"
            ;;
        12)
            echo "运行CMake示例..."
            echo "----------------------------------------"
            cd "$EXAMPLE_ROOT/12_cmake" && \
            cmake -S . -B build && \
            cmake --build build && \
            bin/main
            echo "----------------------------------------"
            ;;
        *)
            echo "用法: $0 <示例编号 1-12 或 clean>"
            exit 1
            ;;
    esac
}

if [ $# -ne 1 ]; then
    echo "运行所有示例..."
    echo "========================================="
    for i in $(seq 1 12); do
        run_example $i "silent"
        if [ $i -lt 12 ]; then
            echo "========================================="
        fi
    done
    echo "========================================="
else
    run_example $1
fi
