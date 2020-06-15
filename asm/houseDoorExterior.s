	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start HouseDoorExterior
HouseDoorExterior: @ 0x080866C0
	push {lr}
	ldr r2, _080866D4 @ =gUnk_081206B4
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080866D4: .4byte gUnk_081206B4

	thumb_func_start sub_080866D8
sub_080866D8: @ 0x080866D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _080866FE
	movs r0, #1
	strb r0, [r6, #0xc]
	str r1, [r6, #0x68]
	ldrb r1, [r6, #0xe]
	adds r0, r6, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #6
	bl sub_0805E3A0
_080866FE:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	bl sub_0804B128
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldrh r0, [r5]
	ldr r1, _080867C4 @ =0x0000FFFF
	cmp r0, r1
	beq _080867BA
	mov sb, r1
_08086718:
	movs r7, #1
	mov r1, r8
	lsls r7, r1
	ldr r0, [r6, #0x68]
	ands r0, r7
	cmp r0, #0
	bne _080867A8
	ldrb r0, [r5, #5]
	bl sub_080867CC
	cmp r0, #0
	beq _080867A8
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_080562CC
	cmp r0, #0
	beq _080867A8
	ldrb r1, [r5, #7]
	ldrb r2, [r5, #6]
	movs r0, #0x19
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080867A8
	adds r0, #0x6c
	mov r2, r8
	strb r2, [r0]
	ldr r1, _080867C8 @ =gRoomControls
	ldrh r0, [r5]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #2]
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	adds r0, #0x20
	strh r0, [r4, #0x32]
	str r6, [r4, #0x50]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrb r1, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #5]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r0, [r6, #0x68]
	orrs r0, r7
	str r0, [r6, #0x68]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _080867A8
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_080867A8:
	adds r5, #0xc
	movs r0, #1
	add r8, r0
	ldrh r0, [r5]
	cmp r0, sb
	beq _080867BA
	mov r1, r8
	cmp r1, #0x1f
	bls _08086718
_080867BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080867C4: .4byte 0x0000FFFF
_080867C8: .4byte gRoomControls

	thumb_func_start sub_080867CC
sub_080867CC: @ 0x080867CC
	push {lr}
	cmp r0, #0
	beq _080867DE
	cmp r0, #2
	bne _080867DE
	movs r0, #0x18
	bl CheckGlobalFlag
	b _080867E0
_080867DE:
	movs r0, #1
_080867E0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080867E4
sub_080867E4: @ 0x080867E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_080562CC
	cmp r0, #0
	bne _08086814
	ldr r2, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2, #0x68]
	bics r0, r1
	str r0, [r2, #0x68]
	bl DeleteThisEntity
_08086814:
	adds r0, r4, #0
	bl sub_0808681C
	pop {r4, pc}

	thumb_func_start sub_0808681C
sub_0808681C: @ 0x0808681C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	beq _0808682C
	cmp r4, #1
	beq _08086868
	b _0808688C
_0808682C:
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0xc
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	strb r4, [r5, #0x1e]
	ldr r0, _08086864 @ =gUnk_081206AC
	str r0, [r5, #0x48]
	ldrb r1, [r5, #0xd]
	cmp r1, #1
	bne _08086852
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r5, #0x1e]
_08086852:
	ldrb r1, [r5, #0x10]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080868AA
	strb r2, [r5, #0xc]
	b _0808688C
	.align 2, 0
_08086864: .4byte gUnk_081206AC
_08086868:
	adds r0, r5, #0
	bl sub_08086954
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808688C
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0x1e]
	movs r0, #0x10
	movs r1, #0
	movs r2, #1
	bl sub_08078AC0
	ldr r0, _080868AC @ =0x00000111
	bl PlaySFX
_0808688C:
	ldrb r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080868AA
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	adds r0, r5, #0
	bl ExecuteScriptCommandSet
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_080868EC
_080868AA:
	pop {r4, r5, pc}
	.align 2, 0
_080868AC: .4byte 0x00000111

	thumb_func_start sub_080868B0
sub_080868B0: @ 0x080868B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080868D2
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldr r0, _080868E8 @ =gUnk_081206AC
	str r0, [r5, #0x48]
	movs r0, #8
	strb r0, [r5, #0xe]
_080868D2:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	adds r0, r5, #0
	bl ExecuteScriptCommandSet
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_080868EC
	pop {r4, r5, pc}
	.align 2, 0
_080868E8: .4byte gUnk_081206AC

	thumb_func_start sub_080868EC
sub_080868EC: @ 0x080868EC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, [r1, #8]
	movs r0, #0
	str r0, [r1, #8]
	cmp r2, #0
	beq _0808691E
	movs r5, #0x80
	lsls r5, r5, #1
	movs r4, #0
	movs r1, #1
_08086902:
	mvns r0, r2
	adds r0, #1
	ands r0, r2
	eors r2, r0
	cmp r0, #0x80
	beq _08086914
	cmp r0, r5
	beq _08086918
	b _0808691A
_08086914:
	strb r4, [r3, #0x1e]
	b _0808691A
_08086918:
	strb r1, [r3, #0x1e]
_0808691A:
	cmp r2, #0
	bne _08086902
_0808691E:
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	bne _0808692A
	adds r0, r3, #0
	bl sub_0800445C
_0808692A:
	pop {r4, r5, pc}

	thumb_func_start sub_0808692C
sub_0808692C: @ 0x0808692C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #2
	strb r0, [r2, #0xb]
	ldrb r0, [r2, #0x1e]
	movs r1, #2
	cmp r0, #0
	bne _08086946
	movs r1, #1
_08086946:
	strb r1, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0xd]
	movs r0, #8
	strb r0, [r2, #0xe]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08086954
sub_08086954: @ 0x08086954
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	cmp r0, #0
	beq _0808699C
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0x14
	bl sub_0806ED9C
	cmp r0, #0
	blt _080869A0
	ldr r0, _08086994 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _080869A0
	ldr r2, _08086998 @ =gLinkState
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _080869A0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _080869A0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	b _0808699E
	.align 2, 0
_08086994: .4byte gLinkEntity
_08086998: .4byte gLinkState
_0808699C:
	movs r0, #8
_0808699E:
	strb r0, [r4, #0xe]
_080869A0:
	ldrb r0, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_080869A4
sub_080869A4: @ 0x080869A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08086954
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080869C2
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #1
	str r0, [r5, #0x14]
_080869C2:
	pop {r4, r5, pc}