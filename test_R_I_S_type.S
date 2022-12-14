# ===============================
# test R type
addi x1, x0, 0x001    # x1= 0x0001
addi x2, x0, 0x010    # x2= 0x0010
addi x3, x0, 0x111    # x3= 0x0111
add x4, x1, x2        # x4= 0x0011
sub x5, x2, x1        # x5= 0x000f
xor x6, x3, x1        # x6= 0x0110
or x7, x2, x1         # x7= 0x0011
and x8, x3, x1        # x8= 0x0001
sll x9, x1, x1        # x9= 0x0002
srl x10, x2, x1       # x10=0x0008
sra x11, x2, x1       # x11=0x0008
slt x12, x1, x2       # x12=0x0001
slt x13, x2, x1       # x13=0x0000
# sltu

# ================================
# reset everything
addi x1, x0, 0
addi x2, x0, 0
addi x3, x0, 0
addi x4, x0, 0
addi x5, x0, 0
addi x6, x0, 0
addi x7, x0, 0
addi x8, x0, 0
addi x9, x0, 0
addi x10, x0, 0
addi x11, x0, 0
addi x12, x0, 0
addi x13, x0, 0

# ================================
# test I type
addi x1, x0, 0xff     # x1= 0x00ff
xori x2, x1, 0x77     # x2= 0x0088
ori x3, x2, 0x77      # x3= 0x00ff
andi x4, x1, 0xf      # x4= 0x000f
slli x5, x1, 0x1      # x5= 0x01fe
srli x6, x1, 0x1      # x6= 0x007f
srai x7, x1, 0x1      # x7= 0x007f
slti x8, x1, 0x0      # x8= 0x0000
slti x9, x1, 0x1ff    # x9= 0x0001
# sltiu
# ================================
# reset everything
addi x1, x0, 0
addi x2, x0, 0
addi x3, x0, 0
addi x4, x0, 0
addi x5, x0, 0
addi x6, x0, 0
addi x7, x0, 0
addi x8, x0, 0
addi x9, x0, 0
# ================================
# test S and loading I type
addi x1, x1, -1  # x1  =0xffffffff
sw x1, 0x4(x0)   #(x4) =0xffffffff
lw x2, 0x4(x0)   # x2  =0xffffffff
sb x1, 0x8(x0)   #(x8) =0x000000ff
lb x3, 0x8(x0)   # x3  =0xffffffff
sh x1, 0xc(x0)   #(x12)=0x0000ffff
lh x4, 0xc(x0)   # x4  =0xffffffff
lbu x5, 0x4(x0)  # x5  =0x000000ff
lhu x6, 0x4(x0)  # x6  =0x0000ffff
