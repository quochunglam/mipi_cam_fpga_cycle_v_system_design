/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'top'
 * SOPC Builder design path: ../../top.sopcinfo
 *
 * Generated: Tue Feb 08 14:55:59 PST 2022
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x40080820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 125000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1f
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x40060020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 125000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1f
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x40060000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x40080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 125000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1f
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x40060020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1f
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x40060000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_FIFO
#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_MEM_IF_DDR3_EMIF
#define __ALTERA_NIOS2_GEN2
#define __I2C_OPENCORES
#define __TERASIC_AUTO_FOCUS


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x40081110
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x40081110
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x40081110
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "top"


/*
 * TERASIC_AUTO_FOCUS_0 configuration
 *
 */

#define ALT_MODULE_CLASS_TERASIC_AUTO_FOCUS_0 TERASIC_AUTO_FOCUS
#define TERASIC_AUTO_FOCUS_0_BASE 0x40081060
#define TERASIC_AUTO_FOCUS_0_IRQ -1
#define TERASIC_AUTO_FOCUS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TERASIC_AUTO_FOCUS_0_NAME "/dev/TERASIC_AUTO_FOCUS_0"
#define TERASIC_AUTO_FOCUS_0_SPAN 32
#define TERASIC_AUTO_FOCUS_0_TYPE "TERASIC_AUTO_FOCUS"


/*
 * csr_regmap configuration
 *
 */

#define ALT_MODULE_CLASS_csr_regmap altera_avalon_onchip_memory2
#define CSR_REGMAP_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define CSR_REGMAP_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define CSR_REGMAP_BASE 0x40081020
#define CSR_REGMAP_CONTENTS_INFO ""
#define CSR_REGMAP_DUAL_PORT 1
#define CSR_REGMAP_GUI_RAM_BLOCK_TYPE "AUTO"
#define CSR_REGMAP_INIT_CONTENTS_FILE "top_csr_regmap"
#define CSR_REGMAP_INIT_MEM_CONTENT 1
#define CSR_REGMAP_INSTANCE_ID "NONE"
#define CSR_REGMAP_IRQ -1
#define CSR_REGMAP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CSR_REGMAP_NAME "/dev/csr_regmap"
#define CSR_REGMAP_NON_DEFAULT_INIT_FILE_ENABLED 0
#define CSR_REGMAP_RAM_BLOCK_TYPE "AUTO"
#define CSR_REGMAP_READ_DURING_WRITE_MODE "DONT_CARE"
#define CSR_REGMAP_SINGLE_CLOCK_OP 0
#define CSR_REGMAP_SIZE_MULTIPLE 1
#define CSR_REGMAP_SIZE_VALUE 32
#define CSR_REGMAP_SPAN 32
#define CSR_REGMAP_TYPE "altera_avalon_onchip_memory2"
#define CSR_REGMAP_WRITABLE 1


/*
 * ddr3_status configuration
 *
 */

#define ALT_MODULE_CLASS_ddr3_status altera_avalon_pio
#define DDR3_STATUS_BASE 0x400810a0
#define DDR3_STATUS_BIT_CLEARING_EDGE_REGISTER 0
#define DDR3_STATUS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DDR3_STATUS_CAPTURE 0
#define DDR3_STATUS_DATA_WIDTH 3
#define DDR3_STATUS_DO_TEST_BENCH_WIRING 0
#define DDR3_STATUS_DRIVEN_SIM_VALUE 0
#define DDR3_STATUS_EDGE_TYPE "NONE"
#define DDR3_STATUS_FREQ 125000000
#define DDR3_STATUS_HAS_IN 1
#define DDR3_STATUS_HAS_OUT 0
#define DDR3_STATUS_HAS_TRI 0
#define DDR3_STATUS_IRQ -1
#define DDR3_STATUS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DDR3_STATUS_IRQ_TYPE "NONE"
#define DDR3_STATUS_NAME "/dev/ddr3_status"
#define DDR3_STATUS_RESET_VALUE 0
#define DDR3_STATUS_SPAN 16
#define DDR3_STATUS_TYPE "altera_avalon_pio"


