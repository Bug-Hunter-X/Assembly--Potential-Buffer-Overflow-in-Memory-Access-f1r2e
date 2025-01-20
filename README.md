# Assembly: Potential Buffer Overflow in Memory Access

This repository demonstrates a potential buffer overflow vulnerability in assembly code. The code attempts to access and write to memory beyond the allocated array bounds, which can lead to crashes, unexpected behavior, or security vulnerabilities.

The `bug.asm` file contains the erroneous code. The `bugSolution.asm` file provides a corrected version with appropriate bounds checking to prevent the buffer overflow.

## Vulnerability Details
The vulnerability stems from the following line in `bug.asm`:

`mov eax, [ebx + ecx*4 + 0x10]`

This instruction accesses memory based on calculations involving `ebx`, `ecx`, and a constant offset `0x10`. If `ecx` is large enough, the calculation could result in an address outside the allocated array bounds.  The subsequent write to this address will lead to the overflow.

## Solution
The corrected code in `bugSolution.asm` adds boundary checks before accessing the array. This ensures that the program attempts to access memory locations only within the valid range of the array, preventing any buffer overflow.