sub_08058D34: @ 0x08058D34
        push    {r4, lr}
        mov     r0, #0x28
        bl      LoadPaletteGroup
        ldr     r0, _08058DAC @ =gUnk_02017700
        mov     r2, #0x90
        lsl     r2, r2, #0x2
        add     r1, r0, r2
        mov     r2, #0x20
        bl      MemCopy
        ldr     r2, _08058DB0 @ =gUsedPalettes
        ldr     r0, [r2]
        mov     r1, #0x80
        lsl     r1, r1, #0xe
        orr     r0, r0, r1
        str     r0, [r2]
        mov     r0, #0x16
        bl      LoadGfxGroup
        ldr     r1, _08058DB4 @ =gScreen
        ldrh    r0, [r1]
        mov     r3, #0
        mov     r2, #0x1
        mov     r4, #0
        orr     r0, r0, r2
        strh    r0, [r1]
        ldr     r0, _08058DB8 @ =0x0000BC82
        strh    r0, [r1, #0x20]
        ldr     r0, _08058DBC @ =0x00005E86
        strh    r0, [r1, #0x14]
        strh    r3, [r1, #0x16]
        strh    r3, [r1, #0x18]
        add     r2, r1, #0
        add     r2, r2, #0x66
        ldr     r0, _08058DC0 @ =0x00003456
        strh    r0, [r2]
        add     r1, r1, #0x68
        ldr     r0, _08058DC4 @ =0x00000909
        strh    r0, [r1]
        ldr     r0, _08058DC8 @ =gArea
        mov     r2, #0x86
        lsl     r2, r2, #0x4
        add     r1, r0, r2
        add     r2, r2, #0x4
        add     r0, r0, r2
        ldr     r0, [r0]
        str     r0, [r1]
        ldr     r0, _08058DCC @ =gUnk_02000070
        strb    r4, [r0]
        mov     r0, #0x17
        bl      CheckGlobalFlag
        cmp     r0, #0
        beq     _08058DA8
        mov     r0, #0x4a
        bl      LoadGfxGroup
_08058DA8:
        pop     {r4, pc}
.align 2,0
_08058DAC: .4byte gUnk_02017700
_08058DB0: .4byte gUsedPalettes
_08058DB4: .4byte gScreen
_08058DB8: .4byte 0x0000BC82
_08058DBC: .4byte 0x00005E86
_08058DC0: .4byte 0x00003456
_08058DC4: .4byte 0x00000909
_08058DC8: .4byte gArea
_08058DCC: .4byte gUnk_02000070
