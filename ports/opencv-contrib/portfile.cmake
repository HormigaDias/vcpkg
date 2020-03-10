include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO opencv/opencv_contrib
    REF 3.4.1
    SHA512 431dfba0f413071d7faa18bc6e6f5e4f015285e2cc730c5dd69b2a4d6aa4250b7e0bcb1814ac6f06f5c76f103aea1f93f72f32aee6bc0cd7ddacdaf1f40075c1
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}/modules/aruco
    PREFER_NINJA
)
vcpkg_install_cmake()
file(INSTALL ${SOURCE_PATH}/COPYING DESTINATION ${CURRENT_PACKAGES_DIR}/share/opencv-contrib RENAME copyright)
