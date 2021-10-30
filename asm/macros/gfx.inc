	.ifndef GUARD_ASM_MACROS_GFX_INC
	.set GUARD_ASM_MACROS_GFX_INC, 1

@ TODO workaround because we cannot substract two extern pointers
@ Will need to find a different solution when wanting to modify assets.
.ifdef USA
    .equiv ptr_gGlobalGfxAndPalettes, 0x85A2E80
.endif
.ifdef EU
    .equiv ptr_gGlobalGfxAndPalettes, 0x85A23D0
.endif
.ifdef JP
    .equiv ptr_gGlobalGfxAndPalettes, 0x85A2B20
.endif
.ifdef DEMO_USA
    .equiv ptr_gGlobalGfxAndPalettes, 0x85A38B0
.endif
.ifdef DEMO_JP
    .equiv ptr_gGlobalGfxAndPalettes, 0x85A2B18
.endif

    .macro gfx_raw src:req, unknown=0, dest=0, size=0, compressed=0, terminator=0
        .4byte (!(\terminator) << 0x1F) + (\src - ptr_gGlobalGfxAndPalettes)+ \unknown * 0x1000000, \dest, \size + (\compressed << 0x1F)
    .endm

    .macro palette_set palette:req, offset=0, count=0, terminator=0
        .2byte \palette
        .byte \offset, \count & 0xf + (!\terminator*0x80)
    .endm

	.endif @ GUARD_ASM_MACROS_GFX_INC
