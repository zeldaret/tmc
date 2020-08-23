	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object35
Object35: @ 0x0808B86C
	push {lr}
	ldr r2, _0808B880 @ =gUnk_081213C4
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808B880: .4byte gUnk_081213C4

	thumb_func_start sub_0808B884
sub_0808B884: @ 0x0808B884
	push {lr}
	ldr r2, _0808B898 @ =gUnk_081213D0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808B898: .4byte gUnk_081213D0

	thumb_func_start sub_0808B89C
sub_0808B89C: @ 0x0808B89C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808B8D4
sub_0808B8D4: @ 0x0808B8D4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808B904
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl InitializeAnimation
_0808B904:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808B908
sub_0808B908: @ 0x0808B908
	push {lr}
	bl GetNextFrame
	pop {pc}

	thumb_func_start sub_0808B910
sub_0808B910: @ 0x0808B910
	push {lr}
	ldr r2, _0808B92C @ =gUnk_081213DC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r2, _0808B930 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	pop {pc}
	.align 2, 0
_0808B92C: .4byte gUnk_081213DC
_0808B930: .4byte gPlayerState

	thumb_func_start sub_0808B934
sub_0808B934: @ 0x0808B934
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strb r7, [r4, #0x1e]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0808B9B8 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0808B9C0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xf]
	ldr r0, _0808B9BC @ =0x00004022
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl SetTile
	b _0808B9D2
	.align 2, 0
_0808B9B8: .4byte gRoomControls
_0808B9BC: .4byte 0x00004022
_0808B9C0:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r7, [r4, #0xe]
_0808B9D2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0808B9D4
sub_0808B9D4: @ 0x0808B9D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _0808BA0A
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldr r0, _0808BA0C @ =0x0000010B
	bl sub_08004488
_0808BA0A:
	pop {r4, pc}
	.align 2, 0
_0808BA0C: .4byte 0x0000010B

	thumb_func_start sub_0808BA10
sub_0808BA10: @ 0x0808BA10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808BA44
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xc
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
_0808BA44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808BA48
sub_0808BA48: @ 0x0808BA48
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08083734
	cmp r0, #0
	beq _0808BA68
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080836DC
_0808BA68:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808BA6C
sub_0808BA6C: @ 0x0808BA6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808BAA4
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08083814
	ldr r0, _0808BAA8 @ =0x0000010B
	bl sub_08004488
	ldr r0, _0808BAAC @ =0x00004022
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0808BAA4:
	pop {r4, pc}
	.align 2, 0
_0808BAA8: .4byte 0x0000010B
_0808BAAC: .4byte 0x00004022

	thumb_func_start nullsub_520
nullsub_520: @ 0x0808BAB0
	bx lr
	.align 2, 0

	thumb_func_start sub_0808BAB4
sub_0808BAB4: @ 0x0808BAB4
	push {lr}
	ldr r2, _0808BAC8 @ =gUnk_081213F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808BAC8: .4byte gUnk_081213F4

	thumb_func_start sub_0808BACC
sub_0808BACC: @ 0x0808BACC
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #1
	strb r4, [r2, #0xc]
	movs r3, #0x10
	strb r3, [r2, #0xe]
	ldrh r0, [r2, #0x36]
	subs r0, #0x10
	strh r0, [r2, #0x36]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _0808BAEA
	movs r0, #2
	strb r0, [r2, #0x1e]
	b _0808BAFC
_0808BAEA:
	movs r0, #0
	strb r0, [r2, #0x1e]
	ldr r0, [r2, #0x50]
	ldrh r1, [r0, #0x2e]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0808BAFC
	strb r4, [r2, #0x1e]
_0808BAFC:
	adds r0, r2, #0
	bl sub_080A29BC
	pop {r4, pc}

	thumb_func_start sub_0808BB04
sub_0808BB04: @ 0x0808BB04
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808BB16
	bl DeleteThisEntity
_0808BB16:
	pop {pc}
