cmake_minimum_required(VERSION 3.16)

set(LIBNAME plugin_oppo)

set(SRC
  lua_oppo.cpp
  lua_oppo.h
  oppo.cpp
  oppo.h
)

add_library(${LIBNAME} ${SRC})
target_include_directories(${LIBNAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/..)
target_link_libraries(${LIBNAME} PRIVATE cclua)

if(ANDROID)
  target_compile_definitions(${LIBNAME} PUBLIC CCLUA_BUILD_OPPO)
endif()

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCE})
