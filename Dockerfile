# Toolchain of the U-Boot 2015.01 era to build the hikob_varam35 bootloader:
# recent GCC versions can't build this U-Boot version.
FROM debian/eol:stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bc \
        gcc \
        gcc-arm-linux-gnueabihf \
        libc6-dev \
        make \
        && \
    rm -rf /var/lib/apt/lists/*
