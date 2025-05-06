#### MODULE NAME
       ALU_32

#### DEPENDENCIES
       MUX2, MUX4, SameBit, OneBitAdder, Grounder

#### INPUTS

Name | Size(Bits)
---------|---------
A    |     32     
alu_op |     5    
B    |     32     

#### OUTPUTS

Name | Size(Bits)
---------|---------
Zero	|	1
Overflow	|	1
Result |     32     

#### DESCRIPTION
       Computes  A  op  B, where A and B are 32-bit values and 'op' depends on
       the value of alu_op(see below). Stores result in a 32-bit value Result.
       alu_op  is a five bit value, consisting of the following bits in order:
       Ainvert, Binvert, CarryIn, Op1, Op0.  The following operations are sup-
       ported:

 GOp1 |   GOp0  | Ainvert | Binvert | CarryIn | Op1 | Op0 |  Result  
------|---------|---------|---------|---------|-----|-----|---------
  0   |    0    |    0    |    0    |    0    |  0  |  0  |   A&B
  0   |    0    |    0    |    0    |    0    |  0  |  1  |   A|B
  0   |    0    |    0    |    0    |    0    |  1  |  0  |   A+B
  0   |    0    |    0    |    1    |    1    |  1  |  0  |   A-B
  0   |    0    |    0    |    1    |    1    |  1  |  1  |   A<B
  0   |    0    |    1    |    1    |    0    |  0  |  1  |   !(A&B)
  0   |    0    |    1    |    1    |    0    |  0  |  0  |   !(A|B)
  0   |    1    |    X    |    X    |    X    |  X  |  X  |   A*B
  1   |    0    |    X    |    X    |    X    |  X  |  X  |   B<<H
  1   |    1    |    X    |    X    |    X    |  X  |  X  |   log2(A)

Output Zero is 1 if the result is zero (used to check if A == B with a -).
Output Overflow is 1 if the result of A op B cannot be stored in 32 bits.

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
