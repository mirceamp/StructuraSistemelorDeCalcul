set(DDR ps7_ddr_0)
set(ps7_ddr_0 "0x100000;0x3ff00000")
set(ps7_ram_0 "0x0;0x30000")
set(ps7_ram_1 "0xffff0000;0xfe00")
set(axi_bram_0 "0x40000000;0x2000")
set(axi_bram_1 "0x42000000;0x2000")
set(axi_bram_2 "0x44000000;0x2000")
set(axi_bram_3 "0x46000000;0x2000")
set(TOTAL_MEM_CONTROLLERS "ps7_ddr_0;ps7_ram_0;ps7_ram_1;axi_bram_0;axi_bram_1;axi_bram_2;axi_bram_3")
set(MEMORY_SECTION "MEMORY
{
	ps7_ddr_0 : ORIGIN = 0x100000, LENGTH = 0x3ff00000
	ps7_qspi_linear_0 : ORIGIN = 0xfc000000, LENGTH = 0x1000000
	ps7_ram_0 : ORIGIN = 0x0, LENGTH = 0x30000
	ps7_ram_1 : ORIGIN = 0xffff0000, LENGTH = 0xfe00
	axi_bram_0 : ORIGIN = 0x40000000, LENGTH = 0x2000
	axi_bram_1 : ORIGIN = 0x42000000, LENGTH = 0x2000
	axi_bram_2 : ORIGIN = 0x44000000, LENGTH = 0x2000
	axi_bram_3 : ORIGIN = 0x46000000, LENGTH = 0x2000
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
