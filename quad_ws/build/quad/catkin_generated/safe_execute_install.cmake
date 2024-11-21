execute_process(COMMAND "/home/mrhello/SimpleQuad/quad_ws/build/quad/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mrhello/SimpleQuad/quad_ws/build/quad/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
