	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start UpdateDoorTransition
UpdateDoorTransition: @ 0x08080A40
	push {r4, r5, r6, r7, lr}
	ldr r7, _08080A70 @ =gRoomControls
	ldr r1, [r7, #0x30]
	ldr r0, _08080A74 @ =gPlayerEntity
	adds r2, r7, #0
	cmp r1, r0
	beq _08080A50
	b _08080B5C
_08080A50:
	ldr r0, _08080A78 @ =gPlayerState
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
_08080A74: .4byte gPlayerEntity
_08080A78: .4byte gPlayerState
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
	ldr r1, _08080B48 @ =gRoomTransition
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
_08080B48: .4byte gRoomTransition
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
	ldr r0, _08080CA8 @ =gMapDataBottom
	ldr r4, _08080CAC @ =gRoomControls
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldr r0, _08080CB0 @ =gMapDataTop
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	pop {r4, pc}
	.align 2, 0
_08080CA8: .4byte gMapDataBottom
_08080CAC: .4byte gRoomControls
_08080CB0: .4byte gMapDataTop

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
	bl InitAnimationForceUpdate
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
	bl UpdateAnimationSingleFrame
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
	bl ResolveEntityOnTop
	b _08080E00
_08080DEE:
	ldr r0, _08080E04 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08080E00
	adds r0, r4, #0
	bl CreateSparkle
_08080E00:
	pop {r4, r5, pc}
	.align 2, 0
_08080E04: .4byte gRoomTransition
