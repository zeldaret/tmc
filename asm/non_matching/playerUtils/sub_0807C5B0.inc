	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _0807C5E8 @ =gUnk_0200D654
	movs r4, #0x80
	lsls r4, r4, #5
	movs r3, #0
	ldr r6, _0807C5EC @ =gRoomControls
	ldr r2, _0807C5F0 @ =gUnk_02027EB4
_0807C5BE:
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807C5D4
	cmp r0, #0xf
	bhi _0807C5D2
	ldrb r1, [r2]
	cmp r1, #0xf
	bhi _0807C5D4
	orrs r0, r1
_0807C5D2:
	strb r0, [r2]
_0807C5D4:
	adds r2, #1
	adds r3, #1
	cmp r3, r4
	blo _0807C5BE
	ldrb r1, [r6, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C5E8: .4byte gUnk_0200D654
_0807C5EC: .4byte gRoomControls
_0807C5F0: .4byte gUnk_02027EB4
	.syntax divided
