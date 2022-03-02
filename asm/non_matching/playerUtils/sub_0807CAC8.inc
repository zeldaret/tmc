	.syntax unified
	ldr r2, _0807CAE0 @ =gSave
	ldr r1, _0807CAE4 @ =gArea
	ldr r3, _0807CAE8 @ =0x0000047C
	adds r2, r2, r3
	ldrb r1, [r1, #3]
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_0807CAE0: .4byte gSave
_0807CAE4: .4byte gArea
_0807CAE8: .4byte 0x0000047C
	.syntax divided
