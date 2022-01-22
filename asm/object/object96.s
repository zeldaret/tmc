	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object96
Object96: @ 0x0809D784
	push {lr}
	ldr r1, _0809D7A0 @ =gUnk_081240B0
	ldrb r3, [r0, #0xc]
	lsls r3, r3, #2
	adds r3, r3, r1
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #5
	ldr r2, _0809D7A4 @ =gUnk_08123FB0
	adds r1, r1, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0809D7A0: .4byte gUnk_081240B0
_0809D7A4: .4byte gUnk_08123FB0

	thumb_func_start sub_0809D7A8
sub_0809D7A8: @ 0x0809D7A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x38
	movs r0, #2
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldr r0, [r1, #0x10]
	str r0, [r5, #0x20]
	ldrb r3, [r1, #0xf]
	strb r3, [r5, #0x15]
	ldrh r0, [r1, #0x18]
	strh r0, [r5, #0x24]
	ldrh r0, [r5, #0x32]
	ldrh r2, [r1, #0x1a]
	subs r0, r0, r2
	strh r0, [r5, #0x32]
	str r4, [r5, #0x34]
	ldrb r0, [r1, #0x1e]
	strb r0, [r5, #0xe]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0809D80C
	ldrb r0, [r5, #0x15]
	cmp r0, #0x81
	bne _0809D80C
	bl Random
	ldr r1, _0809D820 @ =gPlayerEntity
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x10
	eors r1, r0
	strb r1, [r5, #0x15]
_0809D80C:
	adds r0, r5, #0
	bl UpdateSpriteForCollisionLayer
	ldrb r4, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_0809D820: .4byte gPlayerEntity

	thumb_func_start sub_0809D824
sub_0809D824: @ 0x0809D824
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #1
	ldr r2, [r6, #4]
	cmp r2, #0
	beq _0809D838
	adds r0, r5, #0
	bl _call_via_r2
_0809D838:
	cmp r0, #0
	beq _0809D850
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrh r1, [r6, #0x1a]
	ldrh r2, [r5, #0x32]
	adds r0, r1, r2
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x36]
	subs r0, r0, r1
	strh r0, [r5, #0x36]
_0809D850:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809D860
sub_0809D860: @ 0x0809D860
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl LinearMoveUpdate
	ldr r1, [r6, #0x14]
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809D8B2
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0809D888
	subs r0, #1
	strb r0, [r5, #0xe]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	str r0, [r5, #0x20]
	b _0809D8AC
_0809D888:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0809D8C4 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteForCollisionLayer
	ldr r1, [r6]
	cmp r1, #0
	beq _0809D8AC
	adds r0, r5, #0
	bl _call_via_r1
_0809D8AC:
	movs r0, #0x6e
	bl SoundReq
_0809D8B2:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809D8C4: .4byte gPlayerEntity

	thumb_func_start sub_0809D8C8
sub_0809D8C8: @ 0x0809D8C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0809D8E4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809D8E8
	adds r0, r5, #0
	bl sub_0800445C
	b _0809D90A
	.align 2, 0
_0809D8E4: .4byte gPlayerState
_0809D8E8:
	adds r0, r5, #0
	bl sub_08017850
	cmp r0, #0
	beq _0809D90A
	ldrb r0, [r6, #0xd]
	ldrb r1, [r5, #0xb]
	movs r2, #0
	bl CreateItemEntity
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	beq _0809D906
	bl SetFlag
_0809D906:
	bl DeleteThisEntity
_0809D90A:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809D91C
sub_0809D91C: @ 0x0809D91C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0809D934
	adds r0, r4, #0
	bl SortEntityBelow
_0809D934:
	movs r0, #0x72
	bl SoundReq
	pop {r4, pc}

	thumb_func_start sub_0809D93C
sub_0809D93C: @ 0x0809D93C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _0809D9A0 @ =gPlayerEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #6
	bne _0809D9A4
	ldrb r0, [r3, #0xc]
	ldrb r1, [r2, #0x14]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809D9A4
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	movs r1, #8
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	ldrb r1, [r3, #0xa]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809D9A4
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #0x1a
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #9
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	ldrb r1, [r3, #0xb]
	adds r0, r2, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809D9A4
	movs r0, #1
	b _0809D9A6
	.align 2, 0
_0809D9A0: .4byte gPlayerEntity
_0809D9A4:
	movs r0, #0
_0809D9A6:
	pop {r4, r5, pc}
