// assume the same latencies for the floating point functional units as in earlier examples:
// add is 2 clock cycles, multiply is 6 clock cycles, and divide is 12 clock cycles
// using the code segment below, show what the status tables look like when the MUL.D is ready
// to go to commit


L.D      F6,32(R2)
L.D      F2, 44(R3)
MUL.D    F0, F2, F4
SUB.D    F8, F2, F6
DIV.D    F10, F0, F6
ADD.D    F6, F8, F2



//At the time the MUL.D is ready to commit,  only the two L.D instructions have committed,although
// severalothers have completed execution
// MUL.D is at the head of the ROB, two L.D instructions are only there to ease understanding
// SUB.D and ADD.D instructions will not commit until the MUL.D instruction commits, although
// the results of the instructions are available and can be used as sources for other instructions
// DIV.D is in execution, buthas not completed soleyly due to itslonger latency than MUL.D
