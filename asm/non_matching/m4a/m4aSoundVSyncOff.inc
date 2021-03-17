
	.syntax unified

	.text

	push {lr}
	sub sp, #4
	ldr r0, _080B05E4 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080B05E8 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080B05DC
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _080B05EC @ =0x04000102
	movs r0, #0
	strh r0, [r1]
	ldr r3, _080B05F0 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B05C0
	ldr r0, _080B05F4 @ =0x84400004
	str r0, [r3]
_080B05C0:
	ldr r1, _080B05F8 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080B05FC @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080B05DC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B05E4: .4byte 0x03007FF0
_080B05E8: .4byte 0x978C92AD
_080B05EC: .4byte 0x04000102
_080B05F0: .4byte 0x040000C4
_080B05F4: .4byte 0x84400004
_080B05F8: .4byte 0x040000C6
_080B05FC: .4byte 0x0500018C

    .syntax divided
