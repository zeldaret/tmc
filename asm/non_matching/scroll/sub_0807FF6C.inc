	.syntax unified
	push {r4, lr}
	movs r1, #1
	strb r1, [r0, #3]
	ldr r3, _0807FFC8 @ =gScreen
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x60
	ldrb r0, [r2]
	movs r4, #0xb8
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #7
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x5a
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bl ResetPlayer
	bl ResetPlayerAnimationAndAction
	ldr r0, _0807FFCC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0807FFD4
	ldr r1, _0807FFD0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	b _0807FFD8
	.align 2, 0
_0807FFC8: .4byte gScreen
_0807FFCC: .4byte gUnk_03004030
_0807FFD0: .4byte gPlayerEntity
_0807FFD4:
	ldr r0, _0807FFE0 @ =gPlayerEntity
	strb r4, [r0, #0x14]
_0807FFD8:
	bl sub_080809D4
	pop {r4, pc}
	.align 2, 0
_0807FFE0: .4byte gPlayerEntity
	.syntax divided
