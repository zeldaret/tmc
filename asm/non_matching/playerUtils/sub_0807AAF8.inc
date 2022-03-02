	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AB3C
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	orrs r2, r0
	movs r3, #0
	ldr r0, _0807AB40 @ =gPlayerState
	ldr r1, [r0, #0x40]
	adds r4, r0, #0
	cmp r1, r2
	beq _0807AB32
	adds r1, r4, #0
	adds r1, #0x40
_0807AB20:
	ldr r0, [r1]
	stm r1!, {r2}
	adds r2, r0, #0
	adds r3, #1
	cmp r3, #0xe
	bhi _0807AB32
	ldr r0, [r1]
	cmp r0, r2
	bne _0807AB20
_0807AB32:
	lsls r0, r3, #2
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r0, r1
	str r2, [r0]
_0807AB3C:
	pop {r4, pc}
	.align 2, 0
_0807AB40: .4byte gPlayerState
	.syntax divided
