# linux-rga is rockchip RGA driver userspace(forked from rockchip-linux/linux-rga).

### Dependencies:

    libdrm (rockchip-linux/libdrm-rockchip)

### Compiling:

    mkdir build && cd build
    cmake -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX}
          -DCMAKE_BUILD_TYPE=Release
          -DBUILD_DEMO=ON
          ..
    make -j$(nproc)
    make install
