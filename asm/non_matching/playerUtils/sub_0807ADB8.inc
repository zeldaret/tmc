	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _0807ADF4 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AE1C
	movs r0, #0x26
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r1, #0x80
	eors r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0807ADF8
	adds r1, r3, #0
	adds r1, #0x89
	movs r0, #0x78
	strb r0, [r1]
	b _0807AE0E
	.align 2, 0
_0807ADF4: .4byte gPlayerState
_0807ADF8:
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x89
	strb r4, [r0]
_0807AE0E:
	ldr r0, _0807AE18 @ =0x00000163
	bl SoundReq
	movs r0, #1
	b _0807AE1E
	.align 2, 0
_0807AE18: .4byte 0x00000163
_0807AE1C:
	movs r0, #0
_0807AE1E:
	pop {r4, pc}
	.syntax divided
