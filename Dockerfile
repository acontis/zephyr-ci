FROM zephyrprojectrtos/ci:v0.17.0-rc1
ARG ZEPHYR_BRANCH=v2.5-branch
ARG ZEPHYR_COMMIT=9e3c7b995f62df2dba124272a1dc0538ab8a5719

USER root

RUN git clone https://github.com/zephyrproject-rtos/zephyr.git --branch ${ZEPHYR_BRANCH} /workdir && \
	cd /workdir && \
	git checkout ${ZEPHYR_COMMIT} && \
	west init --local /workdir && \
	cmake -P /workdir/share/zephyr-package/cmake/zephyr_export.cmake

WORKDIR /ATEM/Workspace/Zephyr