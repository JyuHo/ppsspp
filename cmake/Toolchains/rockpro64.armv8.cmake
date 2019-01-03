include_directories(SYSTEM
  /usr/include
  /usr/include/EGL
  /usr/include/GLES2
)

set(ARCH_FLAGS "-O2 -march=armv8-a+crc -mtune=cortex-a72.cortex-a53 -mfpu=neon-fp-armv8 -ftree-vectorize -funsafe-math-optimizations -DGL_GLEXT_PROTOTYPES")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${ARCH_FLAGS}"  CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${ARCH_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${ARCH_FLAGS}" CACHE STRING "" FORCE)

set(CMAKE_EXE_LINKER_FLAGS "-L/usr/lib" CACHE STRING "" FORCE)

set(OPENGL_LIBRARIES /usr/lib/libGLESv2.so)
set(EGL_LIBRARIES /usr/lib/libEGL.so)

set(USING_GLES2 ON)
set(USING_EGL ON))
set(ARMV7 ON)
set(FORCED_CPU armv7)
set(USING_X11_VULKAN OFF CACHE BOOL "" FORCE)
