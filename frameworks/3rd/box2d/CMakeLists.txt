cmake_minimum_required(VERSION 3.10)

# https://cmake.org/cmake/help/latest/command/project.html
project(box2d VERSION 2.4.1)

# set(CMAKE_CONFIGURATION_TYPES "Debug;RelWithDebInfo" CACHE STRING "" FORCE)

set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN ON)

option(BOX2D_USER_SETTINGS "Override Box2D settings with b2UserSettings.h" OFF)

set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN ON)

include(GNUInstallDirs)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

if(BOX2D_USER_SETTINGS)
  add_compile_definitions(B2_USER_SETTINGS)
endif()

set(BOX2D_SOURCE_FILES
  src/collision/b2_broad_phase.cpp
  src/collision/b2_chain_shape.cpp
  src/collision/b2_circle_shape.cpp
  src/collision/b2_collide_circle.cpp
  src/collision/b2_collide_edge.cpp
  src/collision/b2_collide_polygon.cpp
  src/collision/b2_collision.cpp
  src/collision/b2_distance.cpp
  src/collision/b2_dynamic_tree.cpp
  src/collision/b2_edge_shape.cpp
  src/collision/b2_polygon_shape.cpp
  src/collision/b2_time_of_impact.cpp
  src/common/b2_block_allocator.cpp
  src/common/b2_draw.cpp
  src/common/b2_math.cpp
  src/common/b2_settings.cpp
  src/common/b2_stack_allocator.cpp
  src/common/b2_timer.cpp
  src/dynamics/b2_body.cpp
  src/dynamics/b2_chain_circle_contact.cpp
  src/dynamics/b2_chain_circle_contact.h
  src/dynamics/b2_chain_polygon_contact.cpp
  src/dynamics/b2_chain_polygon_contact.h
  src/dynamics/b2_circle_contact.cpp
  src/dynamics/b2_circle_contact.h
  src/dynamics/b2_contact.cpp
  src/dynamics/b2_contact_manager.cpp
  src/dynamics/b2_contact_solver.cpp
  src/dynamics/b2_contact_solver.h
  src/dynamics/b2_distance_joint.cpp
  src/dynamics/b2_edge_circle_contact.cpp
  src/dynamics/b2_edge_circle_contact.h
  src/dynamics/b2_edge_polygon_contact.cpp
  src/dynamics/b2_edge_polygon_contact.h
  src/dynamics/b2_fixture.cpp
  src/dynamics/b2_friction_joint.cpp
  src/dynamics/b2_gear_joint.cpp
  src/dynamics/b2_island.cpp
  src/dynamics/b2_island.h
  src/dynamics/b2_joint.cpp
  src/dynamics/b2_motor_joint.cpp
  src/dynamics/b2_mouse_joint.cpp
  src/dynamics/b2_polygon_circle_contact.cpp
  src/dynamics/b2_polygon_circle_contact.h
  src/dynamics/b2_polygon_contact.cpp
  src/dynamics/b2_polygon_contact.h
  src/dynamics/b2_prismatic_joint.cpp
  src/dynamics/b2_pulley_joint.cpp
  src/dynamics/b2_revolute_joint.cpp
  src/dynamics/b2_weld_joint.cpp
  src/dynamics/b2_wheel_joint.cpp
  src/dynamics/b2_world.cpp
  src/dynamics/b2_world_callbacks.cpp
  src/rope/b2_rope.cpp)

set(BOX2D_HEADER_FILES
  include/box2d/b2_api.h
  include/box2d/b2_block_allocator.h
  include/box2d/b2_body.h
  include/box2d/b2_broad_phase.h
  include/box2d/b2_chain_shape.h
  include/box2d/b2_circle_shape.h
  include/box2d/b2_collision.h
  include/box2d/b2_common.h
  include/box2d/b2_contact.h
  include/box2d/b2_contact_manager.h
  include/box2d/b2_distance.h
  include/box2d/b2_distance_joint.h
  include/box2d/b2_draw.h
  include/box2d/b2_dynamic_tree.h
  include/box2d/b2_edge_shape.h
  include/box2d/b2_fixture.h
  include/box2d/b2_friction_joint.h
  include/box2d/b2_gear_joint.h
  include/box2d/b2_growable_stack.h
  include/box2d/b2_joint.h
  include/box2d/b2_math.h
  include/box2d/b2_motor_joint.h
  include/box2d/b2_mouse_joint.h
  include/box2d/b2_polygon_shape.h
  include/box2d/b2_prismatic_joint.h
  include/box2d/b2_pulley_joint.h
  include/box2d/b2_revolute_joint.h
  include/box2d/b2_rope.h
  include/box2d/b2_settings.h
  include/box2d/b2_shape.h
  include/box2d/b2_stack_allocator.h
  include/box2d/b2_time_of_impact.h
  include/box2d/b2_timer.h
  include/box2d/b2_time_step.h
  include/box2d/b2_types.h
  include/box2d/b2_weld_joint.h
  include/box2d/b2_wheel_joint.h
  include/box2d/b2_world.h
  include/box2d/b2_world_callbacks.h
  include/box2d/box2d.h)

add_library(box2d ${BOX2D_SOURCE_FILES} ${BOX2D_HEADER_FILES})
target_include_directories(box2d
  PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
  PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_properties(box2d PROPERTIES
  CXX_STANDARD 11
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    VERSION ${PROJECT_VERSION}
    SOVERSION ${PROJECT_VERSION_MAJOR}
)

source_group(TREE "${CMAKE_CURRENT_SOURCE_DIR}" PREFIX "src" FILES ${BOX2D_SOURCE_FILES})
source_group(TREE "${CMAKE_CURRENT_SOURCE_DIR}/include/box2d" PREFIX "include" FILES ${BOX2D_HEADER_FILES})
