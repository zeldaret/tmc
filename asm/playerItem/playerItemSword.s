	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItemSword
PlayerItemSword: @ 0x080A7544
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A7584 @ =gUnk_0812905C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A7582
	ldr r1, _080A7588 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	ldrb r2, [r1, #1]
	adds r0, r0, r2
	strb r0, [r1, #1]
_080A7582:
	pop {r4, pc}
	.align 2, 0
_080A7584: .4byte gUnk_0812905C
_080A7588: .4byte gPlayerEntity

	thumb_func_start sub_080A758C
sub_080A758C: @ 0x080A758C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A75AC
	ldr r1, _080A7654 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _080A75AC
	ldrb r1, [r1, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A75AC
	bl DeleteThisEntity
_080A75AC:
	adds r0, r5, #0
	bl AllocMutableHitbox
	cmp r0, #0
	bne _080A75BA
	bl DeleteThisEntity
_080A75BA:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldr r1, _080A7658 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	adds r3, #0x3c
	movs r4, #0
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	adds r0, #0x41
	strb r4, [r0]
	subs r0, #4
	strb r4, [r0]
	adds r0, #5
	strb r4, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	adds r0, r5, #0
	bl sub_0801766C
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A76BC
	ldr r2, _080A7654 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A767A
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A765C
	cmp r0, #6
	bne _080A7664
	subs r1, #4
	movs r0, #0x1a
	b _080A766A
	.align 2, 0
_080A7654: .4byte gPlayerState
_080A7658: .4byte gPlayerEntity
_080A765C:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x18
	b _080A766A
_080A7664:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x19
_080A766A:
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080A7824
	b _080A7692
_080A767A:
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080A76CC
_080A7692:
	ldr r0, _080A76B0 @ =gPlayerState
	str r5, [r0, #0x2c]
	adds r0, r5, #0
	bl sub_08079BD8
	ldr r4, _080A76B4 @ =gUnk_0812906C
	ldr r0, _080A76B8 @ =gUnk_08129068
	bl sub_080028F4
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl SoundReq
	b _080A76C2
	.align 2, 0
_080A76B0: .4byte gPlayerState
_080A76B4: .4byte gUnk_0812906C
_080A76B8: .4byte gUnk_08129068
_080A76BC:
	adds r0, r5, #0
	bl sub_080A76CC
_080A76C2:
	movs r0, #0x87
	lsls r0, r0, #1
	bl SoundReq
	pop {r4, r5, pc}

	thumb_func_start sub_080A76CC
sub_080A76CC: @ 0x080A76CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A76D8
	b _080A77DC
_080A76D8:
	ldr r5, _080A771C @ =gPlayerState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A76E4
	bl DeleteThisEntity
_080A76E4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080A76F2
	str r0, [r5, #0x2c]
	strb r0, [r5, #0x1b]
	bl DeleteThisEntity
_080A76F2:
	ldrb r2, [r5, #0x1b]
	cmp r2, #0
	beq _080A7744
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080A7728
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A7720
	cmp r0, #6
	bne _080A7724
	movs r0, #0xa
	b _080A7726
	.align 2, 0
_080A771C: .4byte gPlayerState
_080A7720:
	movs r0, #8
	b _080A7726
_080A7724:
	movs r0, #9
_080A7726:
	strb r0, [r1]
_080A7728:
	ldr r0, _080A7740 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r0, #0x8b
	lsls r0, r0, #1
	bl SoundReq
	b _080A77C4
	.align 2, 0
_080A7740: .4byte gPlayerEntity
_080A7744:
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A776A
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A7762
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xc
	b _080A7768
_080A7762:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xb
_080A7768:
	strb r0, [r1]
_080A776A:
	ldr r0, _080A77D0 @ =gPlayerState
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #3
	ands r2, r0
	cmp r2, #0
	beq _080A77C4
	ldr r0, _080A77D4 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r1, #0x12
	cmp r2, #1
	bne _080A778E
	movs r1, #0x14
_080A778E:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080A77C4
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #1
	ldr r0, _080A77D8 @ =gUnk_081292E2
	adds r1, r1, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r3, [r4, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A77BE
	rsbs r1, r1, #0
_080A77BE:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_080A77C4:
	ldr r1, _080A77D4 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_080A78B8
	b _080A7806
	.align 2, 0
_080A77D0: .4byte gPlayerState
_080A77D4: .4byte gPlayerEntity
_080A77D8: .4byte gUnk_081292E2
_080A77DC:
	ldr r1, _080A7810 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080A7814
	ldr r0, [r1, #0x2c]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A7814
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080A7A54
_080A7806:
	adds r0, r4, #0
	bl sub_080A7A84
	b _080A7820
	.align 2, 0
_080A7810: .4byte gPlayerState
_080A7814:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080A7820:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7824
sub_080A7824: @ 0x080A7824
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A7860 @ =gPlayerState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A7834
	bl DeleteThisEntity
_080A7834:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _080A78AE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A7846
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A7846:
	ldr r2, _080A7864 @ =gPlayerEntity
	adds r6, r2, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7868
	movs r0, #0
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
	b _080A78B4
	.align 2, 0
_080A7860: .4byte gPlayerState
_080A7864: .4byte gPlayerEntity
_080A7868:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A78B8
	ldrb r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A7880
	movs r0, #0x77
	bl SoundReq
_080A7880:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x8a
	bls _080A788A
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A788A:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A78A4
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_080A7B98
	b _080A78B4
_080A78A4:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _080A78B4
_080A78AE:
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A78B4:
	pop {r4, r5, r6, pc}
	.align 2, 0


	thumb_func_start sub_080A78B8
sub_080A78B8: @ 0x080A78B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080A78E8 @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A78FC
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	strb r0, [r4, #0x1e]
	ldr r0, _080A78EC @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A78F0
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0xb1
	b _080A78F2
	.align 2, 0
_080A78E8: .4byte gPlayerState
_080A78EC: .4byte gScreenTransition
_080A78F0:
	ldrb r1, [r4, #0x1e]
_080A78F2:
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A7912
_080A78FC:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _080A7912
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A7912:
	ldr r2, _080A792C @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080A7930
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080A7958
	.align 2, 0
_080A792C: .4byte gPlayerState
_080A7930:
	ldrb r1, [r6, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7946
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _080A794C
_080A7946:
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_080A794C:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_080A7958:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov r8, r2
	adds r5, r4, #0
	adds r5, #0x3d
	cmp r0, #0
	beq _080A7A1C
	adds r3, r6, #0
	adds r3, #0x3d
	ldrb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7980
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A79AE
_080A7980:
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r0, [r5]
	adds r3, r6, #0
	adds r3, #0x3e
	strb r0, [r3]
	movs r3, #0x42
	adds r3, r3, r4
	mov ip, r3
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x42
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	strb r1, [r5]
	strb r1, [r2]
	adds r5, r2, #0
_080A79AE:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A79C4
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A79C4:
	ldrb r0, [r7, #0x1b]
	cmp r0, #0
	beq _080A7A1C
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x43
	beq _080A79E6
	cmp r1, #0x43
	bgt _080A79E0
	cmp r1, #0xd
	beq _080A79E6
	b _080A7A08
_080A79E0:
	cmp r1, #0x44
	bne _080A7A08
	b _080A7A1C
_080A79E6:
	ldrb r1, [r7, #0x1b]
	movs r0, #8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r7, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A7A1C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A7A08:
	ldrb r0, [r7, #0x1b]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _080A7A1C
	strb r1, [r7, #0x1b]
	strb r1, [r7, #4]
	str r1, [r7, #0x2c]
	bl DeleteThisEntity
_080A7A1C:
	adds r1, r5, #0
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _080A7A36
	cmp r2, #0
	ble _080A7A32
	subs r0, #1
	strb r0, [r1]
	b _080A7A36
_080A7A32:
	adds r0, #1
	strb r0, [r5]
_080A7A36:
	adds r0, r4, #0
	bl sub_080A7A54
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7A4C
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A7A4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0


	thumb_func_start sub_080A7A54
sub_080A7A54: @ 0x080A7A54
	ldr r1, _080A7A7C @ =gPlayerEntity
	ldrb r1, [r1, #0x1e]
	subs r1, #0x6a
	lsls r1, r1, #2
	ldr r2, _080A7A80 @ =gUnk_08129096
	adds r1, r1, r2
	ldr r3, [r0, #0x48]
	ldrb r2, [r1]
	strb r2, [r3]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #1]
	strb r2, [r3, #1]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #2]
	strb r2, [r3, #6]
	ldr r2, [r0, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_080A7A7C: .4byte gPlayerEntity
_080A7A80: .4byte gUnk_08129096


	thumb_func_start sub_080A7A84
sub_080A7A84: @ 0x080A7A84
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080A7AE0 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A7B8C
	ldr r2, _080A7AE4 @ =gUnk_08129072
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r2, _080A7AE8 @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080A7AC4
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7AC4
	rsbs r3, r3, #0
_080A7AC4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A7AEC
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r3
	movs r1, #0x32
	ldrsh r3, [r4, r1]
	adds r3, r3, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08008796
	b _080A7B8C
	.align 2, 0
_080A7AE0: .4byte gPlayerEntity
_080A7AE4: .4byte gUnk_08129072
_080A7AE8: .4byte gPlayerState
_080A7AEC:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080A7B8C
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r6, r3, #0
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_08008796
	cmp r0, #0
	bne _080A7B8C
	ldrb r2, [r7, #0x1b]
	cmp r2, #0
	beq _080A7B8C
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _080A7B8C
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080002B4
	cmp r0, #0x2e
	bne _080A7B4C
	ldr r0, _080A7B44 @ =gPlayerEntity
	ldr r1, _080A7B48 @ =0x00000119
	bl sub_0800449C
	b _080A7B54
	.align 2, 0
_080A7B44: .4byte gPlayerEntity
_080A7B48: .4byte 0x00000119
_080A7B4C:
	ldr r0, _080A7B90 @ =gPlayerEntity
	movs r1, #0x74
	bl sub_0800449C
_080A7B54:
	movs r0, #0xf
	movs r1, #0x1a
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7B8C
	ldr r1, _080A7B94 @ =gUnk_0812908E
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x34]
	str r0, [r2, #0x34]
_080A7B8C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7B90: .4byte gPlayerEntity
_080A7B94: .4byte gUnk_0812908E


	thumb_func_start sub_080A7B98
sub_080A7B98: @ 0x080A7B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _080A7BFC @ =gPlayerState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r0, #0
_080A7BBE:
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #0
	movs r1, #0x10
	adds r1, r1, r7
	mov sb, r1
	adds r0, #1
	mov r8, r0
_080A7BCE:
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r2, r2, r5
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r3, r3, r7
	adds r0, r6, #0
	mov r1, sl
	bl sub_08008796
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _080A7BCE
	mov r7, sb
	mov r0, r8
	cmp r0, #2
	bls _080A7BBE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7BFC: .4byte gPlayerState
