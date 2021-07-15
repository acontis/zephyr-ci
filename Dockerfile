FROM zephyrprojectrtos/ci:v0.17.0
ARG ZEPHYR_BRANCH=v2.5-branch
ARG ZEPHYR_COMMIT=5a430eea4106ff0e744e6808e908ef632d2f16f2

USER root

RUN git clone https://github.com/zephyrproject-rtos/zephyr.git --branch ${ZEPHYR_BRANCH} /workdir && \
	cd /workdir && \
	git checkout ${ZEPHYR_COMMIT} && \
	west init --local /workdir && \
	cmake -P /workdir/share/zephyr-package/cmake/zephyr_export.cmake

WORKDIR /ATEM/Workspace/Zephyr