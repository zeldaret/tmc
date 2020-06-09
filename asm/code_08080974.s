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
	bl sub_0807CBE4
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
	bl sub_080002A0
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
	bl sub_080002A0
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
	bl sub_0807CCC8
_08081418:
	bl sub_0805E780
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08081420
sub_08081420: @ 0x08081420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081450
	cmp r0, #0
	bne _08081438
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl sub_08053FF0
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

	thumb_func_start sub_08081450
sub_08081450: @ 0x08081450
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

	thumb_func_start sub_0808161C
sub_0808161C: @ 0x0808161C
	push {lr}
	ldr r2, _08081630 @ =gUnk_0811EBFC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08081630: .4byte gUnk_0811EBFC

	thumb_func_start sub_08081634
sub_08081634: @ 0x08081634
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808169C
	movs r5, #0
	movs r0, #0x65
	strh r0, [r4, #0x12]
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r5, [r4, #0x15]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xe]
	movs r2, #0x80
	cmp r0, #0
	beq _08081674
	adds r2, r0, #0
	strb r5, [r4, #0xe]
_08081674:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_080AE008
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	ldr r0, _08081698 @ =0x00000129
	bl PlaySFX
	b _0808170C
	.align 2, 0
_08081698: .4byte 0x00000129
_0808169C:
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080816B2
	adds r0, r4, #0
	bl sub_08081790
	adds r0, r4, #0
	bl sub_0808180C
	b _08081702
_080816B2:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080816C4
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	b _08081702
_080816C4:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08081718 @ =gUnk_0811EC08
	ldrb r0, [r4, #0xa]
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r0, [r4, #0xa]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	asrs r2, r0
	ands r2, r1
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080816FA
	ldr r0, _0808171C @ =gUnk_0811EC20
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xe]
_080816FA:
	adds r0, r4, #0
	adds r1, r2, #0
	bl UpdateSprite
_08081702:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	bl sub_08004488
_0808170C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	pop {r4, r5, pc}
	.align 2, 0
_08081718: .4byte gUnk_0811EC08
_0808171C: .4byte gUnk_0811EC20

	thumb_func_start sub_08081720
sub_08081720: @ 0x08081720
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08081744
	adds r0, r4, #0
	bl sub_08081790
	adds r0, r4, #0
	bl sub_0808180C
	b _0808175E
_08081744:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808175E
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0808175E:
	pop {r4, pc}

	thumb_func_start sub_08081760
sub_08081760: @ 0x08081760
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808177E
	adds r0, r4, #0
	bl sub_0808180C
	b _0808178C
_0808177E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808178C
	adds r0, r4, #0
	bl sub_0806F69C
_0808178C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081790
sub_08081790: @ 0x08081790
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0xef
	bhi _080817B4
	ldr r0, _080817B0 @ =gUnk_0811EC64
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r2, #0
	bl sub_0805457C
	b _080817C6
	.align 2, 0
_080817B0: .4byte gUnk_0811EC64
_080817B4:
	ldr r0, _080817C8 @ =gUnk_0811EC24
	ldrb r1, [r1]
	subs r1, #0xf0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080817C6:
	pop {pc}
	.align 2, 0
_080817C8: .4byte gUnk_0811EC24

	thumb_func_start sub_080817CC
sub_080817CC: @ 0x080817CC
	push {lr}
	movs r1, #9
	bl sub_0805457C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817D8
sub_080817D8: @ 0x080817D8
	push {lr}
	movs r1, #0xd
	bl sub_0805457C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817E4
sub_080817E4: @ 0x080817E4
	push {lr}
	movs r1, #0xe
	bl sub_0805457C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817F0
sub_080817F0: @ 0x080817F0
	push {lr}
	movs r1, #1
	bl sub_0805457C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817FC
sub_080817FC: @ 0x080817FC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	movs r2, #0
	bl sub_08054754
	pop {pc}

	thumb_func_start sub_0808180C
sub_0808180C: @ 0x0808180C
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_08081814
sub_08081814: @ 0x08081814
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08081850 @ =gUnk_0811EE28
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _08081838
	adds r0, r4, #0
	bl sub_08080CB4
_08081838:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bgt _0808184E
	cmp r0, #1
	blt _0808184E
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0808184E
	adds r0, r4, #0
	bl sub_0800445C
_0808184E:
	pop {r4, pc}
	.align 2, 0
_08081850: .4byte gUnk_0811EE28

	thumb_func_start sub_08081854
sub_08081854: @ 0x08081854
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0x16]
	str r4, [r4, #0x54]
	adds r0, r4, #0
	bl sub_08081A5C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808188E
	cmp r0, #1
	beq _08081898
	b _0808189C
_0808188E:
	ldr r0, _08081894 @ =gUnk_080FD328
	b _0808189A
	.align 2, 0
_08081894: .4byte gUnk_080FD328
_08081898:
	ldr r0, _080818A0 @ =gUnk_080FD198
_0808189A:
	str r0, [r4, #0x48]
_0808189C:
	pop {r4, pc}
	.align 2, 0
_080818A0: .4byte gUnk_080FD198

	thumb_func_start sub_080818A4
sub_080818A4: @ 0x080818A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xd]
	cmp r2, #0
	beq _080818C0
	movs r1, #2
	strb r1, [r4, #0xc]
	ldr r0, _080818BC @ =gUnk_0200AF00
	adds r0, #0x2f
	strb r1, [r0]
	b _08081920
	.align 2, 0
_080818BC: .4byte gUnk_0200AF00
_080818C0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x36
	bne _080818F0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08081920
	strb r2, [r1]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _080818E8 @ =gRoomVars
	movs r0, #1
	str r0, [r1, #0x68]
	ldr r1, _080818EC @ =gLinkState
	movs r0, #7
	strb r0, [r1, #0xc]
	b _08081920
	.align 2, 0
_080818E8: .4byte gRoomVars
_080818EC: .4byte gLinkState
_080818F0:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08081920
	strb r2, [r1]
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08078B48
	bl sub_08077B2C
	ldr r1, _08081924 @ =gLinkState
	movs r0, #4
	strb r0, [r1, #5]
	ldr r0, _08081928 @ =gLinkEntity
	str r4, [r0, #0x74]
	ldr r0, _0808192C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #2
	strb r1, [r0]
	bl sub_08056360
_08081920:
	pop {r4, pc}
	.align 2, 0
_08081924: .4byte gLinkState
_08081928: .4byte gLinkEntity
_0808192C: .4byte gUnk_0200AF00

	thumb_func_start sub_08081930
sub_08081930: @ 0x08081930
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08081968 @ =gUnk_0200AF00
	adds r6, r0, #0
	adds r6, #0x2f
	movs r0, #2
	strb r0, [r6]
	ldr r3, _0808196C @ =gLinkEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	subs r0, #6
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r5, _08081970 @ =gLinkState
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0808195E
	ldr r0, [r3, #0x74]
	cmp r4, r0
	beq _08081974
_0808195E:
	adds r0, r4, #0
	bl sub_080819B4
	b _080819AC
	.align 2, 0
_08081968: .4byte gUnk_0200AF00
_0808196C: .4byte gLinkEntity
_08081970: .4byte gLinkState
_08081974:
	bl sub_080784E4
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08081998
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _08081998
	movs r0, #7
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _080819AC
_08081998:
	ldr r0, _080819B0 @ =gLinkState
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x98
	ands r0, r1
	cmp r0, #0
	beq _080819AC
	adds r0, r4, #0
	bl sub_080819B4
_080819AC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080819B0: .4byte gLinkState

	thumb_func_start sub_080819B4
sub_080819B4: @ 0x080819B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08081A48 @ =gRoomVars
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080819D4
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _080819D0
	adds r0, #0x20
	ldrb r1, [r5, #0xf]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
_080819D0:
	bl sub_0805E780
_080819D4:
	ldr r0, _08081A4C @ =gLinkState
	movs r2, #0
	strb r2, [r0, #5]
	ldr r4, _08081A50 @ =gLinkEntity
	str r2, [r4, #0x74]
	ldr r1, _08081A54 @ =gUnk_0200AF00
	ldr r3, _08081A48 @ =gRoomVars
	strb r2, [r3, #6]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	adds r1, #0x2f
	strb r2, [r1]
	strb r2, [r3, #7]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r3, _08081A58 @ =gRoomControls
	ldrh r0, [r3, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x2e]
	movs r6, #0x82
	ldrh r0, [r3, #8]
	ldrh r3, [r6, r5]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	str r2, [r5, #0x34]
	movs r3, #1
	strb r3, [r5, #0xc]
	strb r1, [r5, #0xd]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r5, #0
	bl sub_08081A5C
	pop {r4, r5, r6, pc}
	.align 2, 0
_08081A48: .4byte gRoomVars
_08081A4C: .4byte gLinkState
_08081A50: .4byte gLinkEntity
_08081A54: .4byte gUnk_0200AF00
_08081A58: .4byte gRoomControls

	thumb_func_start sub_08081A5C
sub_08081A5C: @ 0x08081A5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080787D8
	adds r2, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08081A7A
	ldr r0, _08081A7C @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xa]
_08081A7A:
	pop {r4, pc}
	.align 2, 0
_08081A7C: .4byte gUnk_03003DF0

	thumb_func_start sub_08081A80
sub_08081A80: @ 0x08081A80
	push {lr}
	adds r2, r0, #0
	ldr r0, _08081A98 @ =gRoomVars
	ldr r0, [r0, #0x68]
	cmp r0, #0
	bne _08081A9C
	bl sub_08081AB0
	bl sub_0805E780
	b _08081AAC
	.align 2, 0
_08081A98: .4byte gRoomVars
_08081A9C:
	cmp r0, #2
	bne _08081AAC
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	bl sub_08081AB0
_08081AAC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08081AB0
sub_08081AB0: @ 0x08081AB0
	push {lr}
	ldr r1, _08081AC4 @ =gRoomVars
	movs r0, #0
	str r0, [r1, #0x68]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	bl sub_08078A90
	pop {pc}
	.align 2, 0
_08081AC4: .4byte gRoomVars

	thumb_func_start sub_08081AC8
sub_08081AC8: @ 0x08081AC8
	push {lr}
	ldr r2, _08081ADC @ =gUnk_0811EE38
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08081ADC: .4byte gUnk_0811EE38

	thumb_func_start sub_08081AE0
sub_08081AE0: @ 0x08081AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r1, [r0]
	cmp r1, #0
	beq _08081B0E
	subs r0, #0x4c
	strb r1, [r0]
_08081B0E:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08081B6C @ =gRoomControls
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
	adds r5, #0x74
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080002B0
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08081B70
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08081B70
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrh r1, [r5]
	ldrb r2, [r6]
	movs r0, #0x7a
	bl sub_0807B314
	b _08081B82
	.align 2, 0
_08081B6C: .4byte gRoomControls
_08081B70:
	adds r0, r4, #0
	bl sub_08081E3C
	cmp r0, #0
	beq _08081B7E
	movs r0, #2
	b _08081B80
_08081B7E:
	movs r0, #1
_08081B80:
	strb r0, [r4, #0xc]
_08081B82:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081B84
sub_08081B84: @ 0x08081B84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081E3C
	cmp r0, #0
	beq _08081BAA
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
_08081BAA:
	pop {r4, pc}

	thumb_func_start sub_08081BAC
sub_08081BAC: @ 0x08081BAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081CB0
	cmp r0, #0
	beq _08081BDC
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08081FF8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08081BD8
	movs r0, #3
	b _08081BDA
_08081BD8:
	movs r0, #5
_08081BDA:
	strb r0, [r4, #0xc]
_08081BDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081BE0
sub_08081BE0: @ 0x08081BE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x78
	bl sub_08081F7C
	cmp r0, #0
	beq _08081C2C
	adds r0, r4, #0
	bl sub_08081D28
	cmp r0, #0
	bne _08081C26
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r1, _08081C1C @ =gLinkState
	ldrb r0, [r1, #5]
	cmp r0, #2
	beq _08081C16
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08081C20
_08081C16:
	movs r0, #0x18
	strb r0, [r4, #0xe]
	b _08081C2C
	.align 2, 0
_08081C1C: .4byte gLinkState
_08081C20:
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08081C2C
_08081C26:
	adds r0, r4, #0
	bl sub_08081E6C
_08081C2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081C30
sub_08081C30: @ 0x08081C30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08081C70
	subs r0, #1
	movs r5, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08081C5A
	strb r5, [r4, #0xf]
	ldr r0, _08081C6C @ =0x00004035
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_08081C5A:
	adds r0, r4, #0
	bl sub_08081CB0
	cmp r0, #0
	beq _08081C96
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	b _08081C96
	.align 2, 0
_08081C6C: .4byte 0x00004035
_08081C70:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CD48
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	subs r0, #0x3c
	ldrb r2, [r0]
	movs r0, #0x77
	bl sub_0807B314
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
_08081C96:
	pop {r4, r5, pc}

	thumb_func_start sub_08081C98
sub_08081C98: @ 0x08081C98
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x7a
	bl sub_08081F7C
	cmp r0, #0
	beq _08081CAC
	adds r0, r4, #0
	bl sub_08081E6C
_08081CAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081CB0
sub_08081CB0: @ 0x08081CB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08081D74
	cmp r0, #0
	beq _08081CEC
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _08081CE4 @ =0x0000FFFF
	strh r0, [r1]
	adds r5, r4, #0
	adds r5, #0x74
	ldrh r0, [r5]
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080002B0
	ldr r1, _08081CE8 @ =0x00004035
	cmp r0, r1
	bne _08081D1C
	ldrh r1, [r5]
	ldrb r2, [r4]
	movs r0, #0x78
	bl sub_0807B7D8
	b _08081D1C
	.align 2, 0
_08081CE4: .4byte 0x0000FFFF
_08081CE8: .4byte 0x00004035
_08081CEC:
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002B0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x77
	beq _08081D24
	cmp r1, #0x79
	beq _08081D24
	ldr r0, _08081D20 @ =0x00004035
	cmp r1, r0
	beq _08081D24
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
_08081D1C:
	movs r0, #1
	b _08081D26
	.align 2, 0
_08081D20: .4byte 0x00004035
_08081D24:
	movs r0, #0
_08081D26:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081D28
sub_08081D28: @ 0x08081D28
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08081D74
	cmp r0, #0
	beq _08081D44
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _08081D40 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	b _08081D72
	.align 2, 0
_08081D40: .4byte 0x0000FFFF
_08081D44:
	adds r5, r4, #0
	adds r5, #0x70
	ldrh r1, [r5]
	ldr r0, _08081D6C @ =0x0000FFFF
	cmp r1, r0
	beq _08081D70
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	ldrh r5, [r5]
	cmp r0, r5
	bne _08081D70
	movs r0, #1
	b _08081D72
	.align 2, 0
_08081D6C: .4byte 0x0000FFFF
_08081D70:
	movs r0, #0
_08081D72:
	pop {r4, r5, pc}

	thumb_func_start sub_08081D74
sub_08081D74: @ 0x08081D74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xf
	bne _08081D8E
	movs r0, #0
	b _08081E0A
_08081D8E:
	movs r6, #0
	adds r0, r4, #0
	bl sub_08081E0C
	cmp r0, #0
	beq _08081DB4
	ldr r0, _08081DAC @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x90
	ands r0, r1
	cmp r0, #0
	bne _08081E06
	ldr r6, _08081DB0 @ =gLinkEntity
	b _08081E06
	.align 2, 0
_08081DAC: .4byte gLinkState
_08081DB0: .4byte gLinkEntity
_08081DB4:
	ldr r0, _08081DD8 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08081E06
	ldr r5, _08081DDC @ =gUnk_03004040
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081DE0
	ldr r6, [r5]
	b _08081E06
	.align 2, 0
_08081DD8: .4byte gLinkState
_08081DDC: .4byte gUnk_03004040
_08081DE0:
	ldr r1, [r5, #4]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081DF4
	ldr r6, [r5, #4]
	b _08081E06
_08081DF4:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081E06
	ldr r6, [r5, #8]
_08081E06:
	str r6, [r4, #0x54]
	adds r0, r6, #0
_08081E0A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081E0C
sub_08081E0C: @ 0x08081E0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08081E28 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08081E22
	bl sub_08079F8C
	cmp r0, #0
	bne _08081E2C
_08081E22:
	movs r0, #0
	b _08081E38
	.align 2, 0
_08081E28: .4byte gLinkEntity
_08081E2C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
_08081E38:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08081E3C
sub_08081E3C: @ 0x08081E3C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r2, [r1]
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_080002B0
	adds r2, r0, #0
	ldr r1, _08081E64 @ =gUnk_0811EE50
_08081E52:
	ldrh r0, [r1]
	cmp r0, r2
	beq _08081E68
	adds r1, #2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08081E52
	movs r0, #0
	b _08081E6A
	.align 2, 0
_08081E64: .4byte gUnk_0811EE50
_08081E68:
	movs r0, #1
_08081E6A:
	pop {pc}

	thumb_func_start sub_08081E6C
sub_08081E6C: @ 0x08081E6C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r6, [r0]
	subs r0, #0x3c
	ldrb r5, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002B0
	adds r7, r0, #0
	ldr r0, _08081EEC @ =0x00003FFF
	cmp r7, r0
	bls _08081EE8
	adds r0, r5, #0
	bl sub_0808094C
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	movs r4, #0x78
	cmp r0, #0
	bne _08081E9A
	movs r4, #0x7a
_08081E9A:
	ldr r0, _08081EF0 @ =0x00007004
	adds r3, r1, r0
	lsls r0, r4, #1
	ldr r2, _08081EF4 @ =0x00006004
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #3
	adds r3, r3, r0
	ldr r2, _08081EF8 @ =gUnk_02019EE0
	cmp r5, #2
	bne _08081EB4
	ldr r2, _08081EFC @ =gUnk_02002F00
_08081EB4:
	movs r0, #0x3f
	ands r0, r6
	lsls r0, r0, #1
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r1, r6
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08081F00
	cmp r0, #0
	bne _08081EE8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0807B314
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl UpdateCollisionLayer
_08081EE8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08081EEC: .4byte 0x00003FFF
_08081EF0: .4byte 0x00007004
_08081EF4: .4byte 0x00006004
_08081EF8: .4byte gUnk_02019EE0
_08081EFC: .4byte gUnk_02002F00

	thumb_func_start sub_08081F00
sub_08081F00: @ 0x08081F00
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _08081F20
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _08081F20
	movs r0, #1
	b _08081F22
_08081F20:
	movs r0, #0
_08081F22:
	pop {pc}

	thumb_func_start sub_08081F24
sub_08081F24: @ 0x08081F24
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08081F50
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r2, #0x2e]
	adds r0, #7
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	adds r0, #5
	strh r0, [r2, #0x32]
_08081F50:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08081F7A
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r2, #0x2e]
	subs r0, #7
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	adds r0, #5
	strh r0, [r2, #0x32]
_08081F7A:
	pop {r4, pc}

	thumb_func_start sub_08081F7C
sub_08081F7C: @ 0x08081F7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08081FF4
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08081FA4
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08081FF4
	adds r1, r0, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	b _08081FF4
_08081FA4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _08081FF4
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r1, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r0, r7, #0
	bl sub_0807B314
	adds r0, r4, #0
	bl sub_08081F24
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r1, [r2]
	ldr r0, _08081FF0 @ =0x0000FFFF
	cmp r1, r0
	beq _08081FEC
	adds r0, r1, #0
	ldrh r1, [r6]
	ldrb r2, [r5]
	bl UpdateCollisionLayer
_08081FEC:
	movs r0, #0
	b _08081FF6
	.align 2, 0
_08081FF0: .4byte 0x0000FFFF
_08081FF4:
	movs r0, #1
_08081FF6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08081FF8
sub_08081FF8: @ 0x08081FF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r0, _08082038 @ =gLinkEntity
	cmp r1, r0
	bne _08082036
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r6, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r6, #0
	bl sub_080044AE
	movs r5, #0
	ldr r4, _0808203C @ =gUnk_03004040
_0808201E:
	ldr r0, [r4]
	cmp r0, #0
	beq _0808202E
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r6, #0
	bl sub_080044AE
_0808202E:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls _0808201E
_08082036:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082038: .4byte gLinkEntity
_0808203C: .4byte gUnk_03004040

	thumb_func_start sub_08082040
sub_08082040: @ 0x08082040
	push {lr}
	ldr r2, _08082054 @ =gUnk_0811EE5C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08082054: .4byte gUnk_0811EE5C

	thumb_func_start sub_08082058
sub_08082058: @ 0x08082058
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08082098
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08082098
sub_08082098: @ 0x08082098
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08082100 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080820AC
	bl sub_0805E780
_080820AC:
	ldr r5, _08082104 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08079BD8
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r1, [r5, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x14]
	lsrs r3, r0, #1
	adds r7, r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0x14
	beq _08082122
	cmp r0, #0x14
	bgt _08082108
	cmp r0, #0xa
	beq _0808212A
	b _0808212E
	.align 2, 0
_08082100: .4byte gLinkState
_08082104: .4byte gLinkEntity
_08082108:
	cmp r0, #0x16
	beq _08082112
	cmp r0, #0x18
	beq _08082126
	b _0808212E
_08082112:
	ldrb r0, [r4, #0x14]
	movs r3, #0xd
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #2
	bne _080821F2
	movs r3, #0xe
	b _080821F2
_08082122:
	movs r3, #0xc
	b _080821EE
_08082126:
	adds r3, #0xf
	b _080821EE
_0808212A:
	movs r3, #0x13
	b _080821EE
_0808212E:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808213E
	adds r3, r7, #0
	adds r3, #8
	b _080821EE
_0808213E:
	ldr r2, _0808215C @ =gLinkState
	ldrb r1, [r2, #2]
	adds r6, r1, #0
	cmp r6, #0
	beq _08082160
	movs r0, #0x10
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	bne _080821F2
	adds r3, r7, #0
	adds r3, #0x19
	b _080821F2
	.align 2, 0
_0808215C: .4byte gLinkState
_08082160:
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0808216E
	cmp r0, #0x19
	bne _080821C8
_0808216E:
	adds r3, r7, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, r3
	beq _08082180
	str r6, [r4, #0x34]
	b _080821BA
_08082180:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080821F2
	adds r2, r4, #0
	adds r2, #0x63
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080821C0
	cmp r1, r0
	bgt _080821AC
	subs r0, #1
	cmp r1, r0
	beq _080821B4
	b _080821F2
_080821AC:
	cmp r1, #0
	bne _080821F2
	movs r0, #0xfe
	b _080821B8
_080821B4:
	ldrb r0, [r2]
	orrs r0, r7
_080821B8:
	strb r0, [r2]
_080821BA:
	movs r0, #6
	strb r0, [r4, #0xe]
	b _080821F2
_080821C0:
	strb r6, [r2]
	movs r0, #3
	strb r0, [r4, #0xe]
	b _080821F2
_080821C8:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r2, [r0]
	adds r1, r2, #0
	cmp r1, #0
	beq _080821E8
	movs r0, #0x80
	ands r0, r2
	adds r3, r7, #0
	adds r3, #0x14
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	beq _080821F2
	movs r3, #0x18
	b _080821F2
_080821E8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
_080821EE:
	adds r5, r4, #0
	adds r5, #0x58
_080821F2:
	ldrb r0, [r5]
	cmp r0, r3
	beq _08082202
	adds r0, r4, #0
	adds r1, r3, #0
	bl LoadAnimation
	b _08082208
_08082202:
	adds r0, r4, #0
	bl sub_080042B8
_08082208:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0808220C
sub_0808220C: @ 0x0808220C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08082228 @ =gUnk_0811F090
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08082228: .4byte gUnk_0811F090

	thumb_func_start sub_0808222C
sub_0808222C: @ 0x0808222C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0808224C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0808224C
	bl sub_0805E780
_0808224C:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldr r0, _08082308 @ =gUnk_080FD338
	str r0, [r4, #0x48]
	movs r1, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x32]
	adds r0, #3
	strh r0, [r4, #0x32]
	strb r1, [r4, #0x16]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x84
	strb r0, [r1]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	cmp r0, #0
	bne _08082298
	adds r0, r4, #0
	bl sub_08016A30
_08082298:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r7, _0808230C @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	mov r8, r1
	cmp r0, r8
	bne _080822D6
	bl sub_0805E780
_080822D6:
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	ldrb r2, [r5]
	mov r0, r8
	bl UpdateCollisionLayer
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08082308: .4byte gUnk_080FD338
_0808230C: .4byte gRoomControls

	thumb_func_start sub_08082310
sub_08082310: @ 0x08082310
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r6, #0x7f
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0x13
	beq _08082342
	cmp r1, #0x1d
	beq _0808234C
	adds r0, r5, #0
	bl sub_080002A0
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r4, r0
	bne _08082338
	b _080824F0
_08082338:
	adds r0, #1
	cmp r4, r0
	bhs _08082340
	b _08082484
_08082340:
	b _080823C4
_08082342:
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	b _080824F6
_0808234C:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080823C0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	ldrb r1, [r5, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_08082824
	b _080824F6
	.align 2, 0
_080823C0: .4byte gRoomControls
_080823C4:
	ldr r0, _080823D4 @ =0x00004004
	cmp r4, r0
	bls _080823D8
	adds r0, #0x63
	cmp r4, r0
	beq _08082448
	b _08082484
	.align 2, 0
_080823D4: .4byte 0x00004004
_080823D8:
	ldr r1, _08082438 @ =0xFFFFBFFF
	adds r0, r4, r1
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xc]
	ldr r0, _0808243C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082400
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x24]
	movs r0, #0x40
	strb r0, [r5, #0xe]
_08082400:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08082440 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldr r0, _08082444 @ =0x0000010F
	bl sub_08004488
	b _080824F6
	.align 2, 0
_08082438: .4byte 0xFFFFBFFF
_0808243C: .4byte gLinkState
_08082440: .4byte gRoomControls
_08082444: .4byte 0x0000010F
_08082448:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _08082480 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	bl sub_0805E780
	b _080824F6
	.align 2, 0
_08082480: .4byte gRoomControls
_08082484:
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _0808249A
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl CreateFx
	b _080824D8
_0808249A:
	ldr r0, _080824E4 @ =0x00004005
	cmp r4, r0
	bne _080824D8
	ldr r0, _080824E8 @ =gLinkState
	adds r0, #0xab
	movs r1, #4
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _080824EC @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_080824D8:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080824F6
	.align 2, 0
_080824E4: .4byte 0x00004005
_080824E8: .4byte gLinkState
_080824EC: .4byte gRoomControls
_080824F0:
	adds r0, r5, #0
	bl sub_08078930
_080824F6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080824F8
sub_080824F8: @ 0x080824F8
	push {lr}
	ldr r2, _0808250C @ =gUnk_0811F0A8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808250C: .4byte gUnk_0811F0A8

	thumb_func_start sub_08082510
sub_08082510: @ 0x08082510
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldr r0, _08082578 @ =gUnk_080FD340
	str r0, [r5, #0x48]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0808257C @ =gLinkEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r2, [r0]
	adds r0, #0xd
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08082580 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082578: .4byte gUnk_080FD340
_0808257C: .4byte gLinkEntity
_08082580: .4byte gRoomControls

	thumb_func_start nullsub_511
nullsub_511: @ 0x08082584
	bx lr
	.align 2, 0

	thumb_func_start sub_08082588
sub_08082588: @ 0x08082588
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808259C
sub_0808259C: @ 0x0808259C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _080825B8
	cmp r0, #2
	bhi _080825B2
	cmp r0, #1
	beq _080825BE
	b _080825D0
_080825B2:
	cmp r0, #3
	beq _080825C4
	b _080825D0
_080825B8:
	adds r0, r4, #0
	movs r1, #0xb
	b _080825C8
_080825BE:
	adds r0, r4, #0
	movs r1, #0
	b _080825C8
_080825C4:
	adds r0, r4, #0
	movs r1, #0xc
_080825C8:
	movs r2, #0
	bl CreateFx
	b _080825E0
_080825D0:
	ldr r1, _080825DC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08082850
	b _080825E4
	.align 2, 0
_080825DC: .4byte gLinkEntity
_080825E0:
	bl sub_0805E780
_080825E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080825E8
sub_080825E8: @ 0x080825E8
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080825F0
sub_080825F0: @ 0x080825F0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08082604 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08082602
	adds r0, r1, #0
	bl sub_08082608
_08082602:
	pop {pc}
	.align 2, 0
_08082604: .4byte gLinkState

	thumb_func_start sub_08082608
sub_08082608: @ 0x08082608
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082614
sub_08082614: @ 0x08082614
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0800445C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08082638
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_08016A6C
	b _080826DC
_08082638:
	adds r0, r5, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080826DC
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080826A4 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082658
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
_08082658:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _080826A8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x70
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080002A0
	adds r6, r4, #0
	cmp r0, #0x72
	bhi _080826AC
	cmp r0, #0x71
	blo _080826AC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080826DC
	.align 2, 0
_080826A4: .4byte gLinkState
_080826A8: .4byte gRoomControls
_080826AC:
	movs r0, #0x80
	lsls r0, r0, #7
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _080826E0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl UpdateCollisionLayer
	adds r0, r5, #0
	bl sub_08078930
_080826DC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080826E0: .4byte gRoomControls

	thumb_func_start sub_080826E4
sub_080826E4: @ 0x080826E4
	push {lr}
	ldr r2, _080826F8 @ =gUnk_0811F0C4
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080826F8: .4byte gUnk_0811F0C4

	thumb_func_start sub_080826FC
sub_080826FC: @ 0x080826FC
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x30
	strb r1, [r0, #0x1d]
	strb r2, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808270C
sub_0808270C: @ 0x0808270C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08082768 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0808272A
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08082770
_0808272A:
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808276C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	b _08082776
	.align 2, 0
_08082768: .4byte gLinkState
_0808276C: .4byte gRoomControls
_08082770:
	adds r0, r5, #0
	bl sub_0806F4E8
_08082776:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08082778
sub_08082778: @ 0x08082778
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	bne _080827C4
	movs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080827E8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_080827C4:
	ldr r0, _080827EC @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080827DE
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _080827F0
_080827DE:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080827F6
	.align 2, 0
_080827E8: .4byte gRoomControls
_080827EC: .4byte gLinkState
_080827F0:
	adds r0, r5, #0
	bl sub_0806F3E4
_080827F6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080827F8
sub_080827F8: @ 0x080827F8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08082810 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _0808280C
	adds r0, r1, #0
	movs r1, #0
	bl sub_08082850
_0808280C:
	pop {pc}
	.align 2, 0
_08082810: .4byte gLinkState

	thumb_func_start nullsub_512
nullsub_512: @ 0x08082814
	bx lr
	.align 2, 0

	thumb_func_start sub_08082818
sub_08082818: @ 0x08082818
	push {lr}
	movs r1, #0
	bl sub_08082850
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08082824
sub_08082824: @ 0x08082824
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08082836
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_08082836:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0808284C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08082850
_0808284C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08082850
sub_08082850: @ 0x08082850
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r1, [r4, #0xa]
	adds r0, #0x7d
	ldrb r2, [r0]
	ldrb r3, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0808288C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #5
	bl CreateFx
	cmp r0, #0
	beq _08082874
	str r5, [r0, #0x50]
_08082874:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _08082884
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
_08082884:
	bl sub_0805E780
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808288C
sub_0808288C: @ 0x0808288C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	movs r6, #0
	cmp r4, #0
	beq _080828A6
	cmp r4, #0xff
	bne _080828AA
	b _080828D6
_080828A6:
	movs r6, #0x80
	b _080828D6
_080828AA:
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _080828D6
	mov r0, r8
	cmp r0, #2
	bne _080828D4
	movs r0, #5
	strb r0, [r2, #0xe]
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
	b _080828D6
_080828D4:
	strb r6, [r2, #0xe]
_080828D6:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080828E0
sub_080828E0: @ 0x080828E0
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080828F8
	ldr r0, _080828F4 @ =gUnk_0811F15C
	b _08082900
	.align 2, 0
_080828F4: .4byte gUnk_0811F15C
_080828F8:
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08082914
	ldr r0, _08082910 @ =gUnk_0811F14C
_08082900:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08082924
	.align 2, 0
_08082910: .4byte gUnk_0811F14C
_08082914:
	ldr r0, _08082928 @ =gUnk_0811F154
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08082924:
	pop {pc}
	.align 2, 0
_08082928: .4byte gUnk_0811F154

	thumb_func_start sub_0808292C
sub_0808292C: @ 0x0808292C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x11]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldr r5, _080829C8 @ =gLinkEntity
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	movs r0, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r4, #0x1a]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _080829A4
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080829A4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080829CC
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #7
	bl LoadAnimation
	movs r0, #0xf3
	bl PlaySFX
	b _080829E2
	.align 2, 0
_080829C8: .4byte gLinkEntity
_080829CC:
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x32]
	subs r0, #0xe
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x14
	bl LoadAnimation
_080829E2:
	pop {r4, r5, pc}

	thumb_func_start sub_080829E4
sub_080829E4: @ 0x080829E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08082A10 @ =gLinkEntity
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r5, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1a]
	ldr r3, _08082A14 @ =gTextBox
	ldrb r0, [r3]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08082A18
	adds r0, r5, #0
	bl sub_0805E7BC
	b _08082AB4
	.align 2, 0
_08082A10: .4byte gLinkEntity
_08082A14: .4byte gTextBox
_08082A18:
	cmp r1, #5
	beq _08082A9C
	ldrb r1, [r3, #1]
	adds r0, r1, #0
	cmp r0, #0xa
	beq _08082A30
	cmp r0, #0
	beq _08082A30
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	bls _08082A4A
_08082A30:
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r2, [r5, #0xf]
	movs r0, #3
	ldrb r1, [r1]
	orrs r2, r0
	cmp r1, r2
	beq _08082A9C
	adds r0, r5, #0
	adds r1, r2, #0
	bl LoadAnimation
	b _08082AB4
_08082A4A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082A78
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _08082A9C
	bl Random
	ldr r4, _08082A74 @ =gUnk_0811F16C
	movs r1, #9
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	b _08082A8C
	.align 2, 0
_08082A74: .4byte gUnk_0811F16C
_08082A78:
	adds r2, r5, #0
	adds r2, #0x58
	ldr r1, _08082A98 @ =gUnk_0811F16C
	ldrb r0, [r3, #1]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08082A9C
	strb r1, [r5, #0xf]
_08082A8C:
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	bl LoadAnimation
	b _08082AB4
	.align 2, 0
_08082A98: .4byte gUnk_0811F16C
_08082A9C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	bls _08082AAA
	movs r0, #1
	b _08082AAC
_08082AAA:
	movs r0, #0
_08082AAC:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_080042B8
_08082AB4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082AB8
sub_08082AB8: @ 0x08082AB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08082B10 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08082ACC
	bl sub_0805E780
_08082ACC:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08082B5C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08082B98
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	subs r5, r0, #1
	adds r0, r4, #0
	movs r1, #0x79
	adds r2, r5, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08082B18
	cmp r5, #0
	bne _08082B14
	str r1, [r4, #0x50]
	b _08082B18
	.align 2, 0
_08082B10: .4byte gLinkState
_08082B14:
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
_08082B18:
	ldrb r0, [r4, #0xe]
	cmp r0, #6
	bne _08082B36
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	movs r1, #0x1c
	bl LoadAnimation
	b _08082B98
_08082B36:
	ldr r1, _08082B58 @ =gUnk_0811F178
	ldrb r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bls _08082B98
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08082B98
	.align 2, 0
_08082B58: .4byte gUnk_0811F178
_08082B5C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08082B98
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xe]
	cmp r0, #0
	beq _08082B98
	bl Random
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0xe]
	adds r1, #0x1b
	adds r0, r4, #0
	bl LoadAnimation
_08082B98:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082B9C
sub_08082B9C: @ 0x08082B9C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r1, [r6, #0x11]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #0x11]
	ldr r5, _08082C34 @ =gLinkEntity
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r6, #0x1a]
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #0
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x18]
	movs r0, #1
	strb r0, [r6, #0xc]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r6, #0
	movs r1, #0xc
	bl LoadAnimation
	adds r0, r6, #0
	adds r0, #0x82
	strh r4, [r0]
	adds r4, r6, #0
	adds r4, #0x84
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_0807DF74
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_08082D20
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _08082C2C
	ldrb r0, [r6, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x18]
_08082C2C:
	adds r0, r6, #0
	bl sub_08082C5C
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082C34: .4byte gLinkEntity

	thumb_func_start sub_08082C38
sub_08082C38: @ 0x08082C38
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	bl sub_0807DF74
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_08082D20
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bhi _08082C5A
	adds r0, r5, #0
	bl sub_08082C5C
_08082C5A:
	pop {r4, r5, pc}

	thumb_func_start sub_08082C5C
sub_08082C5C: @ 0x08082C5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #4
	bhi _08082D0C
	lsls r0, r0, #2
	ldr r1, _08082C70 @ =_08082C74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082C70: .4byte _08082C74
_08082C74: @ jump table
	.4byte _08082C88 @ case 0
	.4byte _08082C9C @ case 1
	.4byte _08082CB0 @ case 2
	.4byte _08082CE4 @ case 3
	.4byte _08082CF8 @ case 4
_08082C88:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x17
	bl LoadAnimation
	b _08082D1C
_08082C9C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x18
	bl LoadAnimation
	b _08082D1C
_08082CB0:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082D0C
	bl Random
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	ldr r2, _08082CE0 @ =gUnk_0811F18C
	movs r0, #3
	ands r4, r0
	adds r4, r4, r2
	ands r1, r0
	ldrb r4, [r4]
	adds r1, r1, r4
	adds r0, r5, #0
	bl LoadAnimation
	b _08082D1C
	.align 2, 0
_08082CE0: .4byte gUnk_0811F18C
_08082CE4:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x13
	bl LoadAnimation
	b _08082D1C
_08082CF8:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x1a
	bl LoadAnimation
	b _08082D1C
_08082D0C:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl sub_080042B8
_08082D1C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082D20
sub_08082D20: @ 0x08082D20
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08082E10
	movs r6, #0
	movs r5, #1
	movs r0, #4
	rsbs r0, r0, #0
	mov ip, r0
_08082D36:
	ldr r1, [r3, #8]
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	str r1, [r3, #8]
	cmp r2, #0x80
	beq _08082DB4
	cmp r2, #0x80
	bhi _08082D66
	cmp r2, #4
	beq _08082D9E
	cmp r2, #4
	bhi _08082D5C
	cmp r2, #1
	beq _08082D96
	cmp r2, #2
	beq _08082D9A
	b _08082E0A
_08082D5C:
	cmp r2, #8
	beq _08082DA4
	cmp r2, #0x40
	beq _08082DDA
	b _08082E0A
_08082D66:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _08082DDE
	cmp r2, r0
	bhi _08082D84
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _08082DAA
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	beq _08082DC0
	b _08082E0A
_08082D84:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	beq _08082DE6
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r2, r0
	beq _08082DF2
	b _08082E0A
_08082D96:
	strb r6, [r4, #0xd]
	b _08082E0A
_08082D9A:
	strb r5, [r4, #0xd]
	b _08082E0A
_08082D9E:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _08082E0A
_08082DA4:
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08082E0A
_08082DAA:
	ldrb r0, [r4, #0x18]
	mov r1, ip
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DB4:
	ldrb r0, [r4, #0x18]
	mov r7, ip
	ands r0, r7
	orrs r0, r5
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DC0:
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	ands r1, r5
	lsls r1, r1, #6
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DDA:
	bl sub_0805E780
_08082DDE:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	b _08082E10
_08082DE6:
	movs r0, #4
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	b _08082E0A
_08082DF2:
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x1b
	bl LoadAnimation
	b _08082E10
_08082E0A:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08082D36
_08082E10:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08082E14
sub_08082E14: @ 0x08082E14
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0807DF74
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08082E38
	cmp r0, #1
	beq _08082E44
	b _08082E5E
_08082E38:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08082E5E
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08082E5E
_08082E44:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08082E5E
	ldr r0, _08082E68 @ =gUnk_02033280
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	bl sub_0805E780
_08082E5E:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08082E68: .4byte gUnk_02033280

	thumb_func_start sub_08082E6C
sub_08082E6C: @ 0x08082E6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082E98
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x17
	bl LoadAnimation
_08082E98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08082E9C
sub_08082E9C: @ 0x08082E9C
	push {lr}
	ldr r2, _08082EB0 @ =gUnk_0811F624
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08082EB0: .4byte gUnk_0811F624

	thumb_func_start sub_08082EB4
sub_08082EB4: @ 0x08082EB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08082EE0 @ =gRoomControls
	ldrb r1, [r0, #4]
	adds r6, r0, #0
	cmp r1, #0x11
	bne _08082EF6
	adds r0, r4, #0
	bl sub_080AE068
	ldr r1, _08082EE4 @ =0x000001C1
	adds r0, r4, #0
	bl sub_080ADF80
	cmp r0, #0
	bne _08082EE8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0808308E
	.align 2, 0
_08082EE0: .4byte gRoomControls
_08082EE4: .4byte 0x000001C1
_08082EE8:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_08082EF6:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x88
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r4, #0x2e]
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	ldr r1, _08082F6C @ =gUnk_0811F64C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_080002B0
	str r0, [r4, #0x68]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08082F7A
	cmp r0, #1
	bgt _08082F70
	cmp r0, #0
	beq _08082F76
	b _08082FF0
	.align 2, 0
_08082F6C: .4byte gUnk_0811F64C
_08082F70:
	cmp r0, #2
	beq _08082F9A
	b _08082FF0
_08082F76:
	adds r0, r5, #0
	b _08082FE8
_08082F7A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	b _08082FE8
_08082F9A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x81
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x82
_08082FE8:
	adds r1, r4, #0
	bl sub_080832D8
	b _08083088
_08082FF0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #3
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x43
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x81
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x82
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x83
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc3
	adds r1, r4, #0
	bl sub_080832D8
_08083088:
	ldr r0, _08083090 @ =0x0000010F
	bl sub_08004488
_0808308E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08083090: .4byte 0x0000010F

	thumb_func_start sub_08083094
sub_08083094: @ 0x08083094
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0800445C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080830B4
	adds r0, r4, #0
	bl sub_080830B8
_080830B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080830B8
sub_080830B8: @ 0x080830B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldrb r5, [r0, #0xa]
	lsls r4, r5, #3
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, r0, r4
	ldr r3, _080830FC @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r7, r0, #4
	movs r2, #0x3f
	ands r7, r2
	mov r6, sb
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	subs r0, r0, r4
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r7, r0
	cmp r5, #1
	beq _08083128
	cmp r5, #1
	bgt _08083100
	cmp r5, #0
	beq _08083106
	b _080831EC
	.align 2, 0
_080830FC: .4byte gRoomControls
_08083100:
	cmp r5, #2
	beq _08083160
	b _080831EC
_08083106:
	mov r0, sb
	bl sub_0800442E
	cmp r0, #0
	beq _08083112
	b _080832C0
_08083112:
	ldr r0, _08083124 @ =0x00000365
	mov r1, sb
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl sub_0807B7D8
	b _080832BA
	.align 2, 0
_08083124: .4byte 0x00000365
_08083128:
	mov r2, sb
	ldr r0, [r2, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r0, _08083158 @ =0x0000036F
	adds r1, r7, #1
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _0808315C @ =0x00000371
	adds r1, r7, #0
	adds r1, #0x41
	b _080831CA
	.align 2, 0
_08083158: .4byte 0x0000036F
_0808315C: .4byte 0x00000371
_08083160:
	mov r6, sb
	ldr r0, [r6, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r0, _080831D4 @ =0x00000372
	adds r1, r7, #1
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831D8 @ =0x0000036F
	adds r1, r7, #2
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdd
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831DC @ =0x00000376
	adds r1, r7, #0
	adds r1, #0x41
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E0 @ =0x00000375
	adds r1, r7, #0
	adds r1, #0x42
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x80
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E4 @ =0x00000373
	adds r1, r7, #0
	adds r1, #0x81
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E8 @ =0x00000371
	adds r1, r7, #0
	adds r1, #0x82
_080831CA:
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _080832BA
	.align 2, 0
_080831D4: .4byte 0x00000372
_080831D8: .4byte 0x0000036F
_080831DC: .4byte 0x00000376
_080831E0: .4byte 0x00000375
_080831E4: .4byte 0x00000373
_080831E8: .4byte 0x00000371
_080831EC:
	mov r1, sb
	ldr r0, [r1, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r5, _080832C8 @ =0x00000372
	adds r1, r7, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r0, _080832CC @ =0x0000036F
	adds r1, r7, #3
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r2, #0xdd
	lsls r2, r2, #2
	mov r8, r2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	mov r0, r8
	bl sub_0807B7D8
	adds r5, #4
	adds r1, r7, #0
	adds r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x42
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r6, _080832D0 @ =0x00000375
	adds r1, r7, #0
	adds r1, #0x43
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x80
	ldrb r2, [r4]
	mov r0, r8
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x81
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x83
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc0
	ldrb r2, [r4]
	bl sub_0807B7D8
	subs r5, #3
	adds r1, r7, #0
	adds r1, #0xc1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0xc2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r0, _080832D4 @ =0x00000371
	adds r1, r7, #0
	adds r1, #0xc3
	ldrb r2, [r4]
	bl sub_0807B7D8
_080832BA:
	mov r0, sb
	bl sub_0805E7BC
_080832C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080832C8: .4byte 0x00000372
_080832CC: .4byte 0x0000036F
_080832D0: .4byte 0x00000375
_080832D4: .4byte 0x00000371

	thumb_func_start sub_080832D8
sub_080832D8: @ 0x080832D8
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r2, #0x38
	ldrb r0, [r2]
	cmp r0, #2
	beq _080832FC
	ldrb r1, [r1, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080832F6
	ldrb r2, [r2]
	movs r0, #0x21
	b _0808330A
_080832F6:
	ldrb r2, [r2]
	movs r0, #0x20
	b _0808330A
_080832FC:
	ldrb r1, [r1, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08083312
	ldrb r2, [r2]
	movs r0, #0x2f
_0808330A:
	adds r1, r3, #0
	bl sub_0807B7D8
	b _0808331C
_08083312:
	ldrb r2, [r2]
	movs r0, #0x2e
	adds r1, r3, #0
	bl sub_0807B7D8
_0808331C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08083320
sub_08083320: @ 0x08083320
	push {lr}
	ldr r2, _08083334 @ =gUnk_0811F65C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08083334: .4byte gUnk_0811F65C

	thumb_func_start sub_08083338
sub_08083338: @ 0x08083338
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r2]
	ldr r0, _08083400 @ =0x0000FFFF
	cmp r1, r0
	beq _08083356
	adds r0, r1, #0
	bl sub_0807CBE4
	cmp r0, #0
	beq _08083356
	bl sub_0805E780
_08083356:
	adds r0, r4, #0
	bl sub_080837B0
	cmp r0, #0
	bne _08083362
	b _080834B2
_08083362:
	ldrb r2, [r4, #0xa]
	lsrs r0, r2, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xb]
	movs r7, #3
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r4, #0x1e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	adds r0, r7, #0
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x7e
	strb r0, [r6]
	ldr r0, _08083404 @ =gUnk_080FD170
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xa]
	movs r0, #0xf
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x5a
	strb r0, [r1]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08083408 @ =gRoomControls
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
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08083438
	cmp r0, #1
	bgt _0808340C
	cmp r0, #0
	beq _08083412
	b _080834AE
	.align 2, 0
_08083400: .4byte 0x0000FFFF
_08083404: .4byte gUnk_080FD170
_08083408: .4byte gRoomControls
_0808340C:
	cmp r0, #2
	beq _08083456
	b _080834AE
_08083412:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _0808342E
	ldrb r1, [r4, #0xa]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808344E
	strb r7, [r4, #0xc]
	b _080834B2
_0808342E:
	ldrb r1, [r4, #0xa]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xa]
	b _08083446
_08083438:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _0808344E
_08083446:
	adds r0, r4, #0
	bl sub_08083638
	b _080834B2
_0808344E:
	adds r0, r4, #0
	bl sub_080836A0
	b _080834B2
_08083456:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _080834A8
	ldrb r0, [r4, #0x1e]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x1e]
	ldrb r1, [r6]
	ldrh r2, [r5]
	adds r0, r4, #0
	bl sub_080836DC
	bl sub_08052660
	cmp r0, #0
	bne _08083484
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080834B2
_08083484:
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080787CC
	ldr r1, _080834A4 @ =gUnk_0811F740
	ldrb r0, [r6]
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08078850
	b _080834B2
	.align 2, 0
_080834A4: .4byte gUnk_0811F740
_080834A8:
	bl sub_0805E780
	b _080834B2
_080834AE:
	bl sub_0805E780
_080834B2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080834B4
sub_080834B4: @ 0x080834B4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080834E6
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #7
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldr r0, _080834E8 @ =0x0000010B
	bl sub_08004488
_080834E6:
	pop {pc}
	.align 2, 0
_080834E8: .4byte 0x0000010B

	thumb_func_start sub_080834EC
sub_080834EC: @ 0x080834EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08083516
	ldrb r1, [r4, #0xa]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08083512
	adds r0, r4, #0
	bl sub_08083638
	b _08083516
_08083512:
	bl sub_0805E780
_08083516:
	pop {r4, pc}

	thumb_func_start sub_08083518
sub_08083518: @ 0x08083518
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r1, [r5]
	bl sub_08083734
	cmp r0, #0
	beq _0808353C
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_080836DC
_0808353C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08083540
sub_08083540: @ 0x08083540
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808358C
	ldrb r1, [r4, #0xa]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083566
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xa]
	b _0808356E
_08083566:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08083576
_0808356E:
	adds r0, r4, #0
	bl sub_080836A0
	b _0808357A
_08083576:
	movs r0, #5
	strb r0, [r4, #0xc]
_0808357A:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08083814
	ldr r0, _08083590 @ =0x0000010B
	bl sub_08004488
_0808358C:
	pop {r4, pc}
	.align 2, 0
_08083590: .4byte 0x0000010B

	thumb_func_start nullsub_513
nullsub_513: @ 0x08083594
	bx lr
	.align 2, 0

	thumb_func_start sub_08083598
sub_08083598: @ 0x08083598
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080835B2
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080835C6
	b _080835C0
_080835B2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _080835C6
_080835C0:
	adds r0, r4, #0
	bl sub_08083658
_080835C6:
	pop {r4, pc}

	thumb_func_start sub_080835C8
sub_080835C8: @ 0x080835C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080835E2
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _080835F4
	b _080835F0
_080835E2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080835F4
_080835F0:
	movs r0, #3
	strb r0, [r4, #0xc]
_080835F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080835F8
sub_080835F8: @ 0x080835F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08083616
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08083636
_08083616:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08083658
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
_08083636:
	pop {r4, pc}

	thumb_func_start sub_08083638
sub_08083638: @ 0x08083638
	adds r2, r0, #0
	movs r0, #7
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #0xb
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	bx lr

	thumb_func_start sub_08083658
sub_08083658: @ 0x08083658
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x14
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x7e
	ldrb r1, [r2]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrb r2, [r2]
	lsls r2, r2, #1
	ldr r1, _08083698 @ =gUnk_0811F680
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r3, [r0, #0x2e]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	movs r1, #1
	ldrsb r1, [r2, r1]
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
	movs r1, #0x3c
	bl sub_0805E4E0
	ldr r0, _0808369C @ =0x0000010B
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08083698: .4byte gUnk_0811F680
_0808369C: .4byte 0x0000010B

	thumb_func_start sub_080836A0
sub_080836A0: @ 0x080836A0
	push {lr}
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #0xa
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	ldr r0, _080836D8 @ =0x00004022
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	pop {pc}
	.align 2, 0
_080836D8: .4byte 0x00004022

	thumb_func_start sub_080836DC
sub_080836DC: @ 0x080836DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _0808372C @ =0x00004022
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	movs r0, #7
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	lsls r0, r4, #3
	movs r1, #0x10
	eors r0, r1
	strb r0, [r5, #0x15]
	lsls r4, r4, #1
	ldr r0, _08083730 @ =gUnk_0811F688
	adds r4, r4, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _08083728
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
_08083728:
	pop {r4, r5, pc}
	.align 2, 0
_0808372C: .4byte 0x00004022
_08083730: .4byte gUnk_0811F688

	thumb_func_start sub_08083734
sub_08083734: @ 0x08083734
	push {lr}
	adds r2, r0, #0
	cmp r1, #1
	beq _08083760
	cmp r1, #1
	blo _0808374A
	cmp r1, #2
	beq _08083774
	cmp r1, #3
	beq _08083790
	b _080837AC
_0808374A:
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r1, [r0]
	ldr r0, _0808375C @ =gLinkEntity
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	subs r0, #0xd
	b _0808379E
	.align 2, 0
_0808375C: .4byte gLinkEntity
_08083760:
	ldr r0, _08083770 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r0, #0xb
	adds r1, r2, #0
	adds r1, #0x70
	b _08083780
	.align 2, 0
_08083770: .4byte gLinkEntity
_08083774:
	ldr r0, _0808378C @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0x72
_08083780:
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080837AC
	movs r0, #1
	b _080837AE
	.align 2, 0
_0808378C: .4byte gLinkEntity
_08083790:
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r1, [r0]
	ldr r0, _080837A8 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	subs r0, #0xa
_0808379E:
	subs r1, r1, r0
	cmp r1, #0
	bge _080837AC
	movs r0, #1
	b _080837AE
	.align 2, 0
_080837A8: .4byte gLinkEntity
_080837AC:
	movs r0, #0
_080837AE:
	pop {pc}

	thumb_func_start sub_080837B0
sub_080837B0: @ 0x080837B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080837C8 @ =gRoomControls
	ldrb r2, [r0, #4]
	cmp r2, #0x3f
	bhi _080837DC
	cmp r2, #0x25
	beq _080837CC
	cmp r2, #0x35
	beq _080837D4
	movs r5, #0xa
	b _080837E8
	.align 2, 0
_080837C8: .4byte gRoomControls
_080837CC:
	ldr r5, _080837D0 @ =0x000001E7
	b _080837E8
	.align 2, 0
_080837D0: .4byte 0x000001E7
_080837D4:
	ldr r5, _080837D8 @ =0x000001C3
	b _080837E8
	.align 2, 0
_080837D8: .4byte 0x000001C3
_080837DC:
	ldr r1, _080837F8 @ =gUnk_0811F690
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
_080837E8:
	cmp r2, #0x68
	bne _080837FC
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801D2B4
	b _08083808
	.align 2, 0
_080837F8: .4byte gUnk_0811F690
_080837FC:
	cmp r2, #0x88
	bne _08083808
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801D2B4
_08083808:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080ADF80
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08083814
sub_08083814: @ 0x08083814
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, _08083868 @ =gUnk_0811F730
	adds r4, r1, r0
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08083842
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08083842:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08083866
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #3
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08083866:
	pop {r4, r5, pc}
	.align 2, 0
_08083868: .4byte gUnk_0811F730

	thumb_func_start sub_0808386C
sub_0808386C: @ 0x0808386C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080838C8 @ =gLinkState
	adds r0, #0x27
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
	ldr r0, _080838CC @ =gUnk_02022740
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08083894
	cmp r0, #0
	blt _08083894
	ldr r0, _080838D0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080838AC
_08083894:
	ldr r0, _080838D4 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	cmp r0, #0x32
	bne _080838AA
	movs r0, #0x32
	bl sub_0801E7F4
	movs r2, #0
	cmp r0, #0
	beq _080838AC
_080838AA:
	movs r2, #1
_080838AC:
	cmp r2, #0
	beq _080838B6
	adds r0, r4, #0
	bl sub_080838DC
_080838B6:
	ldr r0, _080838D8 @ =gUnk_0811F754
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080838C8: .4byte gLinkState
_080838CC: .4byte gUnk_02022740
_080838D0: .4byte gTextBox
_080838D4: .4byte gUnk_03003DF0
_080838D8: .4byte gUnk_0811F754

	thumb_func_start sub_080838DC
sub_080838DC: @ 0x080838DC
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x1b]
	movs r3, #0x3f
	adds r1, r3, #0
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldrb r1, [r0, #0x19]
	ands r3, r1
	strb r3, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r2, #0
	movs r1, #4
	strb r1, [r0, #0xe]
	str r2, [r0, #0x54]
	strb r2, [r0, #0xc]
	bx lr

	thumb_func_start sub_08083914
sub_08083914: @ 0x08083914
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _08083942
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_080AE008
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	ldr r1, _08083958 @ =0x01027820
	movs r0, #1
	bl sub_080ADDD8
	adds r0, r4, #0
	bl sub_080838DC
_08083942:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0
_08083958: .4byte 0x01027820

	thumb_func_start sub_0808395C
sub_0808395C: @ 0x0808395C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0808396C
	subs r0, #1
	strb r0, [r2, #0xe]
	b _08083992
_0808396C:
	ldr r3, _08083994 @ =gUnk_03003DF0
	ldr r0, [r3, #4]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _08083992
	ldrb r0, [r0, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _08083992
	str r1, [r2, #0x54]
	ldrb r0, [r3, #3]
	adds r1, r2, #0
	adds r1, #0x39
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08083A40
_08083992:
	pop {pc}
	.align 2, 0
_08083994: .4byte gUnk_03003DF0

	thumb_func_start sub_08083998
sub_08083998: @ 0x08083998
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080839C8
	ldr r0, _080839C4 @ =gUnk_03003DF0
	ldr r2, [r0, #4]
	ldrb r0, [r2, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _080839BA
	ldr r1, [r4, #0x54]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080839C8
_080839BA:
	adds r0, r4, #0
	bl sub_080838DC
	b _08083A32
	.align 2, 0
_080839C4: .4byte gUnk_03003DF0
_080839C8:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r1, #0x34]
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _08083A2C
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080839F8
	ldr r0, _080839F4 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	b _080839FA
	.align 2, 0
_080839F4: .4byte gUnk_03003DF0
_080839F8:
	ldrb r0, [r4, #0xb]
_080839FA:
	lsls r0, r0, #3
	ldr r1, _08083A34 @ =gUnk_080C9CBC
	adds r0, r0, r1
	ldrb r2, [r0, #6]
	movs r1, #1
	ands r1, r2
	ldrb r3, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r0, _08083A38 @ =gUnk_0811F744
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r1, [r2]
	lsrs r2, r1, #0x1f
	ldr r0, _08083A3C @ =0x00FFFFFF
	ands r1, r0
	orrs r1, r2
	adds r0, #1
	orrs r1, r0
	movs r0, #0
	bl sub_080ADDD8
_08083A2C:
	adds r0, r4, #0
	bl sub_08004274
_08083A32:
	pop {r4, pc}
	.align 2, 0
_08083A34: .4byte gUnk_080C9CBC
_08083A38: .4byte gUnk_0811F744
_08083A3C: .4byte 0x00FFFFFF

	thumb_func_start sub_08083A40
sub_08083A40: @ 0x08083A40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	ldr r1, _08083A70 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r2, [r0, r3]
	movs r3, #0x2e
	ldrsh r0, [r1, r3]
	cmp r2, r0
	ble _08083A74
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #8
	b _08083A7C
	.align 2, 0
_08083A70: .4byte gLinkEntity
_08083A74:
	movs r1, #1
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #0xf8
_08083A7C:
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x63
	movs r0, #0xee
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08083998
	pop {r4, pc}

	thumb_func_start sub_08083A94
sub_08083A94: @ 0x08083A94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08083B24
	movs r0, #1
	mov r8, r0
	mov r2, r8
	strb r2, [r6, #0xc]
	ldr r0, _08083B10 @ =gUnk_080FD170
	str r0, [r6, #0x48]
	adds r7, r6, #0
	adds r7, #0x38
	ldrb r0, [r7]
	movs r1, #0x34
	cmp r0, #1
	bne _08083ABC
	movs r1, #0x26
_08083ABC:
	adds r4, r6, #0
	adds r4, #0x70
	strh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08083B1C
	ldrh r0, [r4]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldr r5, _08083B14 @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r7]
	bl sub_0807B314
	ldrh r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08083B08
	ldr r1, _08083B18 @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
_08083B08:
	bl sub_0805E780
	b _08083B7E
	.align 2, 0
_08083B10: .4byte gUnk_080FD170
_08083B14: .4byte gRoomControls
_08083B18: .4byte gUnk_02000070
_08083B1C:
	adds r0, r6, #0
	bl sub_080787CC
	b _08083B7E
_08083B24:
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08083B7E
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r5, #0x2e
	ldrsh r1, [r6, r5]
	ldr r3, _08083B84 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r5, #0x32
	ldrsh r2, [r6, r5]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B314
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r0, r6, #0
	bl sub_080A29BC
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
	bl sub_0805E780
_08083B7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08083B84: .4byte gRoomControls

	thumb_func_start sub_08083B88
sub_08083B88: @ 0x08083B88
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08083BDC @ =gUnk_0811F7D8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	ands r1, r0
	ldrb r2, [r4, #0x18]
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08080CB4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x1b]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r2, r0
	strb r2, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_08083BDC: .4byte gUnk_0811F7D8

	thumb_func_start sub_08083BE0
sub_08083BE0: @ 0x08083BE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_08083BF0
sub_08083BF0: @ 0x08083BF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0x41
	bne _08083C98
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083C98
	lsls r0, r0, #2
	ldr r1, _08083C14 @ =_08083C18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083C14: .4byte _08083C18
_08083C18: @ jump table
	.4byte _08083C30 @ case 0
	.4byte _08083C30 @ case 1
	.4byte _08083C4A @ case 2
	.4byte _08083C98 @ case 3
	.4byte _08083C98 @ case 4
	.4byte _08083C74 @ case 5
_08083C30:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl sub_08053FF0
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x43
	bgt _08083C62
	cmp r0, #0x40
	bge _08083C98
	b _08083C62
_08083C4A:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl sub_08053FF0
	ldr r1, _08083C6C @ =gUnk_080FD964
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_08083C62:
	ldr r0, _08083C70 @ =0x00000109
	bl PlaySFX
	b _08083C98
	.align 2, 0
_08083C6C: .4byte gUnk_080FD964
_08083C70: .4byte 0x00000109
_08083C74:
	ldrb r0, [r4, #0xa]
	bl GetInventoryValue
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldr r2, _08083C8C @ =gUnk_080FD5B4
	adds r1, r1, r2
	cmp r0, #0
	bne _08083C90
	ldrh r1, [r1, #4]
	b _08083C92
	.align 2, 0
_08083C8C: .4byte gUnk_080FD5B4
_08083C90:
	ldrh r1, [r1, #6]
_08083C92:
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_08083C98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08083C9C
sub_08083C9C: @ 0x08083C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0x42
	bne _08083D22
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083D22
	lsls r0, r0, #2
	ldr r1, _08083CC0 @ =_08083CC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083CC0: .4byte _08083CC4
_08083CC4: @ jump table
	.4byte _08083CDC @ case 0
	.4byte _08083D22 @ case 1
	.4byte _08083CDC @ case 2
	.4byte _08083D22 @ case 3
	.4byte _08083D22 @ case 4
	.4byte _08083CDC @ case 5
_08083CDC:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	cmp r1, #0
	beq _08083D22
	ldrb r0, [r4, #0xa]
	cmp r0, #0x3f
	beq _08083D00
	cmp r0, #0x63
	bne _08083D16
	ldr r0, _08083CFC @ =gUnk_02002A40
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r1, r1, r0
	b _08083D16
	.align 2, 0
_08083CFC: .4byte gUnk_02002A40
_08083D00:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bls _08083D16
	ldr r0, _08083D10 @ =0x00000577
	cmp r1, r0
	bne _08083D14
	subs r1, #1
	b _08083D16
	.align 2, 0
_08083D10: .4byte 0x00000577
_08083D14:
	adds r1, #1
_08083D16:
	adds r0, r1, #0
	bl TextboxTryNoOverlap
	ldr r1, _08083D24 @ =gTextBox
	ldrb r0, [r4, #0xb]
	str r0, [r1, #0x10]
_08083D22:
	pop {r4, pc}
	.align 2, 0
_08083D24: .4byte gTextBox

	thumb_func_start sub_08083D28
sub_08083D28: @ 0x08083D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _08083DD4
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083DD0
	lsls r0, r0, #2
	ldr r1, _08083D44 @ =_08083D48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083D44: .4byte _08083D48
_08083D48: @ jump table
	.4byte _08083D60 @ case 0
	.4byte _08083D60 @ case 1
	.4byte _08083D60 @ case 2
	.4byte _08083DAC @ case 3
	.4byte _08083DD0 @ case 4
	.4byte _08083DD0 @ case 5
_08083D60:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x62
	beq _08083D88
	cmp r0, #0x63
	bne _08083DD0
	movs r0, #0xa0
	bl ModHealth
	ldr r0, _08083DA8 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08083DD0
	movs r0, #0
	strb r0, [r1]
_08083D88:
	ldr r0, _08083DA8 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xab
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa0
	bls _08083DA0
	movs r0, #0xa0
	strb r0, [r1]
_08083DA0:
	movs r0, #0xa0
	bl ModHealth
	b _08083DD0
	.align 2, 0
_08083DA8: .4byte gUnk_02002A40
_08083DAC:
	ldrb r0, [r4, #0xa]
	bl sub_080544DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08083DC8
	ldr r0, _08083DC4 @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0xb5
	movs r1, #0x20
	strb r1, [r0]
	b _08083DD0
	.align 2, 0
_08083DC4: .4byte gUnk_02002A40
_08083DC8:
	ldrb r0, [r4, #0xa]
	movs r1, #2
	bl sub_0807CAA0
_08083DD0:
	bl sub_0805E780
_08083DD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08083DD8
sub_08083DD8: @ 0x08083DD8
	push {lr}
	ldr r2, _08083DEC @ =gUnk_0811F7E8
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08083DEC: .4byte gUnk_0811F7E8

	thumb_func_start sub_08083DF0
sub_08083DF0: @ 0x08083DF0
	push {lr}
	ldr r2, _08083E04 @ =gUnk_0811F808
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08083E04: .4byte gUnk_0811F808

	thumb_func_start sub_08083E08
sub_08083E08: @ 0x08083E08
	push {lr}
	ldr r2, _08083E1C @ =gUnk_0811F818
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08083E1C: .4byte gUnk_0811F818

	thumb_func_start sub_08083E20
sub_08083E20: @ 0x08083E20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_080842D8
	adds r0, r4, #0
	bl sub_08078828
	pop {r4, pc}

	thumb_func_start sub_08083E4C
sub_08083E4C: @ 0x08083E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08083E80 @ =gUnk_0811F8B0
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	bl sub_0807CBD0
	cmp r0, #0
	beq _08083E84
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080842D8
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	b _08083EAC
	.align 2, 0
_08083E80: .4byte gUnk_0811F8B0
_08083E84:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _08083E98
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08083EA0
_08083E98:
	adds r0, r4, #0
	bl sub_08083E20
	b _08083EA4
_08083EA0:
	movs r0, #1
	strb r0, [r4, #0xc]
_08083EA4:
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08083EAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08083EB0
sub_08083EB0: @ 0x08083EB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08083F0A
	ldr r1, _08083F0C @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r3, #0
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	adds r0, #0xc0
	strh r0, [r1]
	ldr r1, _08083F10 @ =gUnk_02034490
	movs r2, #1
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r3, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	bl sub_0805BC4C
_08083F0A:
	pop {r4, pc}
	.align 2, 0
_08083F0C: .4byte gScreen
_08083F10: .4byte gUnk_02034490

	thumb_func_start sub_08083F14
sub_08083F14: @ 0x08083F14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl sub_0805E510
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08083F78
	cmp r0, #1
	beq _08083FA4
	adds r0, r4, #0
	bl sub_0800445C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #2
	bl sub_080577AC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08083FE6
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r2, r0
	ldr r3, _08083F74 @ =gScreen
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	movs r5, #0xff
	lsls r5, r5, #8
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	adds r1, r3, #0
	adds r1, #0x68
	strh r0, [r1]
	cmp r0, #0x10
	bne _08083FE6
	b _08083FCC
	.align 2, 0
_08083F74: .4byte gScreen
_08083F78:
	ldr r5, _08083FA0 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	beq _08083F98
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	movs r0, #0x10
	strb r0, [r5, #0x15]
_08083F98:
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08083FE6
	.align 2, 0
_08083FA0: .4byte gLinkEntity
_08083FA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08083FB2
	ldr r0, _08083FC8 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08083FE6
_08083FB2:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl PlaySFX
	b _08083FE6
	.align 2, 0
_08083FC8: .4byte gLinkEntity
_08083FCC:
	ldr r1, _08083FE8 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x66
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08083E20
	movs r0, #0x73
	bl PlaySFX
_08083FE6:
	pop {r4, r5, pc}
	.align 2, 0
_08083FE8: .4byte gUnk_02034490

	thumb_func_start sub_08083FEC
sub_08083FEC: @ 0x08083FEC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808401E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080788E0
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_0805E4E0
	ldr r0, _08084020 @ =0x0000011B
	bl PlaySFX
_0808401E:
	pop {r4, pc}
	.align 2, 0
_08084020: .4byte 0x0000011B

	thumb_func_start sub_08084024
sub_08084024: @ 0x08084024
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
	beq _08084070
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808406A
	ldrb r0, [r4, #0xe]
	cmp r0, #0x18
	bne _08084060
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _0808406A
_08084060:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	bl sub_08084074
_0808406A:
	ldrb r0, [r4, #0xb]
	bl sub_0807CCB4
_08084070:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084074
sub_08084074: @ 0x08084074
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	bl sub_0804B128
	adds r1, r0, #0
	cmp r1, #0
	beq _080840A4
	b _0808409E
_08084086:
	cmp r0, #3
	bne _0808409C
	ldrb r0, [r1, #1]
	cmp r4, r0
	bne _0808409C
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	movs r2, #0
	bl sub_080A7C00
	b _080840A4
_0808409C:
	adds r1, #8
_0808409E:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08084086
_080840A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080840A8
sub_080840A8: @ 0x080840A8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r4, _0808413C @ =gUnk_0811F838
	bl Random
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	movs r0, #0
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08084138
	movs r0, #6
	strb r0, [r5, #0xe]
	bl Random
	movs r1, #7
	ands r0, r1
	adds r0, #0xc
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x15]
	bl Random
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, #0x20
	strh r1, [r5, #0x24]
	bl Random
	ldr r1, _08084140 @ =gUnk_0811F840
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x20]
	bl Random
	ldr r1, _08084144 @ =gUnk_0811F850
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r6
	strh r0, [r5, #0x2e]
	adds r0, r7, #1
	strh r0, [r5, #0x32]
	ldr r0, _08084148 @ =0x0000FFF8
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	bl sub_08016A30
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _08084138
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
_08084138:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808413C: .4byte gUnk_0811F838
_08084140: .4byte gUnk_0811F840
_08084144: .4byte gUnk_0811F850
_08084148: .4byte 0x0000FFF8

	thumb_func_start sub_0808414C
sub_0808414C: @ 0x0808414C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084180
	movs r0, #8
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	ands r0, r2
	cmp r0, #0
	beq _0808417C
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	bl sub_080840A8
	b _08084180
_0808417C:
	movs r0, #5
	strb r0, [r1, #0xc]
_08084180:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084184
sub_08084184: @ 0x08084184
	push {lr}
	bl sub_0800445C
	pop {pc}

	thumb_func_start nullsub_114
nullsub_114: @ 0x0808418C
	bx lr
	.align 2, 0

	thumb_func_start sub_08084190
sub_08084190: @ 0x08084190
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08084204 @ =gRoomControls
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
	adds r5, #0x70
	strh r1, [r5]
	ldr r0, _08084208 @ =gUnk_0811F8A8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_080002A0
	cmp r0, #0x74
	bne _080841D2
	bl sub_0805E780
_080841D2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08084200
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x73
	bl sub_0807B7D8
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08084200
	bl sub_0805E780
_08084200:
	pop {r4, r5, pc}
	.align 2, 0
_08084204: .4byte gRoomControls
_08084208: .4byte gUnk_0811F8A8

	thumb_func_start sub_0808420C
sub_0808420C: @ 0x0808420C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08084220
	movs r0, #2
	strb r0, [r4, #0xc]
_08084220:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084224
sub_08084224: @ 0x08084224
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrh r1, [r0]
	subs r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x73
	bl sub_0807B7D8
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bgt _0808424C
	cmp r0, #6
	blt _0808424C
	ldr r0, _08084248 @ =0x00000215
	bl PlaySFX
	b _08084258
	.align 2, 0
_08084248: .4byte 0x00000215
_0808424C:
	movs r0, #0x72
	bl PlaySFX
	adds r0, r4, #0
	bl sub_080A29BC
_08084258:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08084278
	bl sub_0805E780
_08084278:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808427C
sub_0808427C: @ 0x0808427C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0808428A
	cmp r0, #7
	bne _080842D4
_0808428A:
	adds r0, r4, #0
	bl sub_080002A0
	cmp r0, #0x74
	bne _0808429C
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080842D4
_0808429C:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _080842D4
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r0, [r1]
	cmp r0, #0
	beq _080842BA
	subs r0, #1
	strh r0, [r1]
	b _080842D4
_080842BA:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	adds r0, r4, #0
	bl sub_080A29BC
_080842D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080842D8
sub_080842D8: @ 0x080842D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r2, [r5, #0x2e]
	movs r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	ldrh r0, [r5, #0x32]
	ands r1, r0
	cmp r1, #0
	beq _080842F6
	adds r2, #2
_080842F6:
	ldr r1, _0808432C @ =gUnk_0811F898
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08084330 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0801AF18
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808432C: .4byte gUnk_0811F898
_08084330: .4byte gRoomControls

	thumb_func_start sub_08084334
sub_08084334: @ 0x08084334
	push {lr}
	ldr r2, _08084348 @ =gUnk_0811F908
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084348: .4byte gUnk_0811F908

	thumb_func_start sub_0808434C
sub_0808434C: @ 0x0808434C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3f
	strb r3, [r0]
	adds r1, #4
	movs r0, #0x47
	strb r0, [r1]
	subs r1, #5
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080843E0 @ =gUnk_080FD188
	str r0, [r5, #0x48]
	ldr r0, _080843E4 @ =0x00004050
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080843E8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080843C8
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080843EC
_080843C8:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r0, r5, #0
	movs r1, #1
	bl UpdateSprite
	b _080843F4
	.align 2, 0
_080843E0: .4byte gUnk_080FD188
_080843E4: .4byte 0x00004050
_080843E8: .4byte gRoomControls
_080843EC:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl UpdateSprite
_080843F4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080843F8
sub_080843F8: @ 0x080843F8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9c
	bne _08084420
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0xd
	movs r2, #0
	bl CreateFx
	ldr r0, _08084424 @ =0x0000010D
	bl sub_08004488
_08084420:
	pop {pc}
	.align 2, 0
_08084424: .4byte 0x0000010D

	thumb_func_start sub_08084428
sub_08084428: @ 0x08084428
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084454
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
_08084454:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084458
sub_08084458: @ 0x08084458
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08084472
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08004168
	b _080844C2
_08084472:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080844C2
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080844C4 @ =gRoomControls
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
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x35
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	bl CreateFx
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
	bl sub_0805E780
_080844C2:
	pop {r4, r5, pc}
	.align 2, 0
_080844C4: .4byte gRoomControls

	thumb_func_start sub_080844C8
sub_080844C8: @ 0x080844C8
	push {lr}
	ldr r2, _080844DC @ =gUnk_0811FAC0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080844DC: .4byte gUnk_0811FAC0

	thumb_func_start sub_080844E0
sub_080844E0: @ 0x080844E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084516
	adds r0, r5, #0
	bl sub_08016A30
_08084516:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x20
	bne _08084524
	ldrb r0, [r5, #0x10]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
_08084524:
	ldrb r4, [r5, #0xa]
	cmp r4, #3
	bne _08084538
	bl Random
	ldr r1, _080845AC @ =gUnk_0811FAC8
	ands r4, r0
	adds r1, r4, r1
	ldrb r0, [r1]
	strb r0, [r5, #0xa]
_08084538:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x17
	bne _0808454E
	bl Random
	ldr r2, _080845B0 @ =gUnk_0811FACC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5, #0xa]
_0808454E:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl UpdateSprite
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _080845B4 @ =gUnk_0811F960
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bne _0808456C
	movs r0, #0x40
	strh r0, [r5, #0x24]
_0808456C:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _08084582
	ldrb r1, [r5, #0xb]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08084582
	ldrh r0, [r4, #2]
	bl sub_08004488
_08084582:
	ldrb r1, [r5, #0xb]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084594
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_0805457C
_08084594:
	ldrb r1, [r5, #0xb]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080845AA
	ldrb r0, [r5, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x19]
_080845AA:
	pop {r4, r5, pc}
	.align 2, 0
_080845AC: .4byte gUnk_0811FAC8
_080845B0: .4byte gUnk_0811FACC
_080845B4: .4byte gUnk_0811F960

	thumb_func_start sub_080845B8
sub_080845B8: @ 0x080845B8
	push {lr}
	ldr r3, _080845D4 @ =gUnk_0811FAD0
	ldr r2, _080845D8 @ =gUnk_0811F960
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080845D4: .4byte gUnk_0811FAD0
_080845D8: .4byte gUnk_0811F960

	thumb_func_start sub_080845DC
sub_080845DC: @ 0x080845DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080845F4
	bl sub_0805E780
_080845F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080845F8
sub_080845F8: @ 0x080845F8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x2e]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	subs r3, r2, r0
	ldrh r0, [r4, #0x32]
	ands r1, r0
	subs r1, r2, r1
	adds r0, r3, #0
	orrs r0, r1
	cmp r0, #0
	beq _08084626
	adds r0, r3, #0
	bl sub_080045DA
	lsrs r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_08084626:
	adds r0, r4, #0
	bl sub_08084630
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084630
sub_08084630: @ 0x08084630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808467E
	ldrb r1, [r4, #0xb]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0808467A
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0808467A
	adds r1, #0x6a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0808467A
	ldr r2, [r4, #0x54]
	adds r2, #0x6c
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_0808467A:
	bl sub_0805E780
_0808467E:
	pop {r4, pc}

	thumb_func_start sub_08084680
sub_08084680: @ 0x08084680
	push {lr}
	ldr r1, [r0, #0x34]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084694
sub_08084694: @ 0x08084694
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080846A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080846A8
_080846A4:
	bl sub_0805E780
_080846A8:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080846B0
sub_080846B0: @ 0x080846B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080846D8
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080846CA
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r4, #0x24]
_080846CA:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080845DC
	b _08084718
_080846D8:
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	orrs r0, r1
	cmp r0, #2
	bne _080846EA
	movs r0, #0x1e
	b _080846EC
_080846EA:
	movs r0, #2
_080846EC:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08084712
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #1
	cmp r0, #0x17
	bls _08084708
	subs r1, #2
_08084708:
	adds r0, r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	b _08084716
_08084712:
	movs r0, #0xc0
	lsls r0, r0, #2
_08084716:
	strh r0, [r4, #0x24]
_08084718:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808471C
sub_0808471C: @ 0x0808471C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084768
	movs r4, #0
_08084734:
	adds r0, r5, #0
	movs r1, #0x24
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0808475E
	lsls r1, r4, #1
	ldr r0, _0808476C @ =gUnk_0811FB08
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0808475E:
	adds r4, #1
	cmp r4, #3
	bls _08084734
	bl sub_0805E780
_08084768:
	pop {r4, r5, pc}
	.align 2, 0
_0808476C: .4byte gUnk_0811FB08

	thumb_func_start sub_08084770
sub_08084770: @ 0x08084770
	push {lr}
	ldr r1, [r0, #0x34]
	ldr r2, _08084780 @ =0xFFFFC000
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0
_08084780: .4byte 0xFFFFC000

	thumb_func_start sub_08084784
sub_08084784: @ 0x08084784
	push {lr}
	ldr r1, [r0, #0x34]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084798
sub_08084798: @ 0x08084798
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080847B6
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080847BA
_080847B6:
	bl sub_0805E780
_080847BA:
	pop {r4, pc}

	thumb_func_start sub_080847BC
sub_080847BC: @ 0x080847BC
	push {lr}
	ldr r1, [r0, #0x34]
	ldr r2, _080847CC @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0
_080847CC: .4byte 0xFFFFE000

	thumb_func_start sub_080847D0
sub_080847D0: @ 0x080847D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080845DC
	pop {r4, pc}

	thumb_func_start sub_080847E0
sub_080847E0: @ 0x080847E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08084814 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	bne _080847F0
	bl sub_0805E780
_080847F0:
	ldr r4, _08084818 @ =gLinkEntity
	ldr r3, _0808481C @ =0xFFFD0000
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _08084820 @ =0x0000FFFD
	strh r0, [r5, #0x36]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FAB0
	adds r0, r5, #0
	bl sub_080845DC
	pop {r4, r5, pc}
	.align 2, 0
_08084814: .4byte gRoomControls
_08084818: .4byte gLinkEntity
_0808481C: .4byte 0xFFFD0000
_08084820: .4byte 0x0000FFFD

	thumb_func_start sub_08084824
sub_08084824: @ 0x08084824
	push {lr}
	ldr r2, _08084838 @ =gUnk_08120560
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084838: .4byte gUnk_08120560

	thumb_func_start sub_0808483C
sub_0808483C: @ 0x0808483C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	orrs r1, r2
	strh r1, [r4, #0x32]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080848C0 @ =gRoomControls
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
	adds r5, #0x74
	strh r1, [r5]
	adds r0, r4, #0
	movs r1, #8
	bl UpdateSprite
	ldr r0, _080848C4 @ =0x00004016
	ldrh r1, [r5]
	adds r4, #0x38
	ldrb r2, [r4]
	bl UpdateCollisionLayer
	movs r0, #0x89
	lsls r0, r0, #1
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_080848C0: .4byte gRoomControls
_080848C4: .4byte 0x00004016

	thumb_func_start sub_080848C8
sub_080848C8: @ 0x080848C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08084980 @ =gLinkState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08084994
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x45
	movs r5, #1
	strb r5, [r0]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x12
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldr r0, _08084984 @ =gUnk_08120574
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	strb r0, [r4, #0xf]
	ldr r2, _08084988 @ =gLinkEntity
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r2, #0x2e]
	subs r0, r0, r1
	adds r3, r4, #0
	adds r3, #0x78
	strh r0, [r3]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r2, #0x32]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x7a
	strh r1, [r0]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0808493C
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0808493C
	ldr r0, _0808498C @ =gUnk_03004040
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r5, [r0, #0x70]
_0808493C:
	ldr r0, _08084990 @ =0x00000315
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_08000152
	ldrb r1, [r4, #0xa]
	adds r1, #1
	ldr r0, _08084980 @ =gLinkState
	ldr r0, [r0, #0x2c]
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #1
	movs r2, #0
	bl sub_08077CF8
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0808496A
	str r4, [r0, #0x50]
_0808496A:
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0806FDA0
	adds r0, r4, #0
	bl sub_080849D8
	b _080849D6
	.align 2, 0
_08084980: .4byte gLinkState
_08084984: .4byte gUnk_08120574
_08084988: .4byte gLinkEntity
_0808498C: .4byte gUnk_03004040
_08084990: .4byte 0x00000315
_08084994:
	cmp r0, #4
	beq _080849C4
	ldr r0, _080849BC @ =0x00000315
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_08000152
	ldr r1, _080849C0 @ =gUnk_03004040
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bl sub_0805E780
	b _080849D6
	.align 2, 0
_080849BC: .4byte 0x00000315
_080849C0: .4byte gUnk_03004040
_080849C4:
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080849D6:
	pop {r4, r5, pc}

	thumb_func_start sub_080849D8
sub_080849D8: @ 0x080849D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #0
	cmp r1, #1
	bne _080849EE
	movs r0, #0x76
	bl PlaySFX
	ldrb r0, [r4, #0xf]
	b _080849F2
_080849EE:
	cmp r1, #0
	beq _080849F6
_080849F2:
	subs r0, #1
	strb r0, [r4, #0xf]
_080849F6:
	ldr r2, _08084A3C @ =gLinkState
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r0, [r3]
	cmp r0, #5
	beq _08084A04
	b _08084AF8
_08084A04:
	ldr r0, _08084A40 @ =gUnk_03004040
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08084AF8
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08084AF8
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08084AF8
	ldr r5, _08084A44 @ =gLinkEntity
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08084A48
	movs r0, #1
	strb r0, [r3]
	b _08084AF8
	.align 2, 0
_08084A3C: .4byte gLinkState
_08084A40: .4byte gUnk_03004040
_08084A44: .4byte gLinkEntity
_08084A48:
	adds r0, r4, #0
	bl sub_080002B8
	adds r0, r4, #0
	bl sub_08084B1C
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r5, [r5, #0x32]
	adds r0, r0, r5
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08084CAC
	adds r0, r4, #0
	bl sub_080085B0
	ldrh r2, [r4, #0x2a]
	ldr r1, _08084AB8 @ =0x00006666
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	beq _08084AEA
	movs r3, #0
	ldr r5, _08084ABC @ =gUnk_0812056C
	ldrh r1, [r5]
	adds r0, r1, #0
	ands r0, r2
	cmp r1, r0
	beq _08084AA6
	adds r2, r5, #0
_08084A94:
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bhi _08084AA6
	ldrh r1, [r2]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _08084A94
_08084AA6:
	cmp r3, #4
	bne _08084AC0
	movs r0, #0
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	b _08084ADE
	.align 2, 0
_08084AB8: .4byte 0x00006666
_08084ABC: .4byte gUnk_0812056C
_08084AC0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08084AE4
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08084AEA
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
_08084ADE:
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08084B16
_08084AE4:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08084B16
_08084AEA:
	ldr r0, _08084AF4 @ =gLinkState
	adds r0, #0xa0
	movs r1, #1
	strb r1, [r0]
	b _08084B16
	.align 2, 0
_08084AF4: .4byte gLinkState
_08084AF8:
	bl sub_0807A108
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0
	bl CreateFx
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	ldr r0, _08084B18 @ =0x0000018F
	bl PlaySFX
	bl sub_0805E780
_08084B16:
	pop {r4, r5, pc}
	.align 2, 0
_08084B18: .4byte 0x0000018F

	thumb_func_start sub_08084B1C
sub_08084B1C: @ 0x08084B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r3, _08084CA4 @ =gLinkEntity
	ldrb r0, [r3, #0x10]
	strb r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r3, #0x1e]
	strb r0, [r4, #0x1e]
	adds r0, r3, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5b
	strb r0, [r1]
	ldrh r0, [r3, #0x12]
	strh r0, [r4, #0x12]
	ldrb r0, [r3, #0x15]
	strb r0, [r4, #0x15]
	ldrb r0, [r3, #0x14]
	strb r0, [r4, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #1
	mov r8, r1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r3, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r7, #0x3f
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	movs r6, #7
	lsrs r1, r1, #0x1d
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r3, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	adds r1, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldr r5, _08084CA8 @ =gLinkState
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08084C6A
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	adds r0, #0x44
	ldrb r0, [r0]
	adds r1, #0x44
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	ldrb r0, [r0, #0x1e]
	strb r0, [r1, #0x1e]
	ldr r3, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	ldrb r1, [r0, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x18]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldr r3, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	ldrb r1, [r0, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	ldr r2, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r2, #0x29
	ands r6, r0
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, [r4, #0x54]
	ldrb r0, [r1, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08084C6A
	ldr r1, [r1, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_08084C6A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_0806FEBC
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl sub_08078E84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08084CA4: .4byte gLinkEntity
_08084CA8: .4byte gLinkState

	thumb_func_start sub_08084CAC
sub_08084CAC: @ 0x08084CAC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _08084D18 @ =gUnk_03004040
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _08084D32
	ldrb r0, [r5, #0x14]
	movs r2, #6
	ands r2, r0
	lsls r2, r2, #1
	ldr r0, _08084D1C @ =gUnk_080B4468
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, _08084D20 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	movs r7, #2
	ldrsh r2, [r2, r7]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	bl sub_080002E4
	cmp r0, #0x72
	bne _08084D24
	ldr r2, [r6]
	movs r1, #1
	ldrb r5, [r5, #0xa]
	lsls r1, r5
	ldr r0, [r2, #0x6c]
	orrs r0, r1
	b _08084D30
	.align 2, 0
_08084D18: .4byte gUnk_03004040
_08084D1C: .4byte gUnk_080B4468
_08084D20: .4byte gRoomControls
_08084D24:
	ldr r2, [r6]
	movs r1, #1
	ldrb r5, [r5, #0xa]
	lsls r1, r5
	ldr r0, [r2, #0x6c]
	bics r0, r1
_08084D30:
	str r0, [r2, #0x6c]
_08084D32:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08084D34
sub_08084D34: @ 0x08084D34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08084D50
	ldr r0, _08084D54 @ =gUnk_0812057C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08084D50:
	pop {r4, pc}
	.align 2, 0
_08084D54: .4byte gUnk_0812057C

	thumb_func_start sub_08084D58
sub_08084D58: @ 0x08084D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bne _08084D6C
	adds r0, r7, #0
	bl sub_08084F8C
_08084D6C:
	adds r0, r7, #0
	bl sub_08004168
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bne _08084D7E
	adds r0, r7, #0
	bl sub_08084F8C
_08084D7E:
	movs r0, #2
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r7, #0x10]
	ldrb r1, [r7, #0x19]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x19]
	ldr r0, _08084E48 @ =gUnk_08120588
	mov r8, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #1]
	strb r0, [r7, #0x1d]
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1c]
	movs r2, #0
	movs r0, #0x80
	strh r0, [r7, #0x24]
	ldr r0, _08084E4C @ =gLinkEntity
	adds r0, #0x38
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x38
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	subs r1, #9
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #4
	strb r0, [r1]
	ldr r0, _08084E50 @ =gUnk_081205B4
	str r0, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x72
	strb r2, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r4, _08084E54 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r5
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r7, #0
	adds r1, #0x70
	strh r0, [r1]
	ldr r0, _08084E58 @ =0x00004022
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	ldrh r3, [r4, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl UpdateCollisionLayer
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0]
	adds r0, r7, #0
	bl UpdateSprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08084E48: .4byte gUnk_08120588
_08084E4C: .4byte gLinkEntity
_08084E50: .4byte gUnk_081205B4
_08084E54: .4byte gRoomControls
_08084E58: .4byte 0x00004022

	thumb_func_start sub_08084E5C
sub_08084E5C: @ 0x08084E5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08084EAC @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084E7A
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08084EA8
_08084E7A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08084EB0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	bl sub_0805E780
_08084EA8:
	pop {r4, r5, pc}
	.align 2, 0
_08084EAC: .4byte gLinkState
_08084EB0: .4byte gRoomControls

	thumb_func_start sub_08084EB4
sub_08084EB4: @ 0x08084EB4
	push {lr}
	ldr r2, _08084EC8 @ =gUnk_0812059C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084EC8: .4byte gUnk_0812059C

	thumb_func_start sub_08084ECC
sub_08084ECC: @ 0x08084ECC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	bl sub_08084ED8
	pop {pc}

	thumb_func_start sub_08084ED8
sub_08084ED8: @ 0x08084ED8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08084E5C
	adds r0, r4, #0
	bl sub_0806F4E8
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _08084EFA
	subs r0, #1
	strb r0, [r4, #0x1d]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084EFA
	movs r0, #2
	strb r0, [r4, #0xd]
_08084EFA:
	pop {r4, pc}

	thumb_func_start sub_08084EFC
sub_08084EFC: @ 0x08084EFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	cmp r1, #0
	bne _08084F42
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, #0xe
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08084F7C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
_08084F42:
	ldr r0, _08084F80 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084F5C
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08084F62
_08084F5C:
	adds r0, r5, #0
	bl sub_08084F8C
_08084F62:
	adds r0, r5, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08084F7A
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084F7A
	bl sub_0805E780
_08084F7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08084F7C: .4byte gRoomControls
_08084F80: .4byte gLinkState

	thumb_func_start sub_08084F84
sub_08084F84: @ 0x08084F84
	bx lr
	.align 2, 0

	thumb_func_start sub_08084F88
sub_08084F88: @ 0x08084F88
	bx lr
	.align 2, 0

	thumb_func_start sub_08084F8C
sub_08084F8C: @ 0x08084F8C
	push {lr}
	ldrb r1, [r0, #0xb]
	cmp r1, #0xf
	beq _08084FA4
	cmp r1, #0xf
	bgt _08084F9E
	cmp r1, #0
	beq _08084FB8
	b _08084FAE
_08084F9E:
	cmp r1, #0xff
	bne _08084FAE
	b _08084FB8
_08084FA4:
	ldrb r1, [r0, #0xe]
	movs r2, #0x80
	bl CreateFx
	b _08084FB8
_08084FAE:
	ldrb r1, [r0, #0xb]
	ldrb r2, [r0, #0xe]
	movs r3, #0
	bl CreateObjectWithParent
_08084FB8:
	bl sub_0805E780
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084FC0
sub_08084FC0: @ 0x08084FC0
	push {lr}
	ldr r2, _08084FD4 @ =gUnk_081205BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084FD4: .4byte gUnk_081205BC

	thumb_func_start sub_08084FD8
sub_08084FD8: @ 0x08084FD8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0808500C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08084FF4
	bl sub_0805E780
_08084FF4:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080850FC
	b _0808501C
_0808500C:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
_0808501C:
	movs r0, #0
	strb r0, [r4, #0x1e]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_115
nullsub_115: @ 0x08085024
	bx lr
	.align 2, 0

	thumb_func_start sub_08085028
sub_08085028: @ 0x08085028
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850A6
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080850A8 @ =gScreen
	mov ip, r0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r1, #0x60
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf
	strh r0, [r1]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	ldr r3, _080850AC @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x5c
	strh r1, [r0]
_080850A6:
	pop {r4, pc}
	.align 2, 0
_080850A8: .4byte gScreen
_080850AC: .4byte gRoomControls

	thumb_func_start sub_080850B0
sub_080850B0: @ 0x080850B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850C8
	movs r0, #4
	strb r0, [r1, #0xc]
	movs r0, #0x60
	strb r0, [r1, #0xe]
_080850C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080850CC
sub_080850CC: @ 0x080850CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850F0
	ldr r2, _080850F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080850F8 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_0805E7BC
_080850F0:
	pop {r4, pc}
	.align 2, 0
_080850F4: .4byte gScreen
_080850F8: .4byte 0x0000DFFF

	thumb_func_start sub_080850FC
sub_080850FC: @ 0x080850FC
	push {r4, r5, r6, lr}
	movs r1, #0x2e
	ldrsh r4, [r0, r1]
	ldr r2, _0808518C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r4, r4, r1
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r4, r1
	adds r0, #0x38
	ldrb r6, [r0]
	ldr r5, _08085190 @ =0x0000403D
	adds r1, r4, #0
	subs r1, #0x41
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r1, r4, #0
	subs r1, #0x40
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r1, r4, #0
	subs r1, #0x3f
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	subs r1, r4, #1
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r1, r4, #1
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r1, r4, #0
	adds r1, #0x3f
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	adds r4, #0x41
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808518C: .4byte gRoomControls
_08085190: .4byte 0x0000403D

	thumb_func_start sub_08085194
sub_08085194: @ 0x08085194
	push {lr}
	ldr r2, _080851A8 @ =gUnk_081205D0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080851A8: .4byte gUnk_081205D0

	thumb_func_start sub_080851AC
sub_080851AC: @ 0x080851AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0xb]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080851E8
	adds r1, r5, #0
	adds r1, #0x7c
	ldr r0, _080851E4 @ =0x0000FFFF
	strh r0, [r1]
	b _080851EE
	.align 2, 0
_080851E4: .4byte 0x0000FFFF
_080851E8:
	adds r0, r5, #0
	adds r0, #0x7c
	strh r3, [r0]
_080851EE:
	ldrb r1, [r5, #0xb]
	movs r0, #2
	ands r0, r1
	strb r0, [r5, #0x14]
	ldrb r4, [r5, #0xa]
	cmp r4, #3
	bne _0808521E
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808521E
	ldrb r0, [r5, #0x14]
	adds r0, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
	strb r4, [r5, #0xc]
_0808521E:
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl UpdateSprite
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	movs r1, #0x2e
	ldrsh r2, [r5, r1]
	ldr r3, _08085260 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	lsls r2, r2, #1
	adds r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x70]
	adds r0, r5, #0
	bl sub_08085394
	pop {r4, r5, r6, pc}
	.align 2, 0
_08085260: .4byte gRoomControls

	thumb_func_start sub_08085264
sub_08085264: @ 0x08085264
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x86
	ldrh r0, [r5]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080852AE
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0808528A
	ldrh r0, [r5]
	bl sub_0807CD48
_0808528A:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0808543C
	ldr r0, _080852B0 @ =0x00000151
	bl sub_08004488
_080852AE:
	pop {r4, r5, pc}
	.align 2, 0
_080852B0: .4byte 0x00000151

	thumb_func_start sub_080852B4
sub_080852B4: @ 0x080852B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08085300
	movs r4, #3
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl UpdateSprite
	adds r0, r5, #0
	bl sub_08085394
	ldr r0, _08085304 @ =0x00000151
	bl sub_08004488
_08085300:
	pop {r4, r5, pc}
	.align 2, 0
_08085304: .4byte 0x00000151

	thumb_func_start sub_08085308
sub_08085308: @ 0x08085308
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080854A8
	cmp r0, #0
	bne _0808538C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08085324
	cmp r0, #2
	ble _08085354
	cmp r0, #3
	beq _08085338
	b _08085354
_08085324:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _08085354
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0808538C
_08085338:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r1, [r1]
	cmp r0, r1
	bne _08085350
	movs r0, #0xff
	b _08085352
_08085350:
	movs r0, #1
_08085352:
	strb r0, [r4, #0xf]
_08085354:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808538C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0808543C
	ldr r0, _08085390 @ =0x00000151
	bl sub_08004488
_0808538C:
	pop {r4, pc}
	.align 2, 0
_08085390: .4byte 0x00000151

	thumb_func_start sub_08085394
sub_08085394: @ 0x08085394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08085430 @ =gUnk_081205E0
	ldrb r2, [r7, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08085434 @ =gUnk_080B4488
	adds r2, r2, r0
	ldr r0, [r7, #0x70]
	mov sb, r0
	movs r1, #0x2e
	ldrsh r4, [r7, r1]
	ldr r1, _08085438 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r8, r2
	lsls r5, r2, #1
	mov r1, sb
	subs r0, r1, r5
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x74
	strh r1, [r0]
	subs r1, r4, r2
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r2, [r6]
	mov r0, sl
	bl UpdateCollisionLayer
	mov r1, sb
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl UpdateCollisionLayer
	add r5, sb
	ldrh r1, [r5]
	adds r0, r7, #0
	adds r0, #0x78
	strh r1, [r0]
	add r4, r8
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl UpdateCollisionLayer
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085430: .4byte gUnk_081205E0
_08085434: .4byte gUnk_080B4488
_08085438: .4byte gRoomControls

	thumb_func_start sub_0808543C
sub_0808543C: @ 0x0808543C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _080854A0 @ =gUnk_080B4488
	ldrb r2, [r7, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r0, #0x2e
	ldrsh r4, [r7, r0]
	ldr r1, _080854A4 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r6, #0
	ldrsb r6, [r2, r6]
	subs r1, r4, r6
	adds r5, r7, #0
	adds r5, #0x38
	ldrb r2, [r5]
	bl UpdateCollisionLayer
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrb r2, [r5]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r4, r4, r6
	ldrb r2, [r5]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080854A0: .4byte gUnk_080B4488
_080854A4: .4byte gRoomControls

	thumb_func_start sub_080854A8
sub_080854A8: @ 0x080854A8
	push {r4, lr}
	ldr r2, _080854E0 @ =gUnk_081205E0
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r2, r1, r2
	ldrh r3, [r2]
	adds r4, r3, #0
	ldr r2, _080854E4 @ =gUnk_080B4488
	adds r1, r1, r2
	ldr r2, [r0, #0x70]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r0, #1
	subs r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _080854E8
	ldrh r0, [r2]
	cmp r3, r0
	bne _080854E8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r4, r0
	bne _080854E8
	movs r0, #0
	b _080854EA
	.align 2, 0
_080854E0: .4byte gUnk_081205E0
_080854E4: .4byte gUnk_080B4488
_080854E8:
	movs r0, #1
_080854EA:
	pop {r4, pc}

	thumb_func_start sub_080854EC
sub_080854EC: @ 0x080854EC
	push {lr}
	ldr r2, _08085500 @ =gUnk_08120608
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08085500: .4byte gUnk_08120608

	thumb_func_start sub_08085504
sub_08085504: @ 0x08085504
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _08085520
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	beq _0808551C
	bl sub_0805E780
_0808551C:
	movs r0, #0
	strb r0, [r4, #0xa]
_08085520:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08085552
	ldr r0, _08085540 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	beq _08085544
	ldrb r0, [r4, #0xb]
	bl sub_0807CBD0
	cmp r0, #0
	bne _08085552
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080855E2
	.align 2, 0
_08085540: .4byte gUnk_02033A90
_08085544:
	ldrb r0, [r4, #0xb]
	bl sub_0807CBD0
	cmp r0, #0
	bne _08085552
	bl sub_0805E780
_08085552:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808556C
	adds r0, r4, #0
	bl sub_080040A2
	cmp r0, #0
	bne _08085566
	bl sub_0805E780
_08085566:
	movs r0, #0
	strb r0, [r4, #0xe]
	b _0808557A
_0808556C:
	adds r0, r4, #0
	bl sub_0805EABC
	cmp r0, #0
	beq _0808557A
	bl sub_0805E780
_0808557A:
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _080855E4 @ =gUnk_08120640
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r4, #0x78]
	adds r1, #0x43
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r0, r4, #0
	movs r1, #9
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_080855E8
_080855E2:
	pop {r4, pc}
	.align 2, 0
_080855E4: .4byte gUnk_08120640

	thumb_func_start sub_080855E8
sub_080855E8: @ 0x080855E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r7, #0x10]
	ldr r6, _0808564C @ =gLinkEntity
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x18
	bl sub_0806FC80
	adds r1, r0, #0
	cmp r1, #0
	beq _080856EE
	ldr r3, _08085650 @ =gLinkState
	ldr r0, [r3, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _0808561C
	b _080857CE
_0808561C:
	adds r5, r3, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08085634
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	strb r4, [r5]
_08085634:
	adds r0, r3, #0
	adds r0, #0x84
	str r7, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08085654
	adds r0, r6, #0
	bl sub_0800455E
	b _0808565A
	.align 2, 0
_0808564C: .4byte gLinkEntity
_08085650: .4byte gLinkState
_08085654:
	adds r0, r6, #0
	bl sub_08004542
_0808565A:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	bne _0808568C
	movs r0, #4
	strb r0, [r7, #0xf]
_08085664:
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
	ldrb r0, [r7, #0xf]
	subs r0, #1
	strb r0, [r7, #0xf]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08085664
	movs r0, #1
	strb r0, [r7, #0xf]
	ldrb r1, [r7, #0xe]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0xe]
	str r2, [r7, #0x70]
	str r2, [r7, #0x6c]
_0808568C:
	ldr r2, _080856B8 @ =gLinkState
	ldrb r0, [r2, #0x1c]
	cmp r0, #3
	beq _08085696
	b _080857CE
_08085696:
	ldr r1, _080856BC @ =gUnk_08120620
	ldrb r0, [r2, #0x1d]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _080856C0 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _080856DE
	cmp r1, #2
	bgt _080856C4
	cmp r1, #0
	beq _080856D6
	b _080857CE
	.align 2, 0
_080856B8: .4byte gLinkState
_080856BC: .4byte gUnk_08120620
_080856C0: .4byte gLinkEntity
_080856C4:
	cmp r1, #4
	beq _080856CE
	cmp r1, #6
	beq _080856E6
	b _080857CE
_080856CE:
	ldr r0, [r7, #0x70]
	subs r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856D6:
	ldr r0, [r7, #0x70]
	adds r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856DE:
	ldr r0, [r7, #0x6c]
	subs r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856E6:
	ldr r0, [r7, #0x6c]
	adds r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856EE:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _080856FC
	strb r1, [r7, #0xf]
	movs r0, #0x83
	bl PlaySFX
_080856FC:
	adds r2, r7, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	mov r8, r2
	cmp r0, #0x13
	bne _080857C8
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _08085758 @ =gUnk_08126EE4
	ldrb r2, [r6, #0x14]
	movs r0, #0xe
	ands r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	movs r0, #1
	orrs r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r5, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	ldr r0, _0808575C @ =gLinkState
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	beq _0808576A
	cmp r0, #2
	bgt _08085760
	cmp r0, #1
	beq _08085770
	b _08085774
	.align 2, 0
_08085758: .4byte gUnk_08126EE4
_0808575C: .4byte gLinkState
_08085760:
	cmp r0, #3
	bne _08085774
	movs r4, #0x80
	lsls r4, r4, #3
	b _08085774
_0808576A:
	movs r4, #0xc0
	lsls r4, r4, #2
	b _08085774
_08085770:
	movs r4, #0x80
	lsls r4, r4, #2
_08085774:
	ldr r6, _080858A8 @ =gUnk_080C9160
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x6c]
	adds r1, r1, r0
	str r1, [r7, #0x6c]
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x80
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x70]
	subs r1, r1, r0
	str r1, [r7, #0x70]
_080857C8:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080857CE:
	ldr r0, [r7, #0x2c]
	str r0, [r7, #0x54]
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bne _080857E4
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bne _080857E4
	b _080859F4
_080857E4:
	ldr r0, [r7, #0x70]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _080857F4
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _080857F6
_080857F4:
	str r1, [r7, #0x70]
_080857F6:
	ldr r0, [r7, #0x6c]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _08085806
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _08085808
_08085806:
	str r1, [r7, #0x6c]
_08085808:
	ldr r0, _080858B0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808581A
	adds r0, r7, #0
	bl sub_080A2AD4
_0808581A:
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x6c]
	adds r5, r0, r1
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x70]
	adds r3, r1, r2
	adds r2, r5, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	ldr r0, [r7, #0x6c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, _080858A8 @ =gUnk_080C9160
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_0806FA04
	strh r0, [r7, #0x24]
	ldr r0, [r7, #0x70]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, #0x80
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r4, r0
	ble _08085884
	strh r4, [r7, #0x24]
_08085884:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080858BC
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858B4 @ =0x00000FFF
	cmp r1, r0
	bgt _080858B8
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	adds r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858A8: .4byte gUnk_080C9160
_080858AC: .4byte 0xFFFF0000
_080858B0: .4byte gUnk_030010A0
_080858B4: .4byte 0x00000FFF
_080858B8:
	movs r0, #0
	b _080858DE
_080858BC:
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858D8 @ =0xFFFFF000
	cmp r1, r0
	ble _080858DC
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	subs r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858D8: .4byte 0xFFFFF000
_080858DC:
	movs r0, #1
_080858DE:
	strb r0, [r7, #0xb]
_080858E0:
	adds r0, r7, #0
	bl sub_08085EFC
	adds r0, r7, #0
	bl sub_080AF134
	ldr r1, [r7, #0x54]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	bne _0808590C
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08085906
	movs r0, #0
	str r0, [r7, #0x6c]
	b _08085916
_08085906:
	adds r0, r1, #1
	strb r0, [r2]
	b _08085916
_0808590C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
_08085916:
	ldr r1, [r7, #0x50]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	bne _0808592E
	ldrb r0, [r2]
	cmp r0, #2
	bne _0808592A
	movs r0, #0
	str r0, [r7, #0x70]
	b _08085932
_0808592A:
	adds r0, #1
	b _08085930
_0808592E:
	movs r0, #0
_08085930:
	strb r0, [r2]
_08085932:
	ldr r0, _0808595C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085944
	adds r0, r7, #0
	bl sub_08085F1C
_08085944:
	ldr r1, [r7, #0x6c]
	cmp r1, #0
	beq _08085998
	cmp r1, #0
	bge _0808596E
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08085960
	movs r0, #0
	b _08085964
	.align 2, 0
_0808595C: .4byte gLinkState
_08085960:
	adds r0, r1, #0
	adds r0, #0x80
_08085964:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #4
	b _08085982
_0808596E:
	cmp r1, #0x7f
	bhi _08085976
	movs r0, #0
	b _0808597A
_08085976:
	adds r0, r1, #0
	subs r0, #0x80
_0808597A:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #8
_08085982:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08085998
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bge _08085992
	adds r0, #3
_08085992:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x6c]
_08085998:
	ldr r1, [r7, #0x70]
	cmp r1, #0
	beq _080859E6
	cmp r1, #0
	bge _080859C0
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080859AE
	movs r0, #0
	b _080859B2
_080859AE:
	adds r0, r1, #0
	adds r0, #0x80
_080859B2:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0xe
	bne _080859E6
	b _080859D8
_080859C0:
	cmp r1, #0x7f
	bhi _080859C8
	movs r0, #0
	b _080859CC
_080859C8:
	adds r0, r1, #0
	subs r0, #0x80
_080859CC:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0xe0
	bne _080859E6
_080859D8:
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bge _080859E0
	adds r0, #3
_080859E0:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x70]
_080859E6:
	adds r0, r7, #0
	bl sub_08085D28
	adds r0, r7, #0
	bl sub_08085D60
	b _08085A0A
_080859F4:
	ldr r0, _08085A18 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08085A0A
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
_08085A0A:
	adds r0, r7, #0
	bl sub_08085F48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085A18: .4byte gUnk_030010A0

	thumb_func_start sub_08085A1C
sub_08085A1C: @ 0x08085A1C
	push {lr}
	ldr r2, _08085A3C @ =gUnk_0812062C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r2, _08085A40 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08078B48
	pop {pc}
	.align 2, 0
_08085A3C: .4byte gUnk_0812062C
_08085A40: .4byte gLinkState

	thumb_func_start sub_08085A44
sub_08085A44: @ 0x08085A44
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085A62
	movs r0, #0x18
	strb r0, [r4, #0x15]
	b _08085A82
_08085A62:
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085A78
	movs r0, #8
	strb r0, [r4, #0x15]
	b _08085A82
_08085A78:
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08085A94
_08085A82:
	adds r0, r4, #0
	bl sub_08085EFC
	adds r0, r4, #0
	bl sub_080AF134
	adds r0, r4, #0
	bl sub_08085F1C
_08085A94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08085A98
sub_08085A98: @ 0x08085A98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08085EFC
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08085F1C
	ldr r1, [r4, #0x78]
	ldr r0, _08085B00 @ =0x007FFFFF
	cmp r1, r0
	bls _08085ACC
	ldr r2, _08085B04 @ =0xFFFE0000
	adds r0, r1, r2
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08085ACC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085B34
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, _08085B08 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	bne _08085B10
	ldrh r0, [r4, #0x32]
	adds r0, #0xd0
	strh r0, [r4, #0x32]
	ldr r0, _08085B0C @ =0x0000FF30
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x46
	strh r0, [r1]
	movs r0, #0x73
	bl sub_0807CCB4
	b _08085B22
	.align 2, 0
_08085B00: .4byte 0x007FFFFF
_08085B04: .4byte 0xFFFE0000
_08085B08: .4byte gUnk_02033A90
_08085B0C: .4byte 0x0000FF30
_08085B10:
	ldrh r0, [r4, #0x32]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	ldr r0, _08085B38 @ =0x0000FFC0
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xf
	strh r0, [r1]
_08085B22:
	adds r0, r4, #0
	movs r1, #0x2b
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	ldr r0, _08085B3C @ =0x0000012D
	bl PlaySFX
_08085B34:
	pop {r4, pc}
	.align 2, 0
_08085B38: .4byte 0x0000FFC0
_08085B3C: .4byte 0x0000012D

	thumb_func_start sub_08085B40
sub_08085B40: @ 0x08085B40
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _08085BB4
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _08085BE8
	ldr r1, [r5, #0x78]
	ldr r0, _08085B9C @ =0x011FFFFF
	cmp r1, r0
	bhi _08085B7A
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r1, r2
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08085B7A:
	ldr r4, _08085BA0 @ =gLinkEntity
	ldrh r3, [r5, #0x32]
	ldrh r0, [r5, #0x36]
	adds r0, r3, r0
	adds r1, r5, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r2, r0, r1
	strh r2, [r4, #0x32]
	ldr r0, _08085BA4 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	bne _08085BA8
	subs r0, r3, r1
	adds r1, r2, #0
	adds r1, #0xd0
	b _08085BAE
	.align 2, 0
_08085B9C: .4byte 0x011FFFFF
_08085BA0: .4byte gLinkEntity
_08085BA4: .4byte gUnk_02033A90
_08085BA8:
	subs r0, r3, r1
	adds r1, r2, #0
	adds r1, #0x40
_08085BAE:
	subs r0, r0, r1
	strh r0, [r4, #0x36]
	b _08085BE8
_08085BB4:
	adds r0, r5, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _08085BE8
	ldr r4, _08085C50 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_08085CDC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r2, [r5, #0x15]
	adds r0, r4, #0
	bl sub_0806F5BC
_08085BE8:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	cmp r0, #0
	bne _08085C54
	ldr r4, _08085C50 @ =gLinkEntity
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08085C58
	adds r0, r4, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_08085F1C
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0xf]
_08085C16:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08085C16
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0xe]
	str r2, [r5, #0x70]
	str r2, [r5, #0x6c]
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _08085C58
	movs r0, #4
	strb r0, [r5, #0xc]
	b _08085C58
	.align 2, 0
_08085C50: .4byte gLinkEntity
_08085C54:
	subs r0, #1
	strh r0, [r1]
_08085C58:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08085C5C
sub_08085C5C: @ 0x08085C5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08085CA0 @ =gLinkEntity
	adds r1, r5, #0
	movs r2, #0x18
	bl sub_0806FC80
	cmp r0, #0
	beq _08085CAE
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r0, [r4, #0x24]
	strh r0, [r5, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldr r2, _08085CA4 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08085CA8
	adds r0, r5, #0
	bl sub_0800455E
	b _08085CAE
	.align 2, 0
_08085CA0: .4byte gLinkEntity
_08085CA4: .4byte gLinkState
_08085CA8:
	adds r0, r5, #0
	bl sub_08004542
_08085CAE:
	ldr r3, _08085CD4 @ =gRoomControls
	ldrh r0, [r3]
	cmp r0, #0
	bne _08085CD2
	ldrb r1, [r4, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	subs r0, #0x11
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	ldr r0, _08085CD8 @ =gLinkEntity
	str r0, [r3, #0x30]
_08085CD2:
	pop {r4, r5, pc}
	.align 2, 0
_08085CD4: .4byte gRoomControls
_08085CD8: .4byte gLinkEntity

	thumb_func_start sub_08085CDC
sub_08085CDC: @ 0x08085CDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4, #0x78]
	ldr r1, _08085D04 @ =0x03FFFFFF
	cmp r0, r1
	bhi _08085D08
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	b _08085D0C
	.align 2, 0
_08085D04: .4byte 0x03FFFFFF
_08085D08:
	bl sub_0805E780
_08085D0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08085D10
sub_08085D10: @ 0x08085D10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805EABC
	cmp r0, #0
	beq _08085D26
	ldrb r0, [r4, #0xb]
	bl sub_0807CCB4
	bl sub_0805E780
_08085D26:
	pop {r4, pc}

	thumb_func_start sub_08085D28
sub_08085D28: @ 0x08085D28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08085D5C @ =gLinkState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08085D5A
	ldr r0, [r1, #0x30]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _08085D5A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	bne _08085D5A
	movs r0, #0
	strb r5, [r4, #0xc]
	strb r0, [r4, #0xd]
	bl sub_08078B48
_08085D5A:
	pop {r4, r5, pc}
	.align 2, 0
_08085D5C: .4byte gLinkState

	thumb_func_start sub_08085D60
sub_08085D60: @ 0x08085D60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _08085D94 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085E64
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08085E64
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08085E64
	ldrb r1, [r5, #0x15]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08085D98
	ldrb r6, [r5, #0x15]
	adds r4, r6, #0
	b _08085DB0
	.align 2, 0
_08085D94: .4byte gLinkState
_08085D98:
	movs r0, #0x10
	ands r0, r1
	movs r4, #8
	cmp r0, #0
	beq _08085DA4
	movs r4, #0x18
_08085DA4:
	ldrb r0, [r5, #0x15]
	subs r0, #8
	movs r6, #0x10
	cmp r0, #0x10
	ble _08085DB0
	movs r6, #0
_08085DB0:
	cmp r4, #0x18
	beq _08085DB8
	cmp r4, #8
	bne _08085E20
_08085DB8:
	lsrs r3, r4, #2
	ldr r1, _08085E10 @ =gUnk_08120638
	adds r0, r3, r1
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r0, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E20
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08085E14 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, r0, r7
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	add r1, r8
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _08085E1C
	ldr r0, _08085E18 @ =gLinkEntity
	lsrs r1, r4, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E20
	strb r4, [r5, #0x15]
	b _08085E52
	.align 2, 0
_08085E10: .4byte gUnk_08120638
_08085E14: .4byte gRoomControls
_08085E18: .4byte gLinkEntity
_08085E1C:
	strb r4, [r5, #0x15]
	b _08085E6C
_08085E20:
	cmp r6, #0
	beq _08085E28
	cmp r6, #0x10
	bne _08085E6C
_08085E28:
	lsrs r3, r6, #2
	ldr r2, _08085E5C @ =gUnk_08120638
	adds r0, r3, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E6C
	ldr r0, _08085E60 @ =gLinkEntity
	lsrs r1, r6, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E6C
	strb r6, [r5, #0x15]
_08085E52:
	adds r0, r5, #0
	bl sub_08085E74
	b _08085E6C
	.align 2, 0
_08085E5C: .4byte gUnk_08120638
_08085E60: .4byte gLinkEntity
_08085E64:
	ldrb r1, [r5, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r5, #0x10]
_08085E6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08085E74
sub_08085E74: @ 0x08085E74
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0x15]
	cmp r0, #8
	beq _08085EB8
	cmp r0, #8
	bgt _08085EA2
	cmp r0, #0
	beq _08085EAC
	b _08085EBE
_08085EA2:
	cmp r0, #0x10
	beq _08085EB2
	cmp r0, #0x18
	beq _08085EB8
	b _08085EBE
_08085EAC:
	movs r0, #0x90
	lsls r0, r0, #1
	b _08085EBC
_08085EB2:
	movs r0, #0x9c
	lsls r0, r0, #1
	b _08085EBC
_08085EB8:
	movs r0, #0x80
	lsls r0, r0, #1
_08085EBC:
	strh r0, [r2, #0x24]
_08085EBE:
	movs r0, #0
	str r0, [r2, #0x70]
	str r0, [r2, #0x6c]
	strh r0, [r2, #0x2c]
	strh r0, [r2, #0x30]
	ldr r1, _08085EF0 @ =gLinkEntity
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x30]
	ldrb r0, [r2, #0x15]
	strb r0, [r1, #0x15]
	ldr r1, _08085EF4 @ =gLinkState
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldr r0, _08085EF8 @ =gRoomControls
	str r2, [r0, #0x30]
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _08085EE8
	bl sub_0805E7BC
_08085EE8:
	bl sub_08077B2C
	pop {pc}
	.align 2, 0
_08085EF0: .4byte gLinkEntity
_08085EF4: .4byte gLinkState
_08085EF8: .4byte gRoomControls

	thumb_func_start sub_08085EFC
sub_08085EFC: @ 0x08085EFC
	ldr r3, _08085F18 @ =gLinkEntity
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r3, #0x2e]
	subs r1, r1, r2
	adds r2, r0, #0
	adds r2, #0x76
	strh r1, [r2]
	ldrh r1, [r0, #0x32]
	ldrh r2, [r3, #0x32]
	subs r1, r1, r2
	adds r0, #0x74
	strh r1, [r0]
	bx lr
	.align 2, 0
_08085F18: .4byte gLinkEntity

	thumb_func_start sub_08085F1C
sub_08085F1C: @ 0x08085F1C
	push {lr}
	adds r3, r0, #0
	ldr r2, _08085F44 @ =gLinkEntity
	adds r1, r3, #0
	adds r1, #0x76
	ldrh r0, [r3, #0x2e]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #0x2e]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r3, #0x32]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
	ldrb r0, [r3, #0x15]
	bl sub_0807A5B8
	pop {pc}
	.align 2, 0
_08085F44: .4byte gLinkEntity

	thumb_func_start sub_08085F48
sub_08085F48: @ 0x08085F48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xe]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08085F8C
	ldr r5, _08085F80 @ =gLinkState
	ldrb r0, [r5, #0x12]
	cmp r0, #0x17
	bne _08085F6A
	bl sub_08078F60
	movs r0, #0x19
	strb r0, [r5, #0x12]
_08085F6A:
	movs r0, #0x83
	bl PlaySFX
	ldr r1, [r4, #0x78]
	ldr r0, _08085F84 @ =0x0127FFFF
	cmp r1, r0
	bhi _08085F88
	movs r2, #0x80
	lsls r2, r2, #0xc
	b _08085FF8
	.align 2, 0
_08085F80: .4byte gLinkState
_08085F84: .4byte 0x0127FFFF
_08085F88:
	movs r0, #0
	b _08086006
_08085F8C:
	ldr r0, _08085FAC @ =gLinkState
	ldr r1, [r0, #0x30]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08085FCC
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08085FB8
	ldr r1, [r4, #0x78]
	ldr r0, _08085FB0 @ =0x011FFFFF
	cmp r1, r0
	bhi _08085FB4
	movs r2, #0x80
	lsls r2, r2, #8
	b _08085FF8
	.align 2, 0
_08085FAC: .4byte gLinkState
_08085FB0: .4byte 0x011FFFFF
_08085FB4:
	strb r3, [r4, #0xe]
	b _08086008
_08085FB8:
	ldr r1, [r4, #0x78]
	movs r0, #0x88
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08086004
	ldr r2, _08085FC8 @ =0xFFFF8000
	b _08085FF8
	.align 2, 0
_08085FC8: .4byte 0xFFFF8000
_08085FCC:
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08085FEC
	ldr r2, [r4, #0x78]
	ldr r0, _08085FE4 @ =0x010FFFFF
	cmp r2, r0
	bhi _08085FE8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r2, r1
	str r0, [r4, #0x78]
	b _08086008
	.align 2, 0
_08085FE4: .4byte 0x010FFFFF
_08085FE8:
	strb r1, [r4, #0xe]
	b _08086008
_08085FEC:
	ldr r1, [r4, #0x78]
	movs r0, #0x83
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08086004
	ldr r2, _08086000 @ =0xFFFFC000
_08085FF8:
	adds r0, r1, r2
	str r0, [r4, #0x78]
	b _08086008
	.align 2, 0
_08086000: .4byte 0xFFFFC000
_08086004:
	movs r0, #1
_08086006:
	strb r0, [r4, #0xe]
_08086008:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	pop {r4, r5, pc}

	thumb_func_start sub_0808601C
sub_0808601C: @ 0x0808601C
	push {lr}
	ldr r2, _08086030 @ =gUnk_08120648
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086030: .4byte gUnk_08120648

	thumb_func_start sub_08086034
sub_08086034: @ 0x08086034
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	adds r1, r0, #0
	adds r1, #0x58
	ldrb r1, [r1]
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08086054
sub_08086054: @ 0x08086054
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08086064
	adds r0, r4, #0
	bl sub_08004274
_08086064:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0808607C
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0808607C:
	ldrb r0, [r4, #0xe]
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080860AA
	cmp r1, #0
	beq _08086098
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080860AA
	bl sub_0805E780
	b _080860AA
_08086098:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080860AA
	bl sub_0805E780
_080860AA:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080860BC
	ldr r0, [r1, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r1, #0x34]
	str r0, [r4, #0x34]
_080860BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080860C0
sub_080860C0: @ 0x080860C0
	push {lr}
	ldr r2, _080860D4 @ =gUnk_08120650
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080860D4: .4byte gUnk_08120650

	thumb_func_start sub_080860D8
sub_080860D8: @ 0x080860D8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, #0xff
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r4, #0
	bl sub_080A2CC0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808611C
sub_0808611C: @ 0x0808611C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08086168
	adds r1, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808613C
	ldr r2, [r4, #0x50]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _08086144
	cmp r1, #0
	beq _0808613C
	adds r0, #1
	strb r0, [r2, #0xe]
_0808613C:
	adds r0, r4, #0
	bl sub_080A2BE4
	b _0808614C
_08086144:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A2BE4
_0808614C:
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086166
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_08086166:
	pop {r4, pc}

	thumb_func_start sub_08086168
sub_08086168: @ 0x08086168
	push {r4, lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _0808619C @ =gUnk_08120658
	adds r1, r1, r2
	ldr r4, _080861A0 @ =gLinkEntity
	ldrb r2, [r1]
	ldrb r3, [r1, #1]
	adds r1, r4, #0
	bl sub_080041A0
	cmp r0, #0
	beq _080861A8
	bl sub_08079F8C
	cmp r0, #0
	beq _080861A8
	ldr r0, _080861A4 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080861A8
	movs r0, #1
	b _080861AA
	.align 2, 0
_0808619C: .4byte gUnk_08120658
_080861A0: .4byte gLinkEntity
_080861A4: .4byte gLinkState
_080861A8:
	movs r0, #0
_080861AA:
	pop {r4, pc}

	thumb_func_start sub_080861AC
sub_080861AC: @ 0x080861AC
	push {lr}
	ldr r2, _080861C0 @ =gUnk_08120660
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080861C0: .4byte gUnk_08120660

	thumb_func_start sub_080861C4
sub_080861C4: @ 0x080861C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r0, _08086230 @ =gLinkEntity
	mov ip, r0
	ldrb r1, [r0, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	mov r0, ip
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r6, r4, #0
	adds r6, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r6]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
	bl Random
	ands r0, r5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x11
	bl UpdateSprite
	pop {r4, r5, r6, pc}
	.align 2, 0
_08086230: .4byte gLinkEntity

	thumb_func_start sub_08086234
sub_08086234: @ 0x08086234
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08086258
	ldr r0, _08086254 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808625E
	adds r0, r4, #0
	bl sub_08004274
	b _0808625E
	.align 2, 0
_08086254: .4byte gUnk_030010A0
_08086258:
	adds r0, r4, #0
	bl sub_08004274
_0808625E:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0808626E
	bl sub_0805E780
	b _0808627E
_0808626E:
	ldr r0, _08086280 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0808627E
	bl sub_0805E780
_0808627E:
	pop {r4, pc}
	.align 2, 0
_08086280: .4byte gLinkState

	thumb_func_start sub_08086284
sub_08086284: @ 0x08086284
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080862B4 @ =gUnk_08120668
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_080862B4: .4byte gUnk_08120668

	thumb_func_start sub_080862B8
sub_080862B8: @ 0x080862B8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x63
	bl sub_0807CBD0
	cmp r0, #0
	beq _080862CA
	bl sub_0805E780
_080862CA:
	movs r3, #1
	strb r3, [r4, #0xc]
	ldr r1, _08086350 @ =gUnk_08120678
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x76
	strh r0, [r2]
	ldrh r0, [r1]
	subs r1, #2
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08086354
	adds r1, #6
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r4, #0x30]
	str r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r4, #0x19]
	str r4, [r4, #0x50]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r3, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
_08086324:
	adds r5, r2, #1
	adds r0, r4, #0
	movs r1, #0x18
	adds r2, r5, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08086346
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x54]
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x50]
_08086346:
	adds r2, r5, #0
	cmp r2, #3
	bls _08086324
	b _08086360
	.align 2, 0
_08086350: .4byte gUnk_08120678
_08086354:
	ldrb r0, [r4, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x19]
_08086360:
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08086370
	pop {r4, r5, pc}

	thumb_func_start sub_08086370
sub_08086370: @ 0x08086370
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r2, [r6, #0xa]
	cmp r2, #0
	beq _08086440
	ldr r0, [r6, #0x54]
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080863B6
	adds r1, r6, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x76
	strh r0, [r2]
	ldrh r0, [r1]
	subs r1, #2
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	ldr r2, [r6, #0x50]
	ldr r0, [r2, #0x2c]
	ldr r1, [r6, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r6, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	movs r1, #0x80
	eors r0, r1
	strb r0, [r6, #0x15]
	b _08086428
_080863B6:
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080863E8 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r6, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r6, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	movs r0, #0x80
	eors r1, r0
	ldrb r2, [r6, #0x15]
	cmp r1, r2
	beq _080863F0
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080863EC
	adds r0, r2, #3
	b _080863EE
	.align 2, 0
_080863E8: .4byte gLinkEntity
_080863EC:
	subs r0, r2, #3
_080863EE:
	strb r0, [r6, #0x15]
_080863F0:
	ldr r0, _0808640C @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08086410
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r0, #0x40
	adds r1, r6, #0
	adds r1, #0x76
	b _08086426
	.align 2, 0
_0808640C: .4byte gLinkEntity
_08086410:
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	subs r1, #0x20
	adds r2, r6, #0
	adds r2, #0x76
	strh r1, [r2]
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r6, #0
	adds r1, #0x7a
_08086426:
	strh r0, [r1]
_08086428:
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #0x2c]
	str r0, [r6, #0x2c]
	ldr r0, [r1, #0x30]
	str r0, [r6, #0x30]
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	ldrb r2, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F62C
	b _0808654A
_08086440:
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	bne _08086498
	ldrb r0, [r6, #0x15]
	adds r0, #1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x1d]
	subs r0, #1
	strb r0, [r6, #0x1d]
	adds r2, r6, #0
	adds r2, #0x7f
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08086480 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	bne _08086484
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r0, #0x10
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	b _080864BC
	.align 2, 0
_08086480: .4byte gLinkEntity
_08086484:
	adds r1, r6, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #0x20
	adds r2, r6, #0
	adds r2, #0x76
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #0x30
	b _080864B6
_08086498:
	ldrb r0, [r6, #0x15]
	adds r0, #2
	strb r0, [r6, #0x15]
	movs r0, #0xf0
	strb r0, [r6, #0x1d]
	adds r3, r6, #0
	adds r3, #0x7f
	strb r2, [r3]
	adds r1, r6, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x76
	strh r0, [r2]
	ldrh r0, [r1]
_080864B6:
	subs r1, #2
	strh r0, [r1]
	adds r1, r2, #0
_080864BC:
	ldrb r2, [r6, #0x1d]
	cmp r2, #0
	bne _080864CA
	movs r0, #2
	strb r0, [r6, #0xc]
	strb r2, [r3]
	b _0808654A
_080864CA:
	ldrb r0, [r6, #0x15]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080864E0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080864EE
	b _080864EA
_080864E0:
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080864EE
_080864EA:
	rsbs r0, r2, #0
	strh r0, [r1]
_080864EE:
	ldr r5, _0808654C @ =gUnk_080C9160
	ldrb r0, [r6, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_0806FA04
	adds r1, r6, #0
	adds r1, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	ldrb r0, [r6, #0x15]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_0806FA04
	adds r1, r6, #0
	adds r1, #0x84
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1]
	subs r1, r1, r0
	str r1, [r6, #0x30]
_0808654A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808654C: .4byte gUnk_080C9160

	thumb_func_start sub_08086550
sub_08086550: @ 0x08086550
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08086566
	movs r0, #3
	strb r0, [r4, #0xc]
	b _08086592
_08086566:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08086592
	movs r0, #0x63
	bl sub_0807CCB4
	movs r0, #0
	bl sub_0807CD10
	movs r5, #0
_0808657E:
	ldr r0, [r4, #0x54]
	ldr r1, [r0, #0x50]
	str r1, [r4, #0x54]
	bl sub_0805E7BC
	adds r5, #1
	cmp r5, #3
	bls _0808657E
	bl sub_0805E780
_08086592:
	pop {r4, r5, pc}

	thumb_func_start sub_08086594
sub_08086594: @ 0x08086594
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r7, #0x2c]
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldr r2, [r7, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r7, #0x15]
	adds r0, r7, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	bne _08086608
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0x1d]
	subs r0, #1
	strb r0, [r7, #0x1d]
	adds r2, r7, #0
	adds r2, #0x7f
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080865EC @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080865F0
	adds r0, r7, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x76
	b _0808662A
	.align 2, 0
_080865EC: .4byte gLinkEntity
_080865F0:
	adds r0, r7, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	subs r1, #0x20
	adds r3, r7, #0
	adds r3, #0x76
	strh r1, [r3]
	ldrh r0, [r0]
	adds r0, #0x30
	adds r1, r7, #0
	adds r1, #0x7a
	b _0808662A
_08086608:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x24]
	movs r0, #0xf0
	strb r0, [r7, #0x1d]
	adds r2, r7, #0
	adds r2, #0x7f
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	adds r3, r7, #0
	adds r3, #0x76
	strh r0, [r3]
	ldrh r0, [r1]
	subs r1, #2
_0808662A:
	strh r0, [r1]
	ldrb r1, [r7, #0x1d]
	cmp r1, #0
	bne _0808663A
	movs r0, #2
	strb r0, [r7, #0xc]
	strb r1, [r2]
	b _080866B8
_0808663A:
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	ldrb r2, [r7, #0x15]
	adds r0, r7, #0
	bl sub_0806F62C
	ldrb r0, [r7, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r7, #0x15]
	ldr r6, _080866BC @ =gUnk_080C9160
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	adds r1, r7, #0
	adds r1, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r4, [r1]
	adds r4, r4, r0
	ldrb r0, [r7, #0x15]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	adds r1, r7, #0
	adds r1, #0x84
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r2, [r1]
	subs r2, r2, r0
	adds r0, r7, #0
	adds r1, r4, #0
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	beq _080866B8
	movs r0, #1
	strb r0, [r7, #0xc]
_080866B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080866BC: .4byte gUnk_080C9160
