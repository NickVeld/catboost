LIBRARY()


PEERDIR(build/platform/java/jdk)

IF(OS_DARWIN)
    SET(PLATFORM_NAME darwin)
ELSEIF(OS_LINUX)
    SET(PLATFORM_NAME linux)
ELSEIF(OS_WINDOWS)
    SET(PLATFORM_NAME win32)
ENDIF()

IF (USE_SYSTEM_JDK)
    SET(JDK_ROOT ${USE_SYSTEM_JDK})
ELSE()
    SET(JDK_ROOT ${JDK_DEFAULT_RESOURCE_GLOBAL})
ENDIF()
IF (PLATFORM_NAME)
    CFLAGS(GLOBAL -I${JDK_ROOT}/include)
    CFLAGS(GLOBAL -I${JDK_ROOT}/include/${PLATFORM_NAME})
ELSE()
    MESSAGE(FATAL_ERROR Unsupported platform for jni)
ENDIF()

END()
