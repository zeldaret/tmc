	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	movs r1, #0x15
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	ldr r0, _08063EC8 @ =gUnk_0810F524
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08063F1E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _08063ECC
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #8
	strb r0, [r1]
	b _08063ED2
	.align 2, 0
_08063EC8: .4byte gUnk_0810F524
_08063ECC:
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0]
_08063ED2:
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08063EF2
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _08063EFE
_08063EF2:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_08063EFE:
	adds r1, r4, #0
	adds r1, #0x71
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x39
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08063F20
_08063F1E:
	pop {r4, pc}
    .syntax divided