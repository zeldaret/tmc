	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08017874
sub_08017874: @ 0x08017874
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _080178C6
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r1, [r0]
	ldr r0, _08017898 @ =gSave
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x2f
	beq _0801789C
	cmp r0, #0x30
	beq _080178A8
	b _080178AE
	.align 2, 0
_08017898: .4byte gSave
_0801789C:
	adds r0, r1, #0
	cmp r1, #0
	bge _080178A4
	adds r0, r1, #3
_080178A4:
	asrs r1, r0, #2
	b _080178AE
_080178A8:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
_080178AE:
	cmp r1, #0
	bgt _080178B4
	movs r1, #1
_080178B4:
	rsbs r0, r1, #0
	bl ModHealth
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	b _08017928
_080178C6:
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r1, [r0]
	ldrb r0, [r2, #8]
	cmp r0, #8
	bne _080178F6
	ldr r0, _080178E4 @ =gSave
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _080178E8
	cmp r0, #0x31
	beq _080178F4
	b _080178F6
	.align 2, 0
_080178E4: .4byte gSave
_080178E8:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _080178F6
_080178F4:
	lsls r1, r1, #1
_080178F6:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	subs r5, r0, r1
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _08017928
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08017920
	ldr r1, _0801791C @ =0x00000127
	adds r0, r4, #0
	bl sub_0800449C
	b _08017928
	.align 2, 0
_0801791C: .4byte 0x00000127
_08017920:
	adds r0, r4, #0
	movs r1, #0xfe
	bl sub_0800449C
_08017928:
	cmp r5, #0
	ble _08017930
	adds r0, r5, #0
	b _0801793A
_08017930:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0
_0801793A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017940
sub_08017940: @ 0x08017940
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x2c
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080179CC
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x32]
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x36]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_080179CC:
	movs r1, #0
	ldr r0, _080179E8 @ =gPlayerEntity
	cmp r5, r0
	beq _080179DA
	cmp r4, r0
	bne _080179E0
	adds r0, r4, #0
_080179DA:
	adds r0, #0x42
	ldrb r0, [r0]
	lsrs r1, r0, #3
_080179E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179E8: .4byte gPlayerEntity

	thumb_func_start sub_080179EC
