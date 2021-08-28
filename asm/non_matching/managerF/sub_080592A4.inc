	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080592C8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	bl DeleteThisEntity
	b _080592EA
_080592C8:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	adds r0, r4, #0
	bl sub_0805930C
.ifndef EU
	movs r0, #0xb7
	lsls r0, r0, #1
	bl SoundReq
.endif
	bl DeleteThisEntity
_080592EA:
	pop {r4, pc}
	.syntax divided
