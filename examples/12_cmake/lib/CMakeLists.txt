add_library(messagelib STATIC
    src/message.c
)

target_include_directories(messagelib
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)