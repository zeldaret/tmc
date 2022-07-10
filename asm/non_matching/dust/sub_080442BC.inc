	.syntax unified
    push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r5, _0804430C @ =gUnk_080D15B4
	ldr r0, [r3, #0x64]
	ldrb r6, [r0]
	movs r4, #0
	cmp r4, r6
	bhs _08044304
	movs r7, #0
_080442CE:
	ldr r1, [r3, #0x48]
	lsls r2, r4, #3
	adds r1, r2, r1
	ldrb r0, [r5]
	strb r0, [r1, #0xc]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #1]
	strb r1, [r0, #0xd]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #2]
	strb r1, [r0, #0xe]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #3]
	strb r1, [r0, #0xf]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	adds r0, #0xc
	strb r7, [r0, #4]
	ldr r0, [r3, #0x48]
	adds r2, r2, r0
	strb r4, [r2, #0x11]
	adds r4, #1
	cmp r4, r6
	blo _080442CE
_08044304:
	adds r0, r3, #0
	adds r0, #0x74
	strb r6, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804430C: .4byte gUnk_080D15B4
    .syntax divided
