	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object10
Object10: @ 0x08084824
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
	bl InitializeAnimation
	ldr r0, _080848C4 @ =0x00004016
	ldrh r1, [r5]
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	movs r0, #0x89
	lsls r0, r0, #1
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_080848C0: .4byte gRoomControls
_080848C4: .4byte 0x00004016

	thumb_func_start sub_080848C8
sub_080848C8: @ 0x080848C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08084980 @ =gPlayerState
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
	ldr r2, _08084988 @ =gPlayerEntity
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
	ldr r0, _08084980 @ =gPlayerState
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
_08084980: .4byte gPlayerState
_08084984: .4byte gUnk_08120574
_08084988: .4byte gPlayerEntity
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
	bl DeleteThisEntity
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
	bl SoundReq
	ldrb r0, [r4, #0xf]
	b _080849F2
_080849EE:
	cmp r1, #0
	beq _080849F6
_080849F2:
	subs r0, #1
	strb r0, [r4, #0xf]
_080849F6:
	ldr r2, _08084A3C @ =gPlayerState
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
	ldr r5, _08084A44 @ =gPlayerEntity
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
_08084A3C: .4byte gPlayerState
_08084A40: .4byte gUnk_03004040
_08084A44: .4byte gPlayerEntity
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
	ldr r0, _08084AF4 @ =gPlayerState
	adds r0, #0xa0
	movs r1, #1
	strb r1, [r0]
	b _08084B16
	.align 2, 0
_08084AF4: .4byte gPlayerState
_08084AF8:
	bl sub_0807A108
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0
	bl CreateFx
	ldr r0, [r4, #0x54]
	bl DeleteEntity
	ldr r0, _08084B18 @ =0x0000018F
	bl SoundReq
	bl DeleteThisEntity
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
	ldr r3, _08084CA4 @ =gPlayerEntity
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
	ldr r5, _08084CA8 @ =gPlayerState
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
_08084CA4: .4byte gPlayerEntity
_08084CA8: .4byte gPlayerState

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
	bl GetTileType
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
