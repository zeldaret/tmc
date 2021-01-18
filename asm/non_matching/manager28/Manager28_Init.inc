sub_0805C94C: @ 0x0805C94C
        push    {r4, r5, r6, lr}
        add     r4, r0, #0
        ldrb    r0, [r4, #0xa]
        cmp     r0, #0
        bne     _0805C9B0
        add     r6, r4, #0
        add     r6, r6, #0x20
        add     r1, r6, #0
        mov     r2, #0
        add     r0, r4, #0
        add     r0, r0, #0x3c
_0805C962:
        str     r2, [r0]
        sub     r0, r0, #0x4
        cmp     r0, r1
        bge     _0805C962
        add     r0, r4, #0
        bl      Manager28_FindMatchingEntities
        add     r5, r0, #0
        cmp     r5, #0x1
        ble     _0805C9A8
        bl      GetEmptyManager
        add     r2, r0, #0
        cmp     r2, #0
        beq     _0805C9A8
        mov     r0, #0x9
        strb    r0, [r2, #0x8]
        mov     r0, #0x28
        strb    r0, [r2, #0x9]
        mov     r0, #0x1
        strb    r0, [r2, #0xa]
        strb    r5, [r2, #0xe]
        add     r1, r2, #0
        add     r1, r1, #0x20
        add     r0, r6, #0
        ldm     r0!, {r3, r5, r6}
        stm     r1!, {r3, r5, r6}
        ldm     r0!, {r3, r5, r6}
        stm     r1!, {r3, r5, r6}
        ldm     r0!, {r3, r5}
        stm     r1!, {r3, r5}
        add     r0, r2, #0
        mov     r1, #0x6
        bl      AppendEntityToList
_0805C9A8:
        add     r0, r4, #0
        bl      DeleteManager
        b       _0805C9B8
_0805C9B0:
        mov     r1, #0
        mov     r0, #0x1
        strb    r0, [r4, #0xc]
        strb    r1, [r4, #0xf]
_0805C9B8:
        pop     {r4, r5, r6, pc}
