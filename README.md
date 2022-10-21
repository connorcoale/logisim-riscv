# RV32I
Connor Coale
## Specs
This implementation is entirely within the Logisim software. I use the [Holy Cross Edition](https://github.com/pedrinhofss/logisim-evolution-pedrinhofss) because that's the software we used in my computer architecture course. My circuit is most compatible with that version, and it's pretty easy to download.
I followed the RV32I specifications seen [here](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf), but did not include the following instructions. I may try to add support for these in the future:
- `FENCE`
- `FENCE.I`
- `ECALL`
- `EBREAK`
- `CSRRW`
- `CSRRS`
- `CSRRC`

Maybe this means I implemented RV32E... oh well.

## Top Level
~[RV32I_TopLevel](/assets/RV32I_TopLevel.png)
