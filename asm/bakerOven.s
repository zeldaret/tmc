	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BakerOven
BakerOven: @ 0x0809CC5C
	push {lr}
	ldr r2, _0809CC70 @ =gUnk_08123E20
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809CC70: .4byte gUnk_08123E20

	thumb_func_start sub_0809CC74
sub_0809CC74: @ 0x0809CC74
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
	strb r4, [r5, #0xc]
	bl UpdateSpriteForCollisionLayer
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0809CCD4
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	orrs r1, r0
	strb r1, [r2]
	movs r4, #0
_0809CC9A:
	movs r0, #0x92
	movs r1, #1
	adds r2, r4, #0
	bl CreateObject
	adds r1, r0, #0
	adds r4, #1
	cmp r1, #0
	beq _0809CCBE
	str r5, [r1, #0x50]
	lsrs r2, r4, #1
	lsls r2, r2, #0x14
	ldr r0, _0809CCCC @ =0xFFF80000
	adds r2, r2, r0
	adds r0, r5, #0
	ldr r3, _0809CCD0 @ =0xFFF20000
	bl PositionRelative
_0809CCBE:
	cmp r4, #2
	bls _0809CC9A
	adds r0, r5, #0
	bl sub_0809CDF0
	b _0809CD0A
	.align 2, 0
_0809CCCC: .4byte 0xFFF80000
_0809CCD0: .4byte 0xFFF20000
_0809CCD4:
	ldrb r1, [r5, #0xb]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0809CCF2
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #0x14
	strb r0, [r5, #0xe]
	b _0809CD02
_0809CCF2:
	movs r0, #2
	strb r0, [r5, #0xc]
	ands r0, r1
	movs r1, #0x12
	cmp r0, #0
	beq _0809CD00
	movs r1, #0x14
_0809CD00:
	strb r1, [r5, #0xe]
_0809CD02:
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
_0809CD0A:
	pop {r4, r5, pc}

	thumb_func_start sub_0809CD0C
sub_0809CD0C: @ 0x0809CD0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809CDAC
	adds r0, r4, #0
	bl GetNextFrame
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0809CD36
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
_0809CD36:
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809CD56
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _0809CD56
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
_0809CD56:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0809CDAC
	ldr r5, _0809CDB0 @ =gLinkEntity
	adds r6, r5, #0
	adds r6, #0x3d
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0809CDAC
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0809CDAC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_0806FC80
	cmp r0, #0
	beq _0809CDAC
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	adds r0, r5, #0
	movs r1, #0x7a
	bl sub_0800449C
	movs r1, #0x10
	strb r1, [r6]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	movs r0, #0xc
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
_0809CDAC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809CDB0: .4byte gLinkEntity

	thumb_func_start sub_0809CDB4
sub_0809CDB4: @ 0x0809CDB4
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0809CDEC
	movs r2, #1
	movs r0, #1
	strb r0, [r3, #0xc]
	movs r0, #0x1e
	strb r0, [r3, #0xe]
	strb r1, [r3, #0xf]
	ldrb r1, [r3, #0x18]
	subs r0, #0x22
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x18]
	ldr r0, [r3, #0x50]
	ldrh r0, [r0, #0x32]
	subs r0, #0xe
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	movs r1, #0
	bl InitializeAnimation
_0809CDEC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809CDF0
sub_0809CDF0: @ 0x0809CDF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0809CE80 @ =gRoomControls
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
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r6, [r0]
	ldr r0, _0809CE84 @ =0x0000402E
	subs r1, r6, #1
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldr r5, _0809CE88 @ =0x00004022
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl SetTile
	adds r1, r6, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r5, #4
	adds r1, r6, #0
	subs r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809CE8C @ =0x00004024
	adds r1, r6, #0
	subs r1, #0x3f
	ldrb r2, [r4]
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x81
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x80
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809CE80: .4byte gRoomControls
_0809CE84: .4byte 0x0000402E
_0809CE88: .4byte 0x00004022
_0809CE8C: .4byte 0x00004024
