    .syntax unified
    push {r4, lr}
    adds r3, r0, #0
    ldr r0, _0801CF10 @ =gUnk_0200AF00
    adds r1, r0, #0
    adds r1, #0x24
    ldrb r4, [r1]
    cmp r4, #1
    bne _0801CF0E
    movs r2, #2
    movs r0, #2
    strb r0, [r1]
    movs r1, #0
    movs r0, #0x10
    strh r0, [r3, #0xc]
    movs r0, #0x90
    strh r0, [r3, #0xe]
    strb r1, [r3, #6]
    movs r0, #7
    strb r0, [r3, #1]
    strb r4, [r3, #4]
    ldrb r0, [r3]
    orrs r0, r2
    strb r0, [r3]
    ldr r1, _0801CF14 @ =gUnk_080C9094
    adds r0, r3, #0
    bl sub_0801CAB8
_0801CF0E:
    pop {r4, pc}
    .align 2, 0
_0801CF10: .4byte gUnk_0200AF00
_0801CF14: .4byte gUnk_080C9094
    .syntax divided
