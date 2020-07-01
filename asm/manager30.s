	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D4AC
sub_0805D4AC: @ 0x0805D4AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	beq _0805D520
	cmp r0, #1
	bgt _0805D4C6
	cmp r0, #0
	beq _0805D4D2
	b _0805D628
_0805D4C6:
	cmp r0, #2
	beq _0805D5A4
	cmp r0, #3
	bne _0805D4D0
	b _0805D604
_0805D4D0:
	b _0805D628
_0805D4D2:
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0xe]
	strb r0, [r6, #0xf]
	ldrh r1, [r6, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r0, [r6, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r6, #0x28]
	ldr r4, _0805D518 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0805D51C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r6, #0x2e]
	strh r1, [r6, #0x2c]
	b _0805D628
	.align 2, 0
_0805D518: .4byte gLinkEntity
_0805D51C: .4byte gRoomControls
_0805D520:
	ldr r4, _0805D568 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _0805D56C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	strh r5, [r6, #0x2e]
	ldrh r2, [r6, #0x2c]
	cmp r5, r2
	beq _0805D5A4
	strh r5, [r6, #0x2c]
	ldrh r0, [r6, #0x2e]
	ldrb r1, [r6, #0xb]
	bl GetTileType
	adds r1, r0, #0
	ldr r3, _0805D570 @ =0x00000317
	cmp r1, r3
	beq _0805D574
	movs r0, #0xc6
	lsls r0, r0, #2
	cmp r1, r0
	beq _0805D580
	b _0805D5A4
	.align 2, 0
_0805D568: .4byte gLinkEntity
_0805D56C: .4byte gRoomControls
_0805D570: .4byte 0x00000317
_0805D574:
	movs r0, #2
	strb r0, [r6, #0xc]
	movs r0, #0x6d
	bl PlaySFX
	b _0805D5A4
_0805D580:
	ldrh r1, [r6, #0x2e]
	ldrb r2, [r6, #0xb]
	adds r0, r3, #0
	bl sub_0807B7D8
	movs r0, #0x6b
	bl PlaySFX
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D5A4
	movs r0, #3
	strb r0, [r6, #0xc]
	movs r0, #0x40
	strb r0, [r6, #0xe]
_0805D5A4:
	ldrh r0, [r6, #0x3e]
	cmp r0, #0
	beq _0805D628
	bl CheckFlags
	cmp r0, #0
	beq _0805D628
	ldrh r0, [r6, #0x3e]
	bl ClearFlag
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0xf]
	strb r0, [r6, #0xe]
	movs r1, #0
	adds r0, r6, #0
	adds r0, #0x37
	mov sb, r0
	ldrb r5, [r0]
	cmp r1, r5
	bhs _0805D628
	movs r0, #0x36
	adds r0, r0, r6
	mov r8, r0
_0805D5D4:
	lsls r0, r1, #6
	ldrh r2, [r6, #0x28]
	adds r5, r0, r2
	movs r4, #0
	adds r7, r1, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0805D5F8
_0805D5E6:
	adds r0, r5, r4
	ldrb r1, [r6, #0xb]
	bl sub_0807BA8C
	adds r4, #1
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0805D5E6
_0805D5F8:
	adds r1, r7, #0
	mov r2, sb
	ldrb r2, [r2]
	cmp r1, r2
	blo _0805D5D4
	b _0805D628
_0805D604:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0805D628
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805D622
	cmp r0, #0x20
	bne _0805D628
	ldrh r0, [r6, #0x3c]
	bl SetFlag
	b _0805D628
_0805D622:
	movs r0, #0x72
	bl PlaySFX
_0805D628:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