/*
 * fifo_0_in_csr configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_0_in_csr altera_avalon_fifo
#define FIFO_0_IN_CSR_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_0_IN_CSR_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_0_IN_CSR_BASE 0x40081080
#define FIFO_0_IN_CSR_BITS_PER_SYMBOL 8
#define FIFO_0_IN_CSR_CHANNEL_WIDTH 8
#define FIFO_0_IN_CSR_ERROR_WIDTH 8
#define FIFO_0_IN_CSR_FIFO_DEPTH 2048
#define FIFO_0_IN_CSR_IRQ 0
#define FIFO_0_IN_CSR_IRQ_INTERRUPT_CONTROLLER_ID 0
#define FIFO_0_IN_CSR_NAME "/dev/fifo_0_in_csr"
#define FIFO_0_IN_CSR_SINGLE_CLOCK_MODE 1
#define FIFO_0_IN_CSR_SPAN 32
#define FIFO_0_IN_CSR_SYMBOLS_PER_BEAT 4
#define FIFO_0_IN_CSR_TYPE "altera_avalon_fifo"
#define FIFO_0_IN_CSR_USE_AVALONMM_READ_SLAVE 1
#define FIFO_0_IN_CSR_USE_AVALONMM_WRITE_SLAVE 0
#define FIFO_0_IN_CSR_USE_AVALONST_SINK 1
#define FIFO_0_IN_CSR_USE_AVALONST_SOURCE 0
#define FIFO_0_IN_CSR_USE_BACKPRESSURE 1
#define FIFO_0_IN_CSR_USE_IRQ 1
#define FIFO_0_IN_CSR_USE_PACKET 1
#define FIFO_0_IN_CSR_USE_READ_CONTROL 0
#define FIFO_0_IN_CSR_USE_REGISTER 0
#define FIFO_0_IN_CSR_USE_WRITE_CONTROL 1


/*
 * fifo_0_out configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_0_out altera_avalon_fifo
#define FIFO_0_OUT_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_0_OUT_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_0_OUT_BASE 0x400810f0
#define FIFO_0_OUT_BITS_PER_SYMBOL 8
#define FIFO_0_OUT_CHANNEL_WIDTH 8
#define FIFO_0_OUT_ERROR_WIDTH 8
#define FIFO_0_OUT_FIFO_DEPTH 2048
#define FIFO_0_OUT_IRQ -1
#define FIFO_0_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_0_OUT_NAME "/dev/fifo_0_out"
#define FIFO_0_OUT_SINGLE_CLOCK_MODE 1
#define FIFO_0_OUT_SPAN 8
#define FIFO_0_OUT_SYMBOLS_PER_BEAT 4
#define FIFO_0_OUT_TYPE "altera_avalon_fifo"
#define FIFO_0_OUT_USE_AVALONMM_READ_SLAVE 1
#define FIFO_0_OUT_USE_AVALONMM_WRITE_SLAVE 0
#define FIFO_0_OUT_USE_AVALONST_SINK 1
#define FIFO_0_OUT_USE_AVALONST_SOURCE 0
#define FIFO_0_OUT_USE_BACKPRESSURE 1
#define FIFO_0_OUT_USE_IRQ 1
#define FIFO_0_OUT_USE_PACKET 1
#define FIFO_0_OUT_USE_READ_CONTROL 0
#define FIFO_0_OUT_USE_REGISTER 0
#define FIFO_0_OUT_USE_WRITE_CONTROL 1


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_0
#define ALT_TIMESTAMP_CLK none


/*
 * i2c_opencores_camera configuration
 *
 */

#define ALT_MODULE_CLASS_i2c_opencores_camera i2c_opencores
#define I2C_OPENCORES_CAMERA_BASE 0x40081108
#define I2C_OPENCORES_CAMERA_IRQ -1
#define I2C_OPENCORES_CAMERA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define I2C_OPENCORES_CAMERA_NAME "/dev/i2c_opencores_camera"
#define I2C_OPENCORES_CAMERA_SPAN 8
#define I2C_OPENCORES_CAMERA_TYPE "i2c_opencores"


/*
 * i2c_opencores_mipi configuration
 *
 */

#define ALT_MODULE_CLASS_i2c_opencores_mipi i2c_opencores
#define I2C_OPENCORES_MIPI_BASE 0x40081100
#define I2C_OPENCORES_MIPI_IRQ -1
#define I2C_OPENCORES_MIPI_IRQ_INTERRUPT_CONTROLLER_ID -1
#define I2C_OPENCORES_MIPI_NAME "/dev/i2c_opencores_mipi"
#define I2C_OPENCORES_MIPI_SPAN 8
#define I2C_OPENCORES_MIPI_TYPE "i2c_opencores"


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x40081110
#define JTAG_UART_0_IRQ 3
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * mem_if_ddr3_emif_0 configuration
 *
 */

#define ALT_MODULE_CLASS_mem_if_ddr3_emif_0 altera_mem_if_ddr3_emif
#define MEM_IF_DDR3_EMIF_0_BASE 0x0
#define MEM_IF_DDR3_EMIF_0_IRQ -1
#define MEM_IF_DDR3_EMIF_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEM_IF_DDR3_EMIF_0_NAME "/dev/mem_if_ddr3_emif_0"
#define MEM_IF_DDR3_EMIF_0_SPAN 1073741824
#define MEM_IF_DDR3_EMIF_0_TYPE "altera_mem_if_ddr3_emif"


