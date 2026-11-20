################################################################################
#
# cemu-latte-ax
#
################################################################################

CEMU_LATTE_AX_VERSION = main
CEMU_LATTE_AX_SITE = https://github.com
CEMU_LATTE_AX_SITE_METHOD = git
CEMU_LATTE_AX_GIT_SUBMODULES = YES
CEMU_LATTE_AX_LICENSE = MPL-2.0
CEMU_LATTE_AX_LICENSE_FILES = LICENSE.txt
CEMU_LATTE_AX_DEPENDENCIES = ax-sdk sdl3 vulkan-headers vulkan-loader zlib zstd boost fmt glm libzip pugixml rapidjson openssl libcurl

CEMU_LATTE_AX_CONF_OPTS = \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_AX_SDK=ON \
	-DENABLE_VCPKG=OFF \
	-DENABLE_WXWIDGETS=OFF \
	-DENABLE_OPENGL=OFF \
	-DENABLE_VULKAN=ON \
	-DENABLE_WAYLAND=OFF \
	-DCMAKE_CXX_FLAGS="$(TARGET_CXXFLAGS) -march=skylake -flto=thin"

$(eval $(cmake-package))