sub_080179EC: @ 0x080179EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, _08017A8C @ =gUnk_080B3740
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08017A84
	ldr r0, [r5, #0x48]
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x48]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x48]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	str r5, [r4, #0x54]
_08017A84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017A8C: .4byte gUnk_080B3740

	thumb_func_start sub_08017A90
sub_08017A90: @ 0x08017A90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x99
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	bne _08017AAA
	movs r0, #0
	b _08017AD0
_08017AAA:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x14]
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r5, #0x2e]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r5, #0x32]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x63
	strb r0, [r1]
	str r5, [r2, #0x50]
	adds r0, r2, #0
_08017AD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017AD8
sub_08017AD8: @ 0x08017AD8
	movs r0, #0
	bx lr

	thumb_func_start sub_08017ADC
sub_08017ADC: @ 0x08017ADC
	push {r4, lr}
	adds r4, r1, #0
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r4, #0x10]
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #0x80
	adds r2, r4, #0
	adds r2, #0x41
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	subs r0, #0x5f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08017B14
	adds r0, r4, #0
	bl sub_08081420
	cmp r0, #0
	beq _08017B14
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_08017B14:
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08017B1C
sub_08017B1C: @ 0x08017B1C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08017B38 @ =gPlayerState
	ldrb r1, [r0, #0x1e]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08017B3C
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	b _08017B52
	.align 2, 0
_08017B38: .4byte gPlayerState
_08017B3C:
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #0x10
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xec
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
_08017B52:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08017B58
sub_08017B58: @ 0x08017B58
	push {lr}
	adds r2, r1, #0
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08017B98
	ldrb r1, [r2, #0x1d]
	cmp r1, #0
	beq _08017BA2
	ldr r0, _08017B94 @ =gPlayerState
	ldrb r0, [r0, #0x1d]
	subs r0, r1, r0
	movs r1, #0
	strb r0, [r2, #0x1d]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08017BA2
	strb r1, [r2, #0x1d]
	movs r0, #2
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	b _08017BA2
	.align 2, 0
_08017B94: .4byte gPlayerState
_08017B98:
	strb r0, [r2, #0xd]
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_08017BA2:
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017BB4
	movs r0, #0xff
	strb r0, [r1]
_08017BB4:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017BBC
sub_08017BBC: @ 0x08017BBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _08017C38 @ =gPlayerState
	ldr r0, [r5, #0x30]
	ldr r1, _08017C3C @ =0x00001481
	ands r0, r1
	cmp r0, #0
	bne _08017BF2
	movs r0, #0x42
	movs r1, #1
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _08017BF2
	str r4, [r0, #0x54]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x30]
	movs r0, #0x10
	eors r0, r7
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
_08017BF2:
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	subs r1, #3
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x1e
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017C2E
	movs r0, #0xff
	strb r0, [r1]
_08017C2E:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017C38: .4byte gPlayerState
_08017C3C: .4byte 0x00001481

	thumb_func_start sub_08017C40
sub_08017C40: @ 0x08017C40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08017CB4 @ =gPlayerState
	ldr r0, [r6, #0x30]
	ldr r1, _08017CB8 @ =0x00001881
	ands r0, r1
	cmp r0, #0
	bne _08017C82
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08017C82
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08017C62
	cmp r0, #0x18
	bne _08017C82
_08017C62:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r6, #0x30]
	movs r0, #0xd
	strb r0, [r6, #0xc]
_08017C82:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017CAA
	movs r0, #0xff
	strb r0, [r1]
_08017CAA:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017CB4: .4byte gPlayerState
_08017CB8: .4byte 0x00001881

	thumb_func_start sub_08017CBC
sub_08017CBC: @ 0x08017CBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #0x10
	eors r2, r5
	adds r0, r2, #0
	subs r0, #0xc
	movs r2, #0x1f
	ands r0, r2
	ldrb r1, [r3, #0x15]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x18
	bhi _08017CF0
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08017940
	b _08017D1E
_08017CF0:
	adds r1, r3, #0
	adds r1, #0x42
	movs r0, #0xc
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r5, [r0]
	adds r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017D1E
	movs r0, #0xff
	strb r0, [r1]
_08017D1E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017D28
sub_08017D28: @ 0x08017D28
	push {lr}
	adds r3, r0, #0
	ldr r2, _08017D68 @ =gPlayerState
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r2, r3, #0
	adds r2, #0x7a
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	subs r2, #0x38
	movs r0, #0xc
	strb r0, [r2]
	subs r2, #5
	movs r0, #0x10
	strb r0, [r2]
	adds r2, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017D60
	movs r0, #0xff
	strb r0, [r1]
_08017D60:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08017D68: .4byte gPlayerState

	thumb_func_start sub_08017D6C
sub_08017D6C: @ 0x08017D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x10
	eors r0, r6
	subs r0, #5
	movs r2, #0x1f
	ands r0, r2
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #3
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0xa
	bls _08017D98
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _08017D94 @ =0x00000AC2
	b _08017DB0
	.align 2, 0
_08017D94: .4byte 0x00000AC2
_08017D98:
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0xcb
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x79
	strb r0, [r2]
	ldrb r0, [r1]
	ldr r1, _08017DCC @ =0x00000AE4
_08017DB0:
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08017DD0 @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08018308
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017DCC: .4byte 0x00000AE4
_08017DD0: .4byte gUnk_080B7B74

	thumb_func_start sub_08017DD4
sub_08017DD4: @ 0x08017DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r1, r8
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08017DFC
	movs r0, #0x7f
	ands r0, r2
	b _08017DFE
_08017DFC:
	movs r0, #4
_08017DFE:
	strb r0, [r1]
	ldr r4, _08017E34 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x3d
	movs r0, #0xf4
	strb r0, [r2]
	ldr r0, _08017E38 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08017E3C
	bl sub_08079D84
	mov r1, r8
	adds r1, #0x3d
	movs r0, #0x5a
	strb r0, [r1]
	b _08017E6E
	.align 2, 0
_08017E34: .4byte gPlayerEntity
_08017E38: .4byte gPlayerState
_08017E3C:
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	movs r1, #0x80
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x41
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xc
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #0x10
	movs r0, #0x10
	strb r0, [r2]
	eors r7, r1
	adds r0, r4, #0
	adds r0, #0x3e
	strb r7, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
_08017E6E:
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08017E7C
	movs r0, #0xff
	strb r0, [r6]
_08017E7C:
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017E88
sub_08017E88: @ 0x08017E88
	push {lr}
	adds r3, r0, #0
	adds r3, #0x42
	movs r2, #2
	strb r2, [r3]
	adds r0, #0x46
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r0]
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017EAA
	movs r0, #0xff
	strb r0, [r1]
_08017EAA:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08017EB0
sub_08017EB0: @ 0x08017EB0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r1, #0
	adds r5, r7, #0
	adds r5, #0x44
	ldrb r0, [r5]
	cmp r0, #0
	bne _08017EC4
	movs r0, #0
	b _08017F36
_08017EC4:
	ldr r6, _08017EF8 @ =gPlayerEntity
	cmp r2, r6
	bne _08017EFC
	ldrb r4, [r5]
	movs r0, #8
	strb r0, [r5]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08017874
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
	strb r4, [r5]
	subs r1, #3
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	b _08017F22
	.align 2, 0
_08017EF8: .4byte gPlayerEntity
_08017EFC:
	ldrh r1, [r2, #8]
	movs r0, #0xa1
	lsls r0, r0, #3
	cmp r1, r0
	bne _08017F22
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #8
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xfa
	strb r0, [r1]
	adds r1, #9
	adds r0, #0x86
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0x80
	strb r0, [r1]
_08017F22:
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017F34
	movs r0, #0xff
	strb r0, [r1]
_08017F34:
	movs r0, #1
_08017F36:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017F3C
sub_08017F3C: @ 0x08017F3C
	movs r0, #1
	bx lr

	thumb_func_start sub_08017F40
sub_08017F40: @ 0x08017F40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r6, [r0]
	cmp r6, #0
	bne _0801800A
	ldr r0, _08017FAC @ =gPlayerEntity
	cmp r4, r0
	bne _08018002
	bl sub_08079F8C
	cmp r0, #0
	beq _0801801E
	ldr r2, _08017FB0 @ =gPlayerState
	ldr r3, [r2, #0x30]
.ifdef EU
	movs r0, #0x81
.else
	movs r0, #0x80
.endif
	ands r0, r3
	cmp r0, #0
	bne _0801801E
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801801E
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0x10
	orrs r3, r0
	str r3, [r2, #0x30]
	strb r6, [r2, #2]
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _08017FB4
	ldrb r0, [r5, #9]
	cmp r0, #0x4e
	beq _08017F9A
	cmp r0, #0x50
	bne _08017FB4
_08017F9A:
	strh r6, [r4, #0x36]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	b _08017FC2
	.align 2, 0
_08017FAC: .4byte gPlayerEntity
_08017FB0: .4byte gPlayerState
_08017FB4:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
_08017FC2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	bl ResetPlayer
	movs r0, #1
	b _08018020
_08018002:
	adds r0, r4, #0
	adds r0, #0x45
	strb r6, [r0]
	b _0801801E
_0801800A:
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _0801801E
	ldr r0, _08018028 @ =gPlayerEntity
	cmp r4, r0
	bne _0801801E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004484
_0801801E:
	movs r0, #0
_08018020:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08018028: .4byte gPlayerEntity

	thumb_func_start sub_0801802C
sub_0801802C: @ 0x0801802C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08018058
	bl sub_08079F8C
	cmp r0, #0
	beq _08018090
	movs r0, #0x10
	eors r0, r6
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	subs r0, r0, r1
	adds r0, #5
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xa
	bhi _08018090
	b _0801807A
_08018058:
	cmp r0, #8
	bne _08018086
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r1, r0
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r1, #5
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xa
	bgt _08018090
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0801807A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080180BC
	movs r0, #1
	b _080180AE
_08018086:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080180AE
_08018090:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _080180B4 @ =0x000011AA
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080180B8 @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08018308
_080180AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080180B4: .4byte 0x000011AA
_080180B8: .4byte gUnk_080B7B74

	thumb_func_start sub_080180BC
sub_080180BC: @ 0x080180BC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x3d
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080180CE
	movs r0, #0xe2
	strb r0, [r2]
_080180CE:
	adds r2, r1, #0
	adds r2, #0x3d
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080180E0
	movs r0, #0xff
	strb r0, [r2]
_080180E0:
	movs r0, #0xff
	strb r0, [r1, #0xd]
	pop {r0}
	bx r0

	thumb_func_start sub_080180E8
sub_080180E8: @ 0x080180E8
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0x10
	eors r0, r2
	adds r2, r0, #0
	subs r2, #0xc
	movs r1, #0x1f
	ands r2, r1
	ldrb r0, [r4, #0x15]
	subs r0, r0, r2
	ands r0, r1
	cmp r0, #0x18
	bls _0801812C
	mov r0, ip
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _08018124 @ =0x00000352
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08018128 @ =gUnk_080B7B74
	adds r3, r3, r0
	mov r0, ip
	adds r1, r4, #0
	bl sub_08018308
	b _08018162
	.align 2, 0
_08018124: .4byte 0x00000352
_08018128: .4byte gUnk_080B7B74
_0801812C:
	mov r0, ip
	adds r0, #0x42
	movs r2, #0xc
	strb r2, [r0]
	subs r0, #5
	movs r1, #0xf0
	strb r1, [r0]
	mov r3, ip
	adds r3, #0x46
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	subs r0, #5
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, ip
	adds r1, r4, #0
	bl sub_08017940
	movs r0, #1
_08018162:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018168
sub_08018168: @ 0x08018168
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r5, [r0]
	cmp r5, #0
	bne _08018208
	ldr r0, _080181F4 @ =gPlayerEntity
	cmp r4, r0
	bne _08018200
	bl sub_08079F8C
	cmp r0, #0
	beq _0801821C
	ldr r2, _080181F8 @ =gPlayerState
	ldr r3, [r2, #0x30]
.ifdef EU
	movs r0, #0x81
.else
	ldr r0, _080181FC @ =0x00040080
.endif
	ands r0, r3
	cmp r0, #0
	bne _0801821C
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801821C
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r3, r0
	str r3, [r2, #0x30]
	strb r5, [r2, #2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r6, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r6, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	bl sub_08077B20
	movs r0, #1
	b _0801821E
	.align 2, 0
_080181F4: .4byte gPlayerEntity
_080181F8: .4byte gPlayerState
.ifndef EU
_080181FC: .4byte 0x00040080
.endif
_08018200:
	adds r0, r4, #0
	adds r0, #0x45
	strb r5, [r0]
	b _0801821C
_08018208:
	ldrb r0, [r6, #8]
	cmp r0, #3
	bne _0801821C
	ldr r0, _08018224 @ =gPlayerEntity
	cmp r4, r0
	bne _0801821C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08004484
_0801821C:
	movs r0, #0
_0801821E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08018224: .4byte gPlayerEntity

	thumb_func_start sub_08018228
sub_08018228: @ 0x08018228
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0801824C @ =gPlayerEntity
	cmp r4, r0
	bne _08018244
	bl sub_08079F8C
	cmp r0, #0
	beq _08018244
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004484
_08018244:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801824C: .4byte gPlayerEntity

	thumb_func_start sub_08018250
sub_08018250: @ 0x08018250
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3d
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _08018278
	adds r2, r1, #0
	adds r2, #0x3d
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_08017A90
	b _08018280
_08018278:
	adds r1, #0x3d
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_08018280:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018288
sub_08018288: @ 0x08018288
	push {lr}
	adds r1, r0, #0
	ldr r0, _08018298 @ =gPlayerEntity
	cmp r1, r0
	bne _0801829C
	bl sub_0807AFE8
	b _080182A2
	.align 2, 0
_08018298: .4byte gPlayerEntity
_0801829C:
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_080182A2:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_080182A8
sub_080182A8: @ 0x080182A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080182DA
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080182C8
	movs r0, #0xff
	strb r0, [r2]
_080182C8:
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08018300
	movs r0, #0xff
	strb r0, [r1]
	b _08018300
_080182DA:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r3, _080182F8 @ =0x0000092A
	adds r0, r0, r3
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080182FC @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r4, #0
	bl sub_08018308
	b _08018302
	.align 2, 0
_080182F8: .4byte 0x0000092A
_080182FC: .4byte gUnk_080B7B74
_08018300:
	movs r0, #1
_08018302:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018308
sub_08018308: @ 0x08018308
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018338
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _08018338
	ldr r0, _0801835C @ =gPlayerEntity
	cmp r6, r0
	bne _08018338
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004484
	movs r3, #1
_08018338:
	ldrh r1, [r6, #8]
	movs r0, #0xa1
	lsls r0, r0, #3
	cmp r1, r0
	bne _08018360
	ldr r0, _0801835C @ =gPlayerEntity
	ldrb r2, [r0, #0x14]
	mov r0, r8
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	movs r1, #4
	eors r0, r1
	cmp r2, r0
	bne _08018360
	movs r0, #0
	b _080184F0
	.align 2, 0
_0801835C: .4byte gPlayerEntity
_08018360:
	cmp r3, #0
	bne _08018408
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r5, #1]
	adds r2, r6, #0
	adds r2, #0x3d
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08018382
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2]
_08018382:
	ldrb r0, [r5, #2]
	adds r1, r6, #0
	adds r1, #0x42
	strb r0, [r1]
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	adds r0, #0x44
	strb r1, [r0]
	movs r7, #0xff
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _080183A8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017874
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
_080183A8:
	adds r1, r6, #0
	adds r1, #0x43
	ldrb r0, [r5, #4]
	ldrb r2, [r1]
	cmp r0, r2
	bls _080183B6
	strb r0, [r1]
_080183B6:
	ldrb r0, [r5, #5]
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r5, #6]
	adds r2, r4, #0
	adds r2, #0x3d
	strb r1, [r2]
	movs r0, #6
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080183D6
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2]
_080183D6:
	ldrb r0, [r5, #7]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldrb r1, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	ands r7, r1
	cmp r7, #0
	beq _080183FA
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080183FA:
	adds r1, r4, #0
	adds r1, #0x43
	ldrb r0, [r5, #9]
	ldrb r2, [r1]
	cmp r0, r2
	bls _08018408
	strb r0, [r1]
_08018408:
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801841A
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017940
_0801841A:
	ldrb r2, [r5, #0xa]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801842C
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #0xca
	strb r0, [r1]
_0801842C:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801847E
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0801847E
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0xcc
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3e
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08018470
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	strb r0, [r1]
_08018470:
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x46
	strh r0, [r1]
	str r6, [r2, #0x4c]
_0801847E:
	ldrb r1, [r6, #8]
	cmp r1, #8
	bne _080184DA
	ldrb r0, [r6, #9]
	cmp r0, #1
	bne _0801849A
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _080184DA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080179EC
	b _080184DA
_0801849A:
	cmp r0, #4
	bne _080184BA
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _080184B0
	ldrb r0, [r5, #0xa]
	ands r1, r0
	cmp r1, #0
	beq _080184DA
_080184B0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017A90
	b _080184DA
_080184BA:
	cmp r0, #3
	bne _080184CE
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _080184DA
	adds r0, r4, #0
	movs r1, #0xfe
	bl sub_0800449C
	b _080184DA
_080184CE:
	cmp r0, #5
	bne _080184DA
	ldr r0, _080184FC @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0x80
	strb r1, [r0]
_080184DA:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _080184EE
	ldrb r0, [r6, #9]
	cmp r0, #5
	bne _080184EE
	ldr r0, _080184FC @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0x80
	strb r1, [r0]
_080184EE:
	movs r0, #1
_080184F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080184FC: .4byte gPlayerEntity
