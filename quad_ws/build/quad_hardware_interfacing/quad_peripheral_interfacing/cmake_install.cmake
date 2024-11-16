# Install script for directory: /home/mrhello/SimpleQuad/quad_ws/src/quad_hardware_interfacing/quad_peripheral_interfacing

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mrhello/SimpleQuad/quad_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quad_peripheral_interfacing/msg" TYPE FILE FILES "/home/mrhello/SimpleQuad/quad_ws/src/quad_hardware_interfacing/quad_peripheral_interfacing/msg/ElectricalMeasurements.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quad_peripheral_interfacing/cmake" TYPE FILE FILES "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/quad_peripheral_interfacing-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/include/quad_peripheral_interfacing")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/share/roseus/ros/quad_peripheral_interfacing")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/share/common-lisp/ros/quad_peripheral_interfacing")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/share/gennodejs/ros/quad_peripheral_interfacing")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mrhello/SimpleQuad/quad_ws/devel/lib/python3/dist-packages/quad_peripheral_interfacing")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/lib/python3/dist-packages/quad_peripheral_interfacing" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mrhello/SimpleQuad/quad_ws/devel/lib/python3/dist-packages/quad_peripheral_interfacing" FILES_MATCHING REGEX "/home/mrhello/SimpleQuad/quad_ws/devel/lib/python3/dist-packages/quad_peripheral_interfacing/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/quad_peripheral_interfacing.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quad_peripheral_interfacing/cmake" TYPE FILE FILES "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/quad_peripheral_interfacing-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quad_peripheral_interfacing/cmake" TYPE FILE FILES
    "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/quad_peripheral_interfacingConfig.cmake"
    "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/quad_peripheral_interfacingConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quad_peripheral_interfacing" TYPE FILE FILES "/home/mrhello/SimpleQuad/quad_ws/src/quad_hardware_interfacing/quad_peripheral_interfacing/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/quad_peripheral_interfacing" TYPE PROGRAM FILES "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_peripheral_interfacing/catkin_generated/installspace/battery_voltage_checking.py")
endif()