/*
 * mipi_pwdn_n configuration
 *
 */

#define ALT_MODULE_CLASS_mipi_pwdn_n altera_avalon_pio
#define MIPI_PWDN_N_BASE 0x400810b0
#define MIPI_PWDN_N_BIT_CLEARING_EDGE_REGISTER 0
#define MIPI_PWDN_N_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MIPI_PWDN_N_CAPTURE 0
#define MIPI_PWDN_N_DATA_WIDTH 1
#define MIPI_PWDN_N_DO_TEST_BENCH_WIRING 0
#define MIPI_PWDN_N_DRIVEN_SIM_VALUE 0
#define MIPI_PWDN_N_EDGE_TYPE "NONE"
#define MIPI_PWDN_N_FREQ 125000000
#define MIPI_PWDN_N_HAS_IN 0
#define MIPI_PWDN_N_HAS_OUT 1
#define MIPI_PWDN_N_HAS_TRI 0
#define MIPI_PWDN_N_IRQ -1
#define MIPI_PWDN_N_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MIPI_PWDN_N_IRQ_TYPE "NONE"
#define MIPI_PWDN_N_NAME "/dev/mipi_pwdn_n"
#define MIPI_PWDN_N_RESET_VALUE 0
#define MIPI_PWDN_N_SPAN 16
#define MIPI_PWDN_N_TYPE "altera_avalon_pio"


/*
 * mipi_reset_n configuration
 *
 */

#define ALT_MODULE_CLASS_mipi_reset_n altera_avalon_pio
#define MIPI_RESET_N_BASE 0x400810c0
#define MIPI_RESET_N_BIT_CLEARING_EDGE_REGISTER 0
#define MIPI_RESET_N_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MIPI_RESET_N_CAPTURE 0
#define MIPI_RESET_N_DATA_WIDTH 1
#define MIPI_RESET_N_DO_TEST_BENCH_WIRING 0
#define MIPI_RESET_N_DRIVEN_SIM_VALUE 0
#define MIPI_RESET_N_EDGE_TYPE "NONE"
#define MIPI_RESET_N_FREQ 125000000
#define MIPI_RESET_N_HAS_IN 0
#define MIPI_RESET_N_HAS_OUT 1
#define MIPI_RESET_N_HAS_TRI 0
#define MIPI_RESET_N_IRQ -1
#define MIPI_RESET_N_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MIPI_RESET_N_IRQ_TYPE "NONE"
#define MIPI_RESET_N_NAME "/dev/mipi_reset_n"
#define MIPI_RESET_N_RESET_VALUE 0
#define MIPI_RESET_N_SPAN 16
#define MIPI_RESET_N_TYPE "altera_avalon_pio"


/*
 * nios_ram configuration
 *
 */

#define ALT_MODULE_CLASS_nios_ram altera_avalon_onchip_memory2
#define NIOS_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define NIOS_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define NIOS_RAM_BASE 0x40060000
#define NIOS_RAM_CONTENTS_INFO ""
#define NIOS_RAM_DUAL_PORT 0
#define NIOS_RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define NIOS_RAM_INIT_CONTENTS_FILE "top_nios_ram"
#define NIOS_RAM_INIT_MEM_CONTENT 0
#define NIOS_RAM_INSTANCE_ID "NONE"
#define NIOS_RAM_IRQ -1
#define NIOS_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define NIOS_RAM_NAME "/dev/nios_ram"
#define NIOS_RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define NIOS_RAM_RAM_BLOCK_TYPE "AUTO"
#define NIOS_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define NIOS_RAM_SINGLE_CLOCK_OP 0
#define NIOS_RAM_SIZE_MULTIPLE 1
#define NIOS_RAM_SIZE_VALUE 131072
#define NIOS_RAM_SPAN 131072
#define NIOS_RAM_TYPE "altera_avalon_onchip_memory2"
#define NIOS_RAM_WRITABLE 1


/*
 * ocm_256k_dma configuration
 *
 */

