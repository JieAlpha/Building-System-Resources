# 构建系统示例

这个仓库包含了一系列构建系统的示例，用于演示不同的构建工具和技术。

## 目录结构

```
examples/
├── 01_basic_compilation/    # 基础编译示例
├── 02_shell_script/        # Shell脚本构建示例
├── 03_makefile_basic/      # 基础Makefile示例
├── 04_makefile_variables/  # Makefile变量示例
├── 05_makefile_special_vars/ # Makefile特殊变量示例
├── 06_makefile_functions/  # Makefile函数示例
├── 07_makefile_path_functions/ # Makefile路径函数示例
├── 08_makefile_foreach_shell/ # Makefile foreach和shell示例
├── 09_makefile_patterns/   # Makefile模式匹配示例
└── 10_ninja_basic/        # Ninja基础示例
```

## 运行方法

### 运行单个示例

使用以下命令运行指定的示例：

```bash
./run.sh <示例编号>
```

示例编号对应关系：
- 1: 基础编译示例
- 2: Shell脚本构建示例
- 3: 基础Makefile示例
- 4: Makefile变量示例
- 5: Makefile特殊变量示例
- 6: Makefile函数示例
- 7: Makefile路径函数示例
- 8: Makefile foreach和shell示例
- 9: Makefile模式匹配示例
- 10: Ninja综合示例

### 运行所有示例

直接运行脚本（不带参数）将依次执行所有示例：

```bash
./run.sh
```

### 清理所有示例

使用以下命令清理所有示例生成的文件：

```bash
./run.sh clean
```

## 环境要求

- GCC/G++ 编译器
- GNU Make
- Ninja 构建系统

## 注意事项

1. 确保已安装所需的编译器和构建工具
2. 运行脚本前确保有执行权限：`chmod +x run.sh`
3. 部分示例可能需要多次运行才能看到完整效果