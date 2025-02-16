LD R2,0(R1)              //#r2 = array element
DADDIU R2,R2,#1          // increment r2
SD R2,0(R1)              // store result
DADDIU R1,R1,#8          // increment pointer
BNE R2,R3,LOOP            // branch if not last element

