// This is the source code of fill_picoBlaze_BRAM() function [runs on FPGA PS] 
// 
// Authors: 
//				- Ehsan Ali:		ehssan.aali@gmail.com
//				- Wanchalerm Pora	wanchalerm.p@chula.ac.th
// Last modfied: 21-Aug-2019

void fill_picoBlaze_BRAM() {
  int loc = 0;
  for (int i=0; i<16384; i=i+4) {
    Xil_Out32 (XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR + i, program_4k[loc]);
    loc++; 
  }
}
