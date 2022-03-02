	.syntax unified
	adds r2, r0, #0
	ldr r0, _0807CB04 @ =gSave
	ldr r1, _0807CB08 @ =gArea
	ldr r3, _0807CB0C @ =0x0000047C
	adds r0, r0, r3
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0807CB04: .4byte gSave
_0807CB08: .4byte gArea
_0807CB0C: .4byte 0x0000047C
	.syntax divided
