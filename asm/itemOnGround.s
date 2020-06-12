	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08080974
sub_08080974: @ 0x08080974
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r1, _0808098C @ =gRoomControls
	ldrh r2, [r1, #6]
	adds r0, r2, #0
	adds r0, #0x78
	cmp r3, r0
	bhi _08080990
	strh r2, [r1, #0xa]
	b _080809A2
	.align 2, 0
_0808098C: .4byte gRoomControls
_08080990:
	ldrh r0, [r1, #0x1e]
	adds r2, r2, r0
	adds r0, r2, #0
	subs r0, #0x78
	cmp r3, r0
	bhs _0808099E
	adds r0, r3, #0
_0808099E:
	subs r0, #0x78
	strh r0, [r1, #0xa]
_080809A2:
	ldrh r2, [r1, #8]
	adds r0, r2, #0
	adds r0, #0x50
	cmp r4, r0
	bhi _080809B0
	strh r2, [r1, #0xc]
	b _080809C2
_080809B0:
	ldrh r0, [r1, #0x20]
	adds r2, r2, r0
	adds r0, r2, #0
	subs r0, #0x50
	cmp r4, r0
	bhs _080809BE
	adds r0, r4, #0
_080809BE:
	subs r0, #0x50
	strh r0, [r1, #0xc]
_080809C2:
	bl sub_080809D4
	ldr r1, _080809D0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080809D0: .4byte gUnk_02000070

	thumb_func_start sub_080809D4
sub_080809D4: @ 0x080809D4
	push {r4, lr}
	ldr r2, _080809F4 @ =gRoomControls
	ldrb r0, [r2, #0xf]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r2, #0xf]
	ldr r4, [r2, #0x30]
	movs r0, #0x2e
	ldrsh r3, [r4, r0]
	ldrh r1, [r2, #6]
	adds r0, r1, #0
	adds r0, #0x78
	cmp r3, r0
	bgt _080809F8
	strh r1, [r2, #0xa]
	b _08080A0A
	.align 2, 0
_080809F4: .4byte gRoomControls
_080809F8:
	ldrh r0, [r2, #0x1e]
	adds r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x78
	cmp r3, r0
	bge _08080A06
	ldrh r0, [r4, #0x2e]
_08080A06:
	subs r0, #0x78
	strh r0, [r2, #0xa]
_08080A0A:
	ldr r4, [r2, #0x30]
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	ldrh r1, [r2, #8]
	adds r0, r1, #0
	adds r0, #0x50
	cmp r3, r0
	bgt _08080A1E
	strh r1, [r2, #0xc]
	b _08080A30
_08080A1E:
	ldrh r0, [r2, #0x20]
	adds r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x50
	cmp r3, r0
	bge _08080A2C
	ldrh r0, [r4, #0x32]
_08080A2C:
	subs r0, #0x50
	strh r0, [r2, #0xc]
_08080A30:
	bl sub_08080BC4
	ldr r1, _08080A3C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08080A3C: .4byte gUnk_02000070

	thumb_func_start sub_08080A40
sub_08080A40: @ 0x08080A40
	push {r4, r5, r6, r7, lr}
	ldr r7, _08080A70 @ =gRoomControls
	ldr r1, [r7, #0x30]
	ldr r0, _08080A74 @ =gLinkEntity
	adds r2, r7, #0
	cmp r1, r0
	beq _08080A50
	b _08080B5C
_08080A50:
	ldr r0, _08080A78 @ =gLinkState
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08080A5A
	b _08080B5C
_08080A5A:
	ldrb r0, [r1, #0xc]
	subs r0, #1
	cmp r0, #0x1c
	bls _08080A64
	b _08080B5C
_08080A64:
	lsls r0, r0, #2
	ldr r1, _08080A7C @ =_08080A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080A70: .4byte gRoomControls
_08080A74: .4byte gLinkEntity
_08080A78: .4byte gLinkState
_08080A7C: .4byte _08080A80
_08080A80: @ jump table
	.4byte _08080AFA @ case 0
	.4byte _08080B5C @ case 1
	.4byte _08080B5C @ case 2
	.4byte _08080B5C @ case 3
	.4byte _08080B5C @ case 4
	.4byte _08080B5C @ case 5
	.4byte _08080B5C @ case 6
	.4byte _08080B5C @ case 7
	.4byte _08080AFA @ case 8
	.4byte _08080B5C @ case 9
	.4byte _08080B5C @ case 10
	.4byte _08080B5C @ case 11
	.4byte _08080B5C @ case 12
	.4byte _08080B5C @ case 13
	.4byte _08080AF4 @ case 14
	.4byte _08080B5C @ case 15
	.4byte _08080B5C @ case 16
	.4byte _08080B5C @ case 17
	.4byte _08080B5C @ case 18
	.4byte _08080B5C @ case 19
	.4byte _08080B5C @ case 20
	.4byte _08080B5C @ case 21
	.4byte _08080B5C @ case 22
	.4byte _08080AFA @ case 23
	.4byte _08080B5C @ case 24
	.4byte _08080B5C @ case 25
	.4byte _08080B5C @ case 26
	.4byte _08080B5C @ case 27
	.4byte _08080AFA @ case 28
_08080AF4:
	ldrb r0, [r2, #4]
	cmp r0, #0x48
	beq _08080B5C
_08080AFA:
	ldr r3, [r7, #0x30]
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	ldrh r0, [r7, #8]
	subs r6, r1, r0
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldrh r0, [r7, #6]
	subs r5, r1, r0
	asrs r0, r5, #4
	movs r2, #0x3f
	ands r0, r2
	asrs r1, r6, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	adds r3, #0x38
	ldrb r1, [r3]
	bl sub_080002C8
	adds r4, r0, #0
	ldr r0, [r7, #0x30]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080002A8
	ldr r1, _08080B48 @ =gUnk_030010A0
	strh r0, [r1, #0xa]
	cmp r4, #0x3f
	beq _08080B50
	cmp r4, #0x3f
	bhi _08080B4C
	cmp r4, #0x29
	bhi _08080B5C
	cmp r4, #0x28
	blo _08080B5C
	b _08080B50
	.align 2, 0
_08080B48: .4byte gUnk_030010A0
_08080B4C:
	cmp r4, #0xf1
	bne _08080B5C
_08080B50:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xff
	movs r3, #0xa
	bl sub_080806BC
_08080B5C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08080B60
sub_08080B60: @ 0x08080B60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08080B90 @ =0x00005004
	adds r4, r0, r1
	ldr r2, _08080B94 @ =gUnk_080B37A0
	mov r8, r2
	movs r3, #0
	ldr r1, _08080B98 @ =0x00003FFF
	mov ip, r1
	ldr r7, _08080B9C @ =gUnk_080B7910
	ldr r2, _08080BA0 @ =0x0000B004
	adds r1, r0, r2
	adds r2, r0, #4
	ldr r6, _08080BA4 @ =0xFFFFC000
	ldr r5, _08080BA8 @ =0x00000FFF
_08080B80:
	ldrh r0, [r2]
	cmp r0, ip
	bhi _08080BAC
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, r8
	b _08080BB0
	.align 2, 0
_08080B90: .4byte 0x00005004
_08080B94: .4byte gUnk_080B37A0
_08080B98: .4byte 0x00003FFF
_08080B9C: .4byte gUnk_080B7910
_08080BA0: .4byte 0x0000B004
_08080BA4: .4byte 0xFFFFC000
_08080BA8: .4byte 0x00000FFF
_08080BAC:
	adds r0, r0, r6
	adds r0, r0, r7
_08080BB0:
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r2, #2
	adds r3, #1
	cmp r3, r5
	bls _08080B80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080BC4
sub_08080BC4: @ 0x08080BC4
	push {r4, r5, r6, lr}
	ldr r3, _08080C40 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #6]
	subs r5, r1, r0
	movs r2, #0xf
	ands r5, r2
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	ands r0, r2
	adds r6, r0, #0
	adds r6, #8
	ldrh r2, [r3, #0x16]
	adds r4, r2, #0
	cmp r4, #0
	beq _08080C50
	subs r2, #1
	strh r2, [r3, #0x16]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #4
	movs r1, #0xe
	ands r2, r1
	adds r0, r0, r2
	ldr r1, _08080C44 @ =gUnk_080169A4
	adds r2, r0, r1
	ldr r4, _08080C48 @ =gUnk_02025EB0
	ldr r1, [r4]
	cmp r1, #0
	beq _08080C16
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r1, [r4]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r6
	strh r0, [r1, #4]
_08080C16:
	ldr r4, _08080C4C @ =gUnk_0200B650
	ldr r1, [r4]
	cmp r1, #0
	beq _08080C30
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r1, [r4]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r6
	strh r0, [r1, #4]
_08080C30:
	ldrb r1, [r2]
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r1, [r2, #1]
	adds r0, #1
	strb r1, [r0]
	b _08080C76
	.align 2, 0
_08080C40: .4byte gRoomControls
_08080C44: .4byte gUnk_080169A4
_08080C48: .4byte gUnk_02025EB0
_08080C4C: .4byte gUnk_0200B650
_08080C50:
	ldr r0, _08080C78 @ =gUnk_02025EB0
	ldr r1, [r0]
	cmp r1, #0
	beq _08080C5E
	strh r5, [r1, #2]
	ldr r0, [r0]
	strh r6, [r0, #4]
_08080C5E:
	ldr r0, _08080C7C @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _08080C6C
	strh r5, [r1, #2]
	ldr r0, [r0]
	strh r6, [r0, #4]
_08080C6C:
	adds r0, r3, #0
	adds r0, #0x24
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
_08080C76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080C78: .4byte gUnk_02025EB0
_08080C7C: .4byte gUnk_0200B650

	thumb_func_start sub_08080C80
sub_08080C80: @ 0x08080C80
	push {r4, lr}
	bl sub_080197D4
	ldr r0, _08080CA8 @ =gUnk_02025EB4
	ldr r4, _08080CAC @ =gRoomControls
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldr r0, _08080CB0 @ =gUnk_0200B654
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	pop {r4, pc}
	.align 2, 0
_08080CA8: .4byte gUnk_02025EB4
_08080CAC: .4byte gRoomControls
_08080CB0: .4byte gUnk_0200B654

	thumb_func_start sub_08080CB4
sub_08080CB4: @ 0x08080CB4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r4, #0xa]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08080CF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	ldrb r0, [r4, #0xa]
	cmp r0, #0x5c
	beq _08080CD4
	b _08080E00
_08080CD4:
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	ldr r1, _08080CEC @ =gUnk_080C9CBC
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	b _08080E00
	.align 2, 0
_08080CEC: .4byte gUnk_080C9CBC
_08080CF0:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08080D00
	b _08080E00
_08080D00:
	ldrb r0, [r4, #0xa]
	subs r0, #0x40
	cmp r0, #0x22
	bhi _08080E00
	lsls r0, r0, #2
	ldr r1, _08080D14 @ =_08080D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080D14: .4byte _08080D18
_08080D18: @ jump table
	.4byte _08080DEE @ case 0
	.4byte _08080DEE @ case 1
	.4byte _08080DEE @ case 2
	.4byte _08080DEE @ case 3
	.4byte _08080E00 @ case 4
	.4byte _08080E00 @ case 5
	.4byte _08080E00 @ case 6
	.4byte _08080E00 @ case 7
	.4byte _08080E00 @ case 8
	.4byte _08080E00 @ case 9
	.4byte _08080E00 @ case 10
	.4byte _08080E00 @ case 11
	.4byte _08080E00 @ case 12
	.4byte _08080E00 @ case 13
	.4byte _08080E00 @ case 14
	.4byte _08080E00 @ case 15
	.4byte _08080E00 @ case 16
	.4byte _08080E00 @ case 17
	.4byte _08080E00 @ case 18
	.4byte _08080E00 @ case 19
	.4byte _08080E00 @ case 20
	.4byte _08080E00 @ case 21
	.4byte _08080E00 @ case 22
	.4byte _08080E00 @ case 23
	.4byte _08080E00 @ case 24
	.4byte _08080E00 @ case 25
	.4byte _08080E00 @ case 26
	.4byte _08080E00 @ case 27
	.4byte _08080DEE @ case 28
	.4byte _08080E00 @ case 29
	.4byte _08080E00 @ case 30
	.4byte _08080E00 @ case 31
	.4byte _08080DA4 @ case 32
	.4byte _08080E00 @ case 33
	.4byte _08080DEE @ case 34
_08080DA4:
	adds r5, r4, #0
	adds r5, #0x6a
	ldrb r0, [r5]
	cmp r0, #0
	beq _08080DB4
	subs r0, #1
	strb r0, [r5]
	b _08080E00
_08080DB4:
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xa
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08080E00
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x62
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806FAB0
	b _08080E00
_08080DEE:
	ldr r0, _08080E04 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08080E00
	adds r0, r4, #0
	bl sub_080A2B80
_08080E00:
	pop {r4, r5, pc}
	.align 2, 0
_08080E04: .4byte gUnk_030010A0

	thumb_func_start sub_08080E08
sub_08080E08: @ 0x08080E08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08080EDE
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1e
	bhi _08080EDE
	lsls r0, r0, #2
	ldr r1, _08080E2C @ =_08080E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080E2C: .4byte _08080E30
_08080E30: @ jump table
	.4byte _08080ED8 @ case 0
	.4byte _08080ED8 @ case 1
	.4byte _08080EDE @ case 2
	.4byte _08080EDE @ case 3
	.4byte _08080ED8 @ case 4
	.4byte _08080ED8 @ case 5
	.4byte _08080ED8 @ case 6
	.4byte _08080EDE @ case 7
	.4byte _08080ED8 @ case 8
	.4byte _08080ED8 @ case 9
	.4byte _08080ED8 @ case 10
	.4byte _08080ED8 @ case 11
	.4byte _08080ED8 @ case 12
	.4byte _08080EDE @ case 13
	.4byte _08080EDE @ case 14
	.4byte _08080EDE @ case 15
	.4byte _08080EDE @ case 16
	.4byte _08080EDE @ case 17
	.4byte _08080EDE @ case 18
	.4byte _08080EDE @ case 19
	.4byte _08080EAC @ case 20
	.4byte _08080EDE @ case 21
	.4byte _08080EDE @ case 22
	.4byte _08080EDE @ case 23
	.4byte _08080EDE @ case 24
	.4byte _08080EDE @ case 25
	.4byte _08080EDE @ case 26
	.4byte _08080EDE @ case 27
	.4byte _08080EDE @ case 28
	.4byte _08080EDE @ case 29
	.4byte _08080ED8 @ case 30
_08080EAC:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	b _08080EDE
_08080ED8:
	adds r0, r4, #0
	bl sub_08081598
_08080EDE:
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08080EF0
	adds r0, r4, #0
	bl sub_080813BC
	b _08080F00
_08080EF0:
	ldr r0, _08080F18 @ =gUnk_0811E7D4
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08080F00:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x5c
	bne _08080F0E
	ldr r1, _08080F1C @ =gRoomVars
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
_08080F0E:
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_08080F18: .4byte gUnk_0811E7D4
_08080F1C: .4byte gRoomVars

	thumb_func_start sub_08080F20
sub_08080F20: @ 0x08080F20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08080F3A
	bl CheckFlags
	cmp r0, #0
	beq _08080F3A
	bl sub_0805E780
_08080F3A:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x60
	bne _08080F42
	b _0808107C
_08080F42:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #7
	strb r0, [r1]
	subs r1, #3
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08080F9C @ =gUnk_080FD1A8
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xa]
	subs r0, #0x3f
	cmp r0, #0x20
	bhi _08081030
	lsls r0, r0, #2
	ldr r1, _08080FA0 @ =_08080FA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080F9C: .4byte gUnk_080FD1A8
_08080FA0: .4byte _08080FA4
_08080FA4: @ jump table
	.4byte _08081028 @ case 0
	.4byte _08081030 @ case 1
	.4byte _08081030 @ case 2
	.4byte _08081030 @ case 3
	.4byte _08081030 @ case 4
	.4byte _08081030 @ case 5
	.4byte _08081030 @ case 6
	.4byte _08081030 @ case 7
	.4byte _08081030 @ case 8
	.4byte _08081030 @ case 9
	.4byte _08081030 @ case 10
	.4byte _08081030 @ case 11
	.4byte _08081030 @ case 12
	.4byte _08081030 @ case 13
	.4byte _08081030 @ case 14
	.4byte _08081030 @ case 15
	.4byte _08081030 @ case 16
	.4byte _08081030 @ case 17
	.4byte _08081030 @ case 18
	.4byte _08081030 @ case 19
	.4byte _08081030 @ case 20
	.4byte _08081028 @ case 21
	.4byte _08081028 @ case 22
	.4byte _08081028 @ case 23
	.4byte _08081028 @ case 24
	.4byte _08081028 @ case 25
	.4byte _08081030 @ case 26
	.4byte _08081030 @ case 27
	.4byte _08081030 @ case 28
	.4byte _08081028 @ case 29
	.4byte _08081028 @ case 30
	.4byte _08081028 @ case 31
	.4byte _08081028 @ case 32
_08081028:
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #0x17
	b _08081036
_08081030:
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #0x11
_08081036:
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	adds r5, r4, #0
	adds r5, #0x69
	movs r2, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x6a
	strb r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r2, [r0]
	subs r0, #4
	strb r1, [r0]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	bl sub_0808147C
	strb r0, [r4, #0x1c]
	ldr r1, _08081078 @ =gUnk_0811E7E8
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _080810A4
	.align 2, 0
_08081078: .4byte gUnk_0811E7E8
_0808107C:
	movs r0, #0x40
	movs r1, #0x60
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080810A4
	movs r0, #0
	strb r0, [r1, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0808109A
	movs r0, #2
	strb r0, [r1, #0xb]
_0808109A:
	adds r0, r4, #0
	bl CopyPosition
	bl sub_0805E780
_080810A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080810A8
sub_080810A8: @ 0x080810A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080814A4
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080810D6
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080810DC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080810DC
_080810D6:
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r4, #0x15]
_080810DC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _080810E8
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_080810E8:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080810F8
	adds r0, r4, #0
	bl sub_08016A30
_080810F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080810FC
sub_080810FC: @ 0x080810FC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0x5f
	beq _0808110E
	adds r0, r2, #0
	bl sub_08081598
	b _0808112E
_0808110E:
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3b
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _08081130 @ =gLinkEntity
	adds r1, r2, #0
	bl CopyPosition
_0808112E:
	pop {pc}
	.align 2, 0
_08081130: .4byte gLinkEntity

	thumb_func_start sub_08081134
sub_08081134: @ 0x08081134
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080814A4
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08081150
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081150
sub_08081150: @ 0x08081150
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	ldr r1, _08081180 @ =0x0000FF80
	strh r1, [r0, #0x36]
	ldrb r3, [r0, #0x1b]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r3, #0x40
	orrs r1, r3
	strb r1, [r0, #0x1b]
	ldrb r1, [r0, #0x19]
	ands r2, r1
	orrs r2, r3
	strb r2, [r0, #0x19]
	ldr r0, _08081184 @ =0x0000012D
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08081180: .4byte 0x0000FF80
_08081184: .4byte 0x0000012D

	thumb_func_start sub_08081188
sub_08081188: @ 0x08081188
	push {lr}
	adds r2, r0, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080811A8
	adds r0, r2, #0
	bl sub_08016A30
_080811A8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080811AC
sub_080811AC: @ 0x080811AC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl GetTileTypeByEntity
	adds r4, #0x6e
	strh r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_080811C8
sub_080811C8: @ 0x080811C8
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	strb r1, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_080811D8
sub_080811D8: @ 0x080811D8
	push {lr}
	bl sub_08081188
	ldr r0, _080811E8 @ =0x00000215
	bl PlaySFX
	pop {pc}
	.align 2, 0
_080811E8: .4byte 0x00000215

	thumb_func_start sub_080811EC
sub_080811EC: @ 0x080811EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #6
	beq _08081200
	adds r0, r4, #0
	bl sub_080AEFE0
	b _08081206
_08081200:
	adds r0, r4, #0
	bl sub_0806F69C
_08081206:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _08081228
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_080814A4
_08081228:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808122C
sub_0808122C: @ 0x0808122C
	push {lr}
	ldr r2, _08081244 @ =gUnk_0811E814
	adds r1, r0, #0
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08081244: .4byte gUnk_0811E814

	thumb_func_start sub_08081248
sub_08081248: @ 0x08081248
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081500
	adds r0, r4, #0
	bl sub_080814C0
	cmp r0, #0
	beq _08081264
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _0808126A
_08081264:
	adds r0, r4, #0
	bl sub_0800442E
_0808126A:
	pop {r4, pc}

	thumb_func_start sub_0808126C
sub_0808126C: @ 0x0808126C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0808153C
	pop {r4, pc}

	thumb_func_start sub_0808127C
sub_0808127C: @ 0x0808127C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080814C0
	cmp r0, #0
	beq _08081292
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _08081298
_08081292:
	adds r0, r4, #0
	bl sub_0808153C
_08081298:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_113
nullsub_113: @ 0x0808129C
	bx lr
	.align 2, 0

	thumb_func_start sub_080812A0
sub_080812A0: @ 0x080812A0
	push {lr}
	bl sub_08081500
	pop {pc}

	thumb_func_start sub_080812A8
sub_080812A8: @ 0x080812A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080002D0
	cmp r0, #0xf
	beq _080812E4
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r4, [r0]
	adds r0, r5, #0
	bl GetTileTypeByEntity
	cmp r4, r0
	beq _080812E4
	movs r0, #0
	strb r0, [r5, #0x15]
	movs r2, #0
	strh r0, [r5, #0x24]
	ldrb r1, [r5, #0x18]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x69
	strb r2, [r0]
	adds r0, r5, #0
	bl sub_080810A8
_080812E4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080812E8
sub_080812E8: @ 0x080812E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0808131C @ =gLinkState
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08081318
	ldr r0, [r3, #0x30]
	ands r0, r2
	cmp r0, #0
	bne _08081318
	ldr r1, _08081320 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _08081318
	adds r0, r4, #0
	bl sub_080810FC
_08081318:
	pop {r4, pc}
	.align 2, 0
_0808131C: .4byte gLinkState
_08081320: .4byte gLinkEntity

	thumb_func_start nullsub_510
nullsub_510: @ 0x08081324
	bx lr
	.align 2, 0

	thumb_func_start sub_08081328
sub_08081328: @ 0x08081328
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldrh r1, [r2, #8]
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	beq _08081342
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _08081364
_08081342:
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r2, _08081368 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080177A0
	cmp r0, #0
	beq _08081364
	adds r0, r4, #0
	bl sub_080810FC
_08081364:
	pop {r4, pc}
	.align 2, 0
_08081368: .4byte gLinkEntity

	thumb_func_start sub_0808136C
sub_0808136C: @ 0x0808136C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080813B2
	ldr r3, [r5, #0x54]
	ldr r0, [r3, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r3, #0x30]
	str r0, [r5, #0x30]
	ldrb r2, [r3, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r3, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	b _080813BA
_080813B2:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08081404
_080813BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080813BC
sub_080813BC: @ 0x080813BC
	push {lr}
	ldr r2, _080813D0 @ =gUnk_0811E840
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080813D0: .4byte gUnk_0811E840

	thumb_func_start sub_080813D4
sub_080813D4: @ 0x080813D4
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xd]
	strb r1, [r0, #0x1d]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_080813E8
sub_080813E8: @ 0x080813E8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080813F0
sub_080813F0: @ 0x080813F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08081402
	adds r0, r4, #0
	bl sub_080810FC
_08081402:
	pop {r4, pc}

	thumb_func_start sub_08081404
sub_08081404: @ 0x08081404
	push {lr}
	cmp r1, #0
	beq _08081418
	adds r1, r0, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08081418
	bl SetFlag
_08081418:
	bl sub_0805E780
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08081420
sub_08081420: @ 0x08081420
	push {r4, lr}
	adds r4, r0, #0
	bl CheckShouldPlayItemGetCutscene
	cmp r0, #0
	bne _08081438
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl GiveItem
	movs r0, #0
	b _0808144C
_08081438:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #1
_0808144C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start CheckShouldPlayItemGetCutscene
CheckShouldPlayItemGetCutscene: @ 0x08081450
	push {r4, lr}
	movs r4, #0
	ldr r1, _08081478 @ =gUnk_080FD5B4
	ldrb r2, [r0, #0xa]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08081470
	adds r0, r2, #0
	bl GetInventoryValue
	cmp r0, #0
	bne _08081472
_08081470:
	movs r4, #1
_08081472:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_08081478: .4byte gUnk_080FD5B4

	thumb_func_start sub_0808147C
sub_0808147C: @ 0x0808147C
	lsls r0, r0, #3
	ldr r1, _08081488 @ =gUnk_0811E84C
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_08081488: .4byte gUnk_0811E84C

	thumb_func_start sub_0808148C
sub_0808148C: @ 0x0808148C
	push {lr}
	lsls r0, r0, #3
	ldr r1, _080814A0 @ =gUnk_0811E84C
	adds r1, r0, r1
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0808149E
	bl PlaySFX
_0808149E:
	pop {pc}
	.align 2, 0
_080814A0: .4byte gUnk_0811E84C

	thumb_func_start sub_080814A4
sub_080814A4: @ 0x080814A4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080814B6
	adds r1, #0x6c
	movs r0, #0x78
	b _080814BC
_080814B6:
	adds r1, #0x6c
	movs r0, #0x96
	lsls r0, r0, #2
_080814BC:
	strh r0, [r1]
	pop {pc}

	thumb_func_start sub_080814C0
sub_080814C0: @ 0x080814C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E40C
	cmp r0, #0
	bne _080814FA
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080814E0
	movs r0, #1
	b _080814FC
_080814E0:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _080814FA
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080814FA:
	movs r0, #0
_080814FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081500
sub_08081500: @ 0x08081500
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x68
	ldrb r0, [r5]
	cmp r0, #0
	bne _08081538
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08081522
	movs r0, #1
	strb r0, [r5]
	b _08081538
_08081522:
	cmp r0, #1
	bne _08081532
	ldrb r0, [r4, #0xa]
	bl sub_0808148C
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08081532:
	adds r0, r4, #0
	bl sub_080AEFE0
_08081538:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808153C
sub_0808153C: @ 0x0808153C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x68
	ldrb r0, [r5]
	cmp r0, #1
	bhi _08081596
	cmp r0, #0
	bne _0808157E
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08081596
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _08081596
	movs r0, #1
	strb r0, [r5]
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xa]
	bl sub_0808148C
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	b _08081596
_0808157E:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08081596
	movs r0, #2
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	bl sub_0808148C
_08081596:
	pop {r4, r5, pc}

	thumb_func_start sub_08081598
sub_08081598: @ 0x08081598
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080815AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08081404
_080815AC:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08081618 @ =gLinkEntity
	str r0, [r4, #0x54]
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x5f
	beq _08081614
	adds r0, r4, #0
	bl sub_08081420
	cmp r0, #0
	beq _08081614
	adds r0, r4, #0
	movs r1, #1
	bl sub_08081404
_08081614:
	pop {r4, pc}
	.align 2, 0
_08081618: .4byte gLinkEntity
