#include <iostream>
#include "config.h"
#include "utils.h"

int main() {
    std::cout << "当前配置: " << get_config() << std::endl;
    print_message("Hello from Ninja!");
    return 0;
}