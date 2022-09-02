addi x1, x1, 10
addi x2, x0, 0
sw x1, 0(x0)

# Testing beq:
# It should loop through 10 times, then jump to
# test_bne.
test_beq:
#  x16 <= 1
addi x16, x0, 0x1 # x16 = 1
loop1:
addi x2, x2, 1
beq x1, x2, test_bne
jal x0, loop1

# Testing bne:
# It should jump straight to test_bge.
test_bne:
# x16 <= 2
addi x16, x0, 0x2 # x16 = 2
loop2:
add x2, x0, x0
bne x1, x2, test_bge
jal x0, loop2

# Testing bge:
# It should loop about 10 times,
# counting down from 20 to 10.
# Then jump to test_blt.
test_bge:
#  x16 <= 3
addi x16, x0, 0x3 # x16 = 3
addi x2, x0, 20
loop3:
addi x2, x2, -1
bge x1, x2, test_blt
jal x0, loop3

# Testing blt:
# It shoud loop about 10 times, 
# from 0 to 10. Then jump to test_bltu
test_blt:
# x16 <= 4
addi x16, x0, 0x4 # x16 = 4
addi x2, x0, 0
loop4:
addi x2, x2, 1
blt x1, x2, test_bltu
jal x0, loop4

# Testing bltu:
# It shoud loop about 10 times, 
# from 0 to 10. Then jump to test_bgeu
test_bltu:
addi x16, x0, 0x5 # x16 = 5
addi x2, x0, 0
loop5:
addi x2, x2, 1
bltu x1, x2, test_bgeu
jal x0, loop5

# Testing bgeu:
# It should loop about 10 times, from 0 to 10
# Then jump to end.
test_bgeu:
addi x16, x0, 0x6 # x16 = 6
addi x2, x0, 0
loop6:
addi x2, x2, 1
bgeu x2, x1, end
jal x0, loop6

end:
addi x16, x0, 0xFF # x16 = 0xFF
# If we see 0xFF in it, we can assume we're done.
