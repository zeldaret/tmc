	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object80
Object80: @ 0x08098B10
	push {lr}
	ldr r2, _08098B24 @ =gUnk_08123664
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098B24: .4byte gUnk_08123664

	thumb_func_start sub_08098B28
sub_08098B28: @ 0x08098B28
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #1
	ldr r0, _08098BD4 @ =gUnk_0812366C
	adds r2, r2, r0
	movs r3, #1
	movs r4, #1
	strb r4, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x1e]
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x82
	strb r0, [r1]
	ldrb r0, [r2, #1]
	adds r2, r5, #0
	adds r2, #0x83
	strb r0, [r2]
	ldrb r0, [r1]
	lsrs r0, r0, #1
	ldrh r1, [r5, #0x2e]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r0, [r2]
	lsrs r0, r0, #1
	ldrh r1, [r5, #0x32]
	subs r1, r1, r0
	subs r2, #9
	strh r1, [r2]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _08098BD8 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r6, r5, #0
	adds r6, #0x80
	strh r1, [r6]
	adds r7, r5, #0
	adds r7, #0x38
	strb r4, [r7]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08098BCA
	ldr r0, _08098BDC @ =0x00004074
	ldrh r1, [r6]
	subs r1, #0x40
	ldrb r2, [r7]
	bl SetTile
_08098BCA:
	adds r0, r5, #0
	bl sub_08098BE8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08098BD4: .4byte gUnk_0812366C
_08098BD8: .4byte gRoomControls
_08098BDC: .4byte 0x00004074

	thumb_func_start sub_08098BE0
sub_08098BE0: @ 0x08098BE0
	push {lr}
	bl sub_08098BE8
	pop {pc}

	thumb_func_start sub_08098BE8
sub_08098BE8: @ 0x08098BE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08098C28 @ =gLinkState
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08098C26
	ldr r4, _08098C2C @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08098C30
	cmp r0, #0
	beq _08098C26
	bl sub_08079F8C
	cmp r0, #0
	beq _08098C26
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08098C26
	movs r0, #1
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_0807AAF8
_08098C26:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08098C28: .4byte gLinkState
_08098C2C: .4byte gLinkEntity

	thumb_func_start sub_08098C30
sub_08098C30: @ 0x08098C30
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	adds r0, r3, #0
	adds r0, #0x78
	ldrh r0, [r0]
	subs r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	adds r0, r3, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r2, r0
	bhi _08098C64
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08098C64
	movs r4, #1
_08098C64:
	adds r0, r4, #0
	pop {r4, pc}