#define ALT_MODULE_CLASS_ocm_256k_dma altera_avalon_onchip_memory2
#define OCM_256K_DMA_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define OCM_256K_DMA_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define OCM_256K_DMA_BASE 0x40000000
#define OCM_256K_DMA_CONTENTS_INFO ""
#define OCM_256K_DMA_DUAL_PORT 1
#define OCM_256K_DMA_GUI_RAM_BLOCK_TYPE "M10K"
#define OCM_256K_DMA_INIT_CONTENTS_FILE "top_ocm_256k_dma"
#define OCM_256K_DMA_INIT_MEM_CONTENT 1
#define OCM_256K_DMA_INSTANCE_ID "NONE"
#define OCM_256K_DMA_IRQ -1
#define OCM_256K_DMA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OCM_256K_DMA_NAME "/dev/ocm_256k_dma"
#define OCM_256K_DMA_NON_DEFAULT_INIT_FILE_ENABLED 0
#define OCM_256K_DMA_RAM_BLOCK_TYPE "M10K"
#define OCM_256K_DMA_READ_DURING_WRITE_MODE "DONT_CARE"
#define OCM_256K_DMA_SINGLE_CLOCK_OP 0
#define OCM_256K_DMA_SIZE_MULTIPLE 1
#define OCM_256K_DMA_SIZE_VALUE 262144
#define OCM_256K_DMA_SPAN 262144
#define OCM_256K_DMA_TYPE "altera_avalon_onchip_memory2"
#define OCM_256K_DMA_WRITABLE 1


/*
 * pio_button configuration
 *
 */

#define ALT_MODULE_CLASS_pio_button altera_avalon_pio
#define PIO_BUTTON_BASE 0x400810d0
#define PIO_BUTTON_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_BUTTON_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_BUTTON_CAPTURE 0
#define PIO_BUTTON_DATA_WIDTH 4
#define PIO_BUTTON_DO_TEST_BENCH_WIRING 0
#define PIO_BUTTON_DRIVEN_SIM_VALUE 0
#define PIO_BUTTON_EDGE_TYPE "NONE"
#define PIO_BUTTON_FREQ 125000000
#define PIO_BUTTON_HAS_IN 1
#define PIO_BUTTON_HAS_OUT 0
#define PIO_BUTTON_HAS_TRI 0
#define PIO_BUTTON_IRQ 4
#define PIO_BUTTON_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_BUTTON_IRQ_TYPE "LEVEL"
#define PIO_BUTTON_NAME "/dev/pio_button"
#define PIO_BUTTON_RESET_VALUE 0
#define PIO_BUTTON_SPAN 16
#define PIO_BUTTON_TYPE "altera_avalon_pio"


/*
 * pio_led configuration
 *
 */

#define ALT_MODULE_CLASS_pio_led altera_avalon_pio
#define PIO_LED_BASE 0x400810e0
#define PIO_LED_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_LED_CAPTURE 0
#define PIO_LED_DATA_WIDTH 4
#define PIO_LED_DO_TEST_BENCH_WIRING 0
#define PIO_LED_DRIVEN_SIM_VALUE 0
#define PIO_LED_EDGE_TYPE "NONE"
#define PIO_LED_FREQ 125000000
#define PIO_LED_HAS_IN 0
#define PIO_LED_HAS_OUT 1
#define PIO_LED_HAS_TRI 0
#define PIO_LED_IRQ -1
#define PIO_LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_LED_IRQ_TYPE "NONE"
#define PIO_LED_NAME "/dev/pio_led"
#define PIO_LED_RESET_VALUE 0
#define PIO_LED_SPAN 16
#define PIO_LED_TYPE "altera_avalon_pio"


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0x400810f8
#define SYSID_QSYS_0_ID 0
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1644360235
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_0 altera_avalon_timer
#define TIMER_0_ALWAYS_RUN 0
#define TIMER_0_BASE 0x40081040
#define TIMER_0_COUNTER_SIZE 32
#define TIMER_0_FIXED_PERIOD 0
#define TIMER_0_FREQ 125000000
#define TIMER_0_IRQ 5
#define TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_0_LOAD_VALUE 124999
#define TIMER_0_MULT 0.001
#define TIMER_0_NAME "/dev/timer_0"
#define TIMER_0_PERIOD 1
#define TIMER_0_PERIOD_UNITS "ms"
#define TIMER_0_RESET_OUTPUT 0
#define TIMER_0_SNAPSHOT 1
#define TIMER_0_SPAN 32
#define TIMER_0_TICKS_PER_SEC 1000
#define TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_0_TYPE "altera_avalon_timer"


/*
 * timer_1 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_1 altera_avalon_timer
#define TIMER_1_ALWAYS_RUN 1
#define TIMER_1_BASE 0x40081000
#define TIMER_1_COUNTER_SIZE 32
#define TIMER_1_FIXED_PERIOD 1
#define TIMER_1_FREQ 125000000
#define TIMER_1_IRQ 6
#define TIMER_1_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_1_LOAD_VALUE 62499
#define TIMER_1_MULT 1.0E-6
#define TIMER_1_NAME "/dev/timer_1"
#define TIMER_1_PERIOD 500
#define TIMER_1_PERIOD_UNITS "us"
#define TIMER_1_RESET_OUTPUT 0
#define TIMER_1_SNAPSHOT 0
#define TIMER_1_SPAN 32
#define TIMER_1_TICKS_PER_SEC 2000
#define TIMER_1_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_1_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */
