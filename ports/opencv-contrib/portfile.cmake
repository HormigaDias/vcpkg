include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH modules/aruco
    REPO opencv/opencv_contrib
    REF 4.2.0
    SHA512 073a6d12cbd95a25a67462924eab0967057ef74f1e9397afd196e5bc651b0192b6670165b3bc30fab0eb0a8bbae01457e2245e44ff88a6947e69381fe0887a9b
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)
vcpkg_install_cmake()
file(INSTALL ${SOURCE_PATH}/COPYING DESTINATION ${CURRENT_PACKAGES_DIR}/share/opencv-contrib RENAME copyright)
