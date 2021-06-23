#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#define BRAM_WRITE_BASE_ADDRESS XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR



#define led0 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x00)))
#define led1 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x01)))
#define led2 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x02)))
#define led3 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x03)))
#define led4 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x04)))
#define led5 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x05)))
#define led6 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x06)))
#define led7 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x07)))
#define led8 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x08)))
#define led9 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x09)))
#define led10 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0A)))
#define led11 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0B)))
#define led12 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0C)))
#define led13 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0D)))
#define led14 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0E)))
#define led15 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0F)))



#endif /* SRC_MAIN_H_ */
