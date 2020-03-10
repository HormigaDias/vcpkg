include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO opencv/opencv_contrib
    REF 3.4.7
    SHA512 922620f3e8754fc15dedf8993bdc1f00c06b623cbeeb72afb984ddaad6e0e04f46561a0ee4d20f5e260616c1f32c6dc0dd7248355d417873ae72bd03cb5d57fd
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}/modules/aruco
    PREFER_NINJA
)
vcpkg_install_cmake()
file(INSTALL ${SOURCE_PATH}/COPYING DESTINATION ${CURRENT_PACKAGES_DIR}/share/opencv-contrib RENAME copyright)
