    .syntax unified
    .text
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080B15C8 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _080B15CC @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _080B15D0 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _080B15D4 @ =gUnk_02036A50
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _080B15D8 @ =0x040000D4
	str r0, [r3]
	ldr r0, _080B15DC @ =0x040000D8
	str r1, [r0]
	ldr r1, _080B15E0 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080B15BC
	ldr r2, _080B15E4 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_080B15B4:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080B15B4
_080B15BC:
	ldr r0, _080B15C8 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B15C8: .4byte 0x04000208
_080B15CC: .4byte 0x04000204
_080B15D0: .4byte 0x0000F8FF
_080B15D4: .4byte gUnk_02036A50
_080B15D8: .4byte 0x040000D4
_080B15DC: .4byte 0x040000D8
_080B15E0: .4byte 0x040000DC
_080B15E4: .4byte 0x040000DE

    .syntax divided
