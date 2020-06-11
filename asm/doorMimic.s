	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08021FA8
sub_08021FA8: @ 0x08021FA8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08021FD4 @ =gUnk_080CB734
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _08021FD8 @ =gUnk_080CB8A4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	pop {r4, r5, pc}
	.align 2, 0
_08021FD4: .4byte gUnk_080CB734
_08021FD8: .4byte gUnk_080CB8A4

	thumb_func_start sub_08021FDC
sub_08021FDC: @ 0x08021FDC
	push {lr}
	ldr r2, _08021FF0 @ =gUnk_080CB74C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021FF0: .4byte gUnk_080CB74C

	thumb_func_start sub_08021FF4
sub_08021FF4: @ 0x08021FF4
	push {lr}
	ldr r1, _08022000 @ =gUnk_080CB734
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022000: .4byte gUnk_080CB734

	thumb_func_start sub_08022004
sub_08022004: @ 0x08022004
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl CreateFx
	adds r0, r4, #0
	bl sub_08049CF4
	bl sub_0805E780
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022034
sub_08022034: @ 0x08022034
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022098 @ =gUnk_080CB764
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_080221C0
	pop {r4, pc}
	.align 2, 0
_08022098: .4byte gUnk_080CB764

	thumb_func_start sub_0802209C
sub_0802209C: @ 0x0802209C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080220D2
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r1, [r1]
	movs r2, #0x10
	movs r3, #0x10
	bl sub_0806FBFC
	cmp r0, #0
	beq _080220D6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _080220D6
_080220D2:
	subs r0, #1
	strb r0, [r4, #0xe]
_080220D6:
	pop {r4, pc}

	thumb_func_start sub_080220D8
sub_080220D8: @ 0x080220D8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080220EC
	movs r0, #3
	strb r0, [r1, #0xc]
_080220EC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080220F0
sub_080220F0: @ 0x080220F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022160
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802215C @ =gUnk_080CB76C
	adds r4, r0, r1
	movs r6, #0
_08022124:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08022148
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
_08022148:
	adds r6, #1
	adds r4, #2
	cmp r6, #5
	bls _08022124
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _08022170
	.align 2, 0
_0802215C: .4byte gUnk_080CB76C
_08022160:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022170
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
_08022170:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08022174
sub_08022174: @ 0x08022174
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022196
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xb]
	adds r1, #8
	adds r0, r4, #0
	bl UpdateSprite
_08022196:
	pop {r4, pc}

	thumb_func_start sub_08022198
sub_08022198: @ 0x08022198
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080221BC
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
_080221BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080221C0
sub_080221C0: @ 0x080221C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08022220 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r1, _08022224 @ =gUnk_080B4488
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0x7e
	strh r4, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldr r1, _08022228 @ =gUnk_080CB79C
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08022220: .4byte gRoomControls
_08022224: .4byte gUnk_080B4488
_08022228: .4byte gUnk_080CB79C
