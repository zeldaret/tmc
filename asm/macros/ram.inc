	.ifndef GUARD_ASM_MACROS_RAM_INC
	.set GUARD_ASM_MACROS_RAM_INC, 1

.ifdef EU
    .set RAM_DIFF, 0x050AC28C - 0xaa0
.endif

.ifdef USA
    .set RAM_DIFF, 0x050AC28C
.endif

.ifdef JP
    .set RAM_DIFF, 0x050AC28C - 0x260
.endif

    .macro ram_addr x
    .4byte \x - RAM_DIFF
    .endm

	.endif @ GUARD_ASM_MACROS_RAM_INC
