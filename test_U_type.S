# Following two instructions (lui + addi) 
# shoud load deadbeef into x1
lui x1, 0xdeadc
addi x1, x1, -273 # 0x37eef
# The following shoud load (0xfffff + $pc) 
# into x2
auipc x2, 0xfffff
