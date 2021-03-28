	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile1D
Projectile1D: @ 0x080AB8C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AB8E4 @ =gUnk_0812A6B4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080AB9DC
	pop {r4, pc}
	.align 2, 0
_080AB8E4: .4byte gUnk_0812A6B4

	thumb_func_start sub_080AB8E8
sub_080AB8E8: @ 0x080AB8E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	str r1, [r4, #0x34]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB90E
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	str r4, [r4, #0x50]
_080AB90E:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bhi _080AB936
	movs r0, #0x1d
	bl sub_080A7EE0
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	str r4, [r1, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_080AB936:
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #7
_080AB93C:
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080AB93C
	pop {r4, pc}

	thumb_func_start sub_080AB950
sub_080AB950: @ 0x080AB950
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB99C
	adds r0, r4, #0
	bl ProcessMovement
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	ldr r1, _080AB994 @ =gUnk_0812A6C4
	lsls r5, r0, #1
	adds r1, r5, r1
	ldrh r1, [r1]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	bne _080AB980
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AB9FC
	cmp r0, #0
	beq _080AB9D4
_080AB980:
	bl Random
	ldr r2, _080AB998 @ =gUnk_0812A6BC
	movs r1, #1
	ands r1, r0
	adds r1, r1, r5
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	b _080AB9D4
	.align 2, 0
_080AB994: .4byte gUnk_0812A6C4
_080AB998: .4byte gUnk_0812A6BC
_080AB99C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080AB9A6
	bl DeleteThisEntity
_080AB9A6:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AB9B2
	bl DeleteThisEntity
_080AB9B2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080AB9D0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080AB9D0
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	b _080AB9D4
_080AB9D0:
	bl DeleteThisEntity
_080AB9D4:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}

	thumb_func_start sub_080AB9DC
sub_080AB9DC: @ 0x080AB9DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0x1c
	bl MemCopy
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, #2
	strh r1, [r0]
	pop {r4, pc}

	thumb_func_start sub_080AB9FC
sub_080AB9FC: @ 0x080AB9FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	movs r1, #0x2e
	ldrsh r3, [r5, r1]
	ldr r2, _080ABA4C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r3, r3, r1
	asrs r3, r3, #4
	movs r6, #0x3f
	ands r3, r6
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r3, r1
	ldr r1, _080ABA50 @ =gUnk_080B4488
	lsrs r4, r4, #3
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r3, r3, r1
	ldr r7, _080ABA54 @ =0x00002004
	adds r0, r0, r7
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _080ABA58
	cmp r0, #0x3f
	bhi _080ABA58
	movs r0, #1
	b _080ABA5A
	.align 2, 0
_080ABA4C: .4byte gRoomControls
_080ABA50: .4byte gUnk_080B4488
_080ABA54: .4byte 0x00002004
_080ABA58:
	movs r0, #0
_080ABA5A:
	pop {r4, r5, r6, r7, pc}
