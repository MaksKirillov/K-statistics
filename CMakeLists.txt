cmake_minimum_required(VERSION 3.24)
project(K_statistics C)

set(CMAKE_C_STANDARD 11)

set(PROJECT_HEADERS
        kStatistics.h
        )

set(PROJECT_SOURCES
        kStatistics.c
        main.c
        )

add_executable(K_statistics main.c kStatistics.c)
