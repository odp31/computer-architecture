  LD  F2,0          // memory load
  DIVD  F8,F2,0      // memory SD
  MULTD F2, F6, F2  // Integer ADD, SUB
  LD F4, 0(Ry)      // Branches
  ADDD F4, F0, F4    // ADDD
  ADDD F10, F8, F2    // MULTD
  ADDI Rx, Rx, #8    // DIVD
  ADDI Ry, Ry, #8
  SD   F4, 0 (Ry)
  SUB R20, R4, Rx
  BNZ R20, Loop
