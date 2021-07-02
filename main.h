#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#define BRAM_WRITE_BASE_ADDRESS XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_READ_BASE_ADDRESS  XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x100)

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

#define switch0 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x00)+100))
#define switch1 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x01)+100))
#define switch2 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x02)+100))
#define switch3 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x03)+100))
#define switch4 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x04)+100))
#define switch5 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x05)+100))
#define switch6 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x06)+100))
#define switch7 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x07)+100))
#define switch8 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x08)+100))
#define switch9 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x09)+100))
#define switch10 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0A)+100))
#define switch11 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0B)+100))
#define switch12 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0C)+100))
#define switch13 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0D)+100))
#define switch14 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0E)+100))
#define switch15 ((u32*) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*(0x0F)+100))


#endif /* SRC_MAIN_H_ */
