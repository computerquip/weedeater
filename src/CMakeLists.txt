find_package(IUP)

set (UI_SOURCES
        ui/frame.c
    )

include_directories(${IUP_INCLUDE_DIRS})
add_executable(weedeater ${UI_SOURCES})
target_link_libraries(weedeater ${IUP_LIBRARIES})

if (WIN32)
    target_link_libraries(weedeater Comctl32)
endif()
