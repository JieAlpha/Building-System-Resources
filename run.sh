#!/bin/bash

# 设置示例根目录
EXAMPLE_ROOT="$(pwd)/examples"

# 清理所有示例
clean_all() {
    echo "清理所有示例..."
    echo "----------------------------------------"
    # 基础编译示例
    cd "$EXAMPLE_ROOT/01_basic_compilation" && rm -f hello *.o

    # Shell脚本构建示例
    cd "$EXAMPLE_ROOT/02_shell_script" && rm -f program *.o

    # Makefile示例
    cd "$EXAMPLE_ROOT/03_makefile_basic" && rm -f calculator *.o
    cd "$EXAMPLE_ROOT/04_makefile_variables" && rm -f hello *.o
    cd "$EXAMPLE_ROOT/05_makefile_special_vars" && rm -f program *.o
    cd "$EXAMPLE_ROOT/06_makefile_functions" && rm -f *.o
    cd "$EXAMPLE_ROOT/07_makefile_path_functions" && rm -f *.o && make clean
    cd "$EXAMPLE_ROOT/08_makefile_foreach_shell" && rm -f *.o
    cd "$EXAMPLE_ROOT/09_makefile_patterns" && rm -f *.o
    cd "$EXAMPLE_ROOT/10_ninja_basic" && ninja -t clean
    echo "清理完成"
    echo "----------------------------------------"
}

# 运行示例函数
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
            make test_vars
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
        *)
            echo "用法: $0 <示例编号 1-10 或 clean>"
            echo "示例列表:"
            echo "  1: 基础编译示例"
            echo "  2: Shell脚本构建示例"
            echo "  3: 基础Makefile示例"
            echo "  4: Makefile变量示例"
            echo "  5: Makefile特殊变量示例"
            echo "  6: Makefile函数示例"
            echo "  7: Makefile路径函数示例"
            echo "  8: Makefile foreach和shell示例"
            echo "  9: Makefile模式匹配示例"
            echo "  clean: 清理所有示例"
            exit 1
            ;;
    esac
}

# 检查参数
if [ $# -ne 1 ]; then
    echo "运行所有示例..."
    echo "========================================="
    # 使用 seq 命令替代 {1..9}
    for i in $(seq 1 9); do
        run_example $i "silent"
        if [ $i -lt 9 ]; then
            echo "========================================="
        fi
    done
    echo "========================================="
else
    run_example $1
fi