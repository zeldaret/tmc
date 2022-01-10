        push {r4, r5, r6, r7, lr}
        mov r7, r10
        mov r6, r9
        mov r5, r8
        push {r5, r6, r7}
        sub sp, #0x8
        ldr r1, _data0_0
        ldr r2, _data0_0+0x4
        add r0, r1, r2
        ldr r3, _data0_0+0x8
        add r2, r1, r3
        ldr r7, _data0_0+0xc
        add r7, r1, r7
        str r7, [sp, #0x4]
        ldr r3, _data0_0+0x10
        add r6, r1, r3
        mov r1, #0x10
_code0_0:
        mov r5, #0x10
        mov r7, #0x80
        add r7, r0
        mov r10, r7
        mov r3, r2
        add r3, #0x80
        str r3, [sp]
        ldr r7, [sp, #0x4]
        add r7, #0x40
        mov r8, r7
        mov r3, #0x40
        add r3, r6
        mov r9, r3
        sub r1, #0x1
        mov r12, r1
        mov r3, r0
        add r3, #0x20
        mov r4, r2
        add r4, #0x20
_code0_1:
        ldrh r0, [r3]
        strh r0, [r4]
        ldrh r0, [r3]
        lsl r0, #0x1
        ldr r7, _data0_0
        add r0, r7
        ldrh r1, [r0]
        ldr r0, [sp, #0x4]
        add r2, r0, r5
        ldr r7, _data0_0+0x14
        add r0, r1, r7
        ldrb r0, [r0]
        strb r0, [r2]
        add r2, r6, r5
        ldr r0, _data0_0+0x18
        add r1, r0
        ldrb r0, [r1]
        strb r0, [r2]
        sub r3, #0x2
        sub r4, #0x2
        sub r5, #0x1
        cmp r5, #0x0
        bne _code0_1
        mov r0, r10
        ldr r2, [sp]
        mov r1, r8
        str r1, [sp, #0x4]
        mov r6, r9
        mov r1, r12
        cmp r1, #0x0
        bne _code0_0
        add sp, #0x8
        pop {r3, r4, r5}
        mov r8, r3
        mov r9, r4
        mov r10, r5
        pop {r4, r5, r6, r7, pc}
.align 2, 0
_data0_0:
        .4byte gMetatileTypesTop
        .4byte 0xffffbcb0
        .4byte 0xffffecb0
        .4byte 0x6658
        .4byte 0xffffd658
        .4byte gUnk_080B37A0
        .4byte gUnk_080B3E80
