# Zephyr Docker Image

Docker Image used to build the EtherCAT Master Stack Software EC-Master for Zephyr.
This image includes the [Docker Image of the Zephyr Project](https://github.com/zephyrproject-rtos/docker-image) and 
the [Zephyr Sources](https://github.com/zephyrproject-rtos/zephyr) to ensure the same Sources are used in each CI build.

To build the EcMasterDemo use:
```bash
docker run -v <EC_MASTER_BASE_PATH>:/ATEM acontis/zephyr-ci sh ./EcMasterDemo/build.sh --arch={x64|x86} --release_mode={Release|Protected}
```