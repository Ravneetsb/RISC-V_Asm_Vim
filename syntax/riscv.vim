if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword riscvInstruction add addi and andi
syntax keyword riscvInstruction beq bge bgeu blt bltu bne ble bgt 
syntax keyword riscvInstruction div divu
syntax keyword riscvInstruction ecall ebreak
syntax keyword riscvInstruction fence fence.i
syntax keyword riscvInstruction jal nextgroup=riscVFunctionName skipwhite
syntax keyword riscvInstruction jalr nextgroup=riscVFunctionName skipwhite
syntax keyword riscvInstruction call nextgroup=riscVFunctionName skipwhite
syntax keyword riscvInstruction lb lbu lh lhu lw ld
syntax keyword riscvInstruction lui
syntax keyword riscvInstruction mul mulh mulhsu mulhu
syntax keyword riscvInstruction or ori
syntax keyword riscvInstruction rem remu
syntax keyword riscvInstruction sb sh sw sd
syntax keyword riscvInstruction sll slli slt slti sltiu sltu sra srai srl srli sllw sraw srlw
syntax keyword riscvInstruction sub
syntax keyword riscvInstruction xor xori
syntax keyword riscVInstruction mv li

" Return and Jump
syntax keyword riscVReturn ret
"syntax keyword riscVReturn j
syntax keyword riscVReturn j nextgroup=riscVFunctionName skipwhite

" Function name
syntax match riscVFunctionName /\<[A-Za-z_][A-Za-z0-9_]*\>/ contained

" Registers (after first register pattern)
syntax keyword riscvRegister zero ra sp gp tp
syntax keyword riscvRegister t0 t1 t2 t3 t4 t5 t6
syntax keyword riscvRegister s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11
syntax keyword riscvRegister a0 a1 a2 a3 a4 a5 a6 a7
syntax match riscvRegister "\<x\([0-9]\|[1-2][0-9]\|3[0-1]\)\>"

" Section directives
syntax match riscvSection "\.text"
syntax match riscvSection "\.data"
syntax match riscvSection "\.section"
syntax match riscvSection "\.bss"
syntax match riscvSection "\.rodata"

" Directives
syntax match riscvDirective "\.align"
syntax match riscvDirective "\.ascii"
syntax match riscvDirective "\.asciiz"
syntax match riscvDirective "\.byte"
syntax match riscvDirective "\.double"
syntax match riscvDirective "\.float"
syntax match riscvDirective "\.global"
syntax match riscvDirective "\.half"
syntax match riscvDirective "\.quad"
syntax match riscvDirective "\.size"
syntax match riscvDirective "\.space"
syntax match riscvDirective "\.string"
syntax match riscvDirective "\.type"
syntax match riscvDirective "\.word"
syntax match riscvDirective "\.zero"

" Labels
syntax match riscvLabel "^\s*\w\+:"

" Comments
syntax match riscvComment "# .*$"

" Heading
syntax match riscvHeading "##.*$"

" Numbers
syntax match riscvNumber "\<[-]\?\d\+\>"
syntax match riscvNumber "\<0[xX][0-9a-fA-F]\+\>"
syntax match riscvNumber "\<0[bB][01]\+\>"

" Color definitions

"hi riscvInstruction ctermfg=107  " sage green
"hi riscvRegister    ctermfg=209  " coral
"hi riscvSection     ctermfg=147  " lavender
"hi riscvDirective   ctermfg=67   " steel blue
"hi riscvLabel       ctermfg=175  " orchid
"hi riscvComment     ctermfg=103  " slate
"hi riscvNumber      ctermfg=180  " tan
"hi riscVReturn      ctermfg=73   " teal

hi riscvInstruction ctermfg=149  " bright sage
hi riscvRegister    ctermfg=216  " bright coral
hi riscvSection     ctermfg=183  " bright lavender
hi riscvDirective   ctermfg=111  " azure blue
hi riscvLabel       ctermfg=218  " bright orchid
hi riscvComment     ctermfg=146  " light slate
hi riscvNumber      ctermfg=158  "ice blue was 195
hi riscVReturn      ctermfg=116  " bright teal
hi riscvHeading     ctermfg=205  "bright pink
hi riscVFunctionName ctermfg=218
let b:current_syntax = "riscv"
