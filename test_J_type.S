# This test program should test jal and jalr. 
# It should jump back and forth between manchester
# and hanover.
# Jump straight to 0x88 = 136
jal x0, hanover

nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

manchester:
# Jump the address that was stored in r3,
# but -4 to jump back to the jump location. 
jalr x4, x3, -4

nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

hanover:
addi x1, x0, 0xff
addi x2, x0, 0xff
# Jump to manchester (0xFFFB4 = -76)
jal x3, manchester
