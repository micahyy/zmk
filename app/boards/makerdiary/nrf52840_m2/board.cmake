# 版权声明：表明该文件的版权归属于ZMK贡献者
# Copyright (c) 2020 The ZMK Contributors

# SPDX许可证标识符：表明该文件采用MIT许可证
# SPDX-License-Identifier: MIT

# 为nrfjprog编程器设置参数：
# --nrf-family=NRF52 指定芯片系列为NRF52
# --softreset 指定使用软复位方式
board_runner_args(nrfjprog "--nrf-family=NRF52" "--softreset")

# 包含Zephyr RTOS中的nrfjprog编程器配置
# ${ZEPHYR_BASE} 是Zephyr根目录的CMake变量
# nrfjprog.board.cmake 提供对NRF芯片使用nrfjprog工具进行编程的支持
include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)

# 包含Zephyr RTOS中的Black Magic Probe调试器配置
# blackmagicprobe.board.cmake 提供对Black Magic Probe调试器的支持
# 这使得可以通过Black Magic Probe进行调试和编程
include(${ZEPHYR_BASE}/boards/common/blackmagicprobe.board.cmake)