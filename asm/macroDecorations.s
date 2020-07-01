	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MacroDecoration
MacroDecoration: @ 0x08097DD4
	push {lr}
	ldr r2, _08097DE8 @ =gUnk_081233B8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08097DE8: .4byte gUnk_081233B8

	thumb_func_start sub_08097DEC
sub_08097DEC: @ 0x08097DEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08097E46
	cmp r0, #1
	bgt _08097E0A
	cmp r0, #0
	beq _08097E1C
	b _08097EA2
_08097E0A:
	cmp r0, #3
	bgt _08097EA2
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08097E9C
_08097E1C:
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	strh r1, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08097EB8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08097EA2
	adds r1, r0, #0
	adds r1, #0xb
	adds r0, r4, #0
	bl sub_0801D2B4
	b _08097EA2
_08097E46:
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	beq _08097E76
	cmp r0, #1
	bgt _08097E5C
	cmp r0, #0
	beq _08097E68
	b _08097E9C
_08097E5C:
	cmp r0, #2
	bne _08097E9C
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_0801D2B4
_08097E68:
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
	b _08097E9C
_08097E76:
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_0801D2B4
_08097E9C:
	adds r0, r4, #0
	bl sub_08097F34
_08097EA2:
	pop {r4, pc}

	thumb_func_start sub_08097EA4
sub_08097EA4: @ 0x08097EA4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08097EB4
	adds r0, r1, #0
	bl sub_08097F10
_08097EB4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08097EB8
sub_08097EB8: @ 0x08097EB8
	push {r4, r5, r6, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _08097F04 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r5, r1, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	ldr r4, _08097F08 @ =gUnk_081233C0
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r1, _08097F0C @ =0x00007FFF
	cmp r0, r1
	beq _08097F00
	adds r6, r1, #0
_08097EE8:
	ldrh r0, [r4, #2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, r5, r1
	movs r2, #1
	bl SetTile
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bne _08097EE8
_08097F00:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08097F04: .4byte gRoomControls
_08097F08: .4byte gUnk_081233C0
_08097F0C: .4byte 0x00007FFF

	thumb_func_start sub_08097F10
sub_08097F10: @ 0x08097F10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08097F30 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_08097F60
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r4, #0x32]
	pop {r4, pc}
	.align 2, 0
_08097F30: .4byte gRoomControls

	thumb_func_start sub_08097F34
sub_08097F34: @ 0x08097F34
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08097F5C @ =gRoomControls
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_08097F60
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08097F10
	pop {r4, pc}
	.align 2, 0
_08097F5C: .4byte gRoomControls

	thumb_func_start sub_08097F60
sub_08097F60: @ 0x08097F60
	push {lr}
	ldrb r2, [r0, #0xa]
	cmp r2, #1
	bne _08097F74
	ldrb r0, [r0, #0x1e]
	lsrs r0, r0, #1
	cmp r0, #1
	bne _08097F7C
	asrs r1, r1, #3
	b _08097F7E
_08097F74:
	cmp r2, #1
	blt _08097F7E
	cmp r2, #3
	bgt _08097F7E
_08097F7C:
	asrs r1, r1, #1
_08097F7E:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
