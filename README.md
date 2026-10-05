# iot-lab-uboot

U-Boot 2015.01 for the IoT-LAB var-som-am35 (A8) gateways, with the
`hikob_varam35` board (NAND BCH8 ECC layout, environment and boot command
used by the IoT-LAB infrastructure).

## Build

Recent compilers can't build this U-Boot version, the build runs in a Docker
container providing a toolchain of that era (Debian stretch, GCC 6):

    $ make iotlab-uboot

The bootloader files are generated in the `build` directory:

* `build/MLO`: SPL, loaded by the boot ROM from the NAND "X-Loader"
  partition (offset 0x0)
* `build/u-boot.img`: U-Boot, loaded by the SPL from the NAND "U-Boot"
  partition (offset 0x80000)

The Docker image can be built alone with `make docker-build`. The image name
and the build directory can be changed with the `IOTLAB_DOCKER_IMAGE` and
`IOTLAB_BUILD_DIR` variables.
