

RESOURCES_LIBRARY()

IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
    MESSAGE(FATAL_ERROR Unsupported platform for YFM tool)
ENDIF()

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    YFM_TOOL
    sbr:3238423699 FOR DARWIN-ARM64
    sbr:3238423699 FOR DARWIN
    sbr:3238421739 FOR LINUX
    sbr:3238425824 FOR WIN32
)

END()
