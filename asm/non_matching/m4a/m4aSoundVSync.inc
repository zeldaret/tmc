
	.syntax unified

	.text

	push {lr}
	ldr r0, _080B06C4 @ =0x03007FF0
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _080B06C8 @ =0x978C92AD
	adds r0, r0, r1
	cmp r0, #1
	bhi _080B06BE
	ldrb r0, [r2, #4]
	subs r0, #1
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B06BE
	ldrb r0, [r2, #0xb]
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldr r2, _080B06CC @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B06AC
	ldr r0, _080B06D0 @ =0x84400004
	str r0, [r2]
_080B06AC:
	ldr r0, _080B06D4 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	movs r2, #0xb6
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
_080B06BE:
	pop {r0}
	bx r0
	.align 2, 0
_080B06C4: .4byte 0x03007FF0
_080B06C8: .4byte 0x978C92AD
_080B06CC: .4byte 0x040000C4
_080B06D0: .4byte 0x84400004
_080B06D4: .4byte 0x040000C6

    .syntax divided
