	thumb_func_start PlayerItemC
PlayerItemC: @ 0x0801B898
	push {lr}
	ldr r2, _0801B8AC @ =gUnk_080B7840
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B8AC: .4byte gUnk_080B7840

	thumb_func_start sub_0801B8B0
sub_0801B8B0: @ 0x0801B8B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B8F0 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0801B8F4
	str r4, [r1, #0x2c]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B8FC
	b _0801B8F8
	.align 2, 0
_0801B8F0: .4byte gPlayerState
_0801B8F4:
	bl DeleteThisEntity
_0801B8F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801B8FC
sub_0801B8FC: @ 0x0801B8FC
	push {lr}
	ldr r1, _0801B90C @ =gPlayerState
	ldr r2, [r1, #0x2c]
	cmp r2, r0
	beq _0801B910
	bl DeleteThisEntity
	b _0801B934
	.align 2, 0
_0801B90C: .4byte gPlayerState
_0801B910:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801B91E
	str r0, [r1, #0x2c]
	bl DeleteThisEntity
	b _0801B934
_0801B91E:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0801B938
_0801B934:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B938
sub_0801B938: @ 0x0801B938
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B960
	ldr r3, _0801B95C @ =gPlayerEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	b _0801B96E
	.align 2, 0
_0801B95C: .4byte gPlayerEntity
_0801B960:
	ldr r3, _0801B998 @ =gPlayerEntity
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
_0801B96E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r0, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0801B99C
	ldrb r0, [r3, #0x1e]
	adds r0, #0x2e
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _0801B9A0
	.align 2, 0
_0801B998: .4byte gPlayerEntity
_0801B99C:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_0801B9A0:
	ldrb r3, [r4, #0x14]
	lsrs r3, r3, #1
	lsls r0, r3, #3
	ldr r1, _0801B9E0 @ =gUnk_080B7850
	adds r0, r0, r1
	str r0, [r4, #0x48]
	lsls r3, r3, #1
	ldr r0, _0801B9E4 @ =gUnk_080B7848
	adds r3, r3, r0
	ldr r0, _0801B9E8 @ =gPlayerState
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r4, #0
	bl sub_08008782
	ldr r1, _0801B9EC @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, pc}
	.align 2, 0
_0801B9E0: .4byte gUnk_080B7850
_0801B9E4: .4byte gUnk_080B7848
_0801B9E8: .4byte gPlayerState
_0801B9EC: .4byte gPlayerEntity

	thumb_func_start sub_0801B9F0
sub_0801B9F0: @ 0x0801B9F0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bl sub_08017744
	pop {pc}
