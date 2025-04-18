cmake_minimum_required(VERSION 3.16)

set(LIBNAME plugin_wechat)

set(SRC
  lua_wechat.cpp
  lua_wechat.h
  wechat.h
  wechat.cpp
)

if(IOS)
  list(APPEND SRC
    ios/WechatAuthSDK.h
    ios/WXApi.h
    ios/WXApiObject.h
    wechat.mm
  )
endif()

add_library(${LIBNAME} ${SRC})
target_include_directories(${LIBNAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/..)
target_link_libraries(${LIBNAME} PRIVATE cclua)

if(IOS)
  target_link_libraries(${LIBNAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/ios/libWeChatSDK.a)
endif()

if(APPLE)
  set_xcode_property(${LIBNAME} CLANG_ENABLE_OBJC_ARC "YES")
endif()

if(ANDROID OR IOS)
  target_compile_definitions(${LIBNAME} PUBLIC CCLUA_BUILD_WECHAT)
endif()

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SRC})
