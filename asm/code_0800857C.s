	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0800857C
sub_0800857C: @ 0x0800857C
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #8
	bhs _0800859C
	ldr r1, _08008888 @ =gUnk_03003F80
	ldrb r1, [r1, #2]
	movs r2, #0x80
	ands r1, r2
	bne _0800859C
	bl sub_080085CC
_0800859C:
	ldrh r1, [r0, #0x24]
	ldrb r2, [r0, #0x15]
	bl sub_080027EA
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080085B0
sub_080085B0: @ 0x080085B0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	bl sub_080085CC
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start sub_080085CC
sub_080085CC: @ 0x080085CC
	push {lr}
	ldr r2, _0800888C @ =gUnk_03003F80
	ldr r1, _08008890 @ =gUnk_080083FC
	movs r3, #0x26
	ldrb r3, [r2, r3]
	orrs r3, r3
	beq _080085E6
	ldr r2, [r2, #0x30]
	movs r3, #0x80
	ands r2, r3
	beq _0800861A
	ldr r1, _08008894 @ =gUnk_0800839C
	b _0800861A
_080085E6:
	ldr r1, _08008898 @ =gUnk_0800845C
	ldrb r3, [r2, #2]
	orrs r3, r3
	bne _0800861A
	ldr r2, [r2, #0x30]
	ldr r3, _0800889C @ =0x01000000
	tst r2, r3
	bne _0800861A
	movs r3, #0x80
	ldr r1, _080088A0 @ =gUnk_0800833C
	ands r2, r3
	bne _0800861A
	ldr r1, _080088A4 @ =gUnk_080084BC
	ldr r3, _080088A8 @ =gUnk_03003F80
	ldrb r2, [r3, #0x1c]
	orrs r2, r2
	bne _0800861A
	ldrb r2, [r3, #5]
	orrs r2, r2
	bne _0800861A
	ldr r1, _080088AC @ =gUnk_0800851C
	movs r2, #0xaa
	ldrb r2, [r3, r2]
	orrs r2, r2
	bne _0800861A
	ldr r1, _080088B0 @ =gUnk_080082DC
_0800861A:
	mov fp, r1
	movs r7, #0
	mov r8, r0
	movs r2, #0x2e
	ldrh r3, [r0, r2]
	movs r2, #0x32
	ldrh r4, [r0, r2]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _080088B4 @ =gUnk_03000BF6
	ldrh r1, [r1]
	subs r3, r3, r1
	ldr r1, _080088B8 @ =gUnk_03000BF8
	ldrh r1, [r1]
	subs r4, r4, r1
	eors r2, r2
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	ldrb r2, [r5, #2]
	adds r0, r0, r2
	ldrb r4, [r5, #3]
	movs r6, #2
	mov sl, r1
_08008650:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r1, r1, r4
	bl sub_080086D8
	orrs r7, r2
	lsls r7, r7, #1
	mov r1, sl
	subs r1, r1, r4
	bl sub_080086D8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _08008678
	mov r1, sl
	ldrb r3, [r5, #2]
	subs r0, r0, r3
	subs r0, r0, r3
	b _08008650
_08008678:
	pop {r0, r1}
	ldrb r2, [r5, #5]
	adds r1, r1, r2
	ldrb r4, [r5, #4]
	movs r6, #2
	mov sb, r0
_08008684:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r0, r0, r4
	bl sub_080086D8
	orrs r7, r2
	lsls r7, r7, #1
	mov r0, sb
	subs r0, r0, r4
	bl sub_080086D8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _080086AC
	mov r0, sb
	ldrb r3, [r5, #5]
	subs r1, r1, r3
	subs r1, r1, r3
	b _08008684
_080086AC:
	mov r0, r8
	movs r2, #0x2a
	strh r7, [r0, r2]
	pop {pc}

	thumb_func_start sub_080086B4
sub_080086B4: @ 0x080086B4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	mov fp, r2
	ldr r2, _080088BC @ =gLinkEntity
	mov r8, r2
	bl sub_080086D8
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	adds r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start sub_080086D8
sub_080086D8: @ 0x080086D8
	push {r0, r1, lr}
	ldr r2, _080088C0 @ =0x000003F0
	ands r0, r2
	ands r1, r2
	lsrs r0, r0, #4
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	movs r3, #0x38
	ldrb r3, [r2, r3]
	lsls r3, r3, #2
	ldr r1, _080088C4 @ =gUnk_08000248
	ldr r1, [r1, r3]
	ldrb r2, [r0, r1]
	push {r2}
	mov r0, r8
	ldr r1, _080088C8 @ =gUnk_03003F80
	movs r2, #0x26
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _08008716
	movs r2, #0x12
	ldrb r2, [r1, r2]
	cmp r2, #0x18
	beq _08008716
	pop {r2}
	pop {r0, r1}
	cmp r2, #0x10
	bhs _0800872E
	movs r2, #0xf
	b _0800871E
_08008716:
	pop {r2}
	pop {r0, r1}
	cmp r2, #0x10
	bhs _0800872E
_0800871E:
	movs r3, #8
	tst r1, r3
	bne _08008726
	lsrs r2, r2, #2
_08008726:
	tst r0, r3
	bne _08008754
	lsrs r2, r2, #1
	b _08008754
_0800872E:
	cmp r2, #0xff
	beq _08008754
	push {r4}
	subs r2, #0x10
	mov r3, fp
	ldrb r2, [r2, r3]
	lsls r2, r2, #2
	ldr r3, _080088CC @ =gUnk_0800823C
	ldr r3, [r3, r2]
	movs r4, #0xf
	ands r4, r1
	lsls r4, r4, #1
	ldrh r2, [r3, r4]
	movs r3, #0xf
	adds r4, r3, #0
	ands r3, r0
	eors r4, r3
	lsrs r2, r4
	pop {r4}
_08008754:
	movs r3, #1
	ands r2, r3
	pop {pc}

	non_word_aligned_thumb_func_start sub_0800875A
sub_0800875A: @ 0x0800875A
	push {r2, r4, lr}
	ldrb r3, [r0, #0x14]
	movs r2, #6
	ands r3, r2
	ldr r4, _080088D0 @ =gUnk_08007DF4
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08008782
	pop {r2, r4}
	cmp r0, #0
	beq _08008780
	ldrb r1, [r0, #2]
	strb r1, [r2, #3]
	ldrb r1, [r0, #3]
	strb r1, [r2, #7]
	ldrb r1, [r0, #5]
	strb r1, [r2, #8]
_08008780:
	pop {pc}

	non_word_aligned_thumb_func_start sub_08008782
sub_08008782: @ 0x08008782
	push {r4}
	ldrh r4, [r0, #0x2e]
	adds r2, r2, r4
	ldrh r4, [r0, #0x32]
	adds r3, r3, r4
	pop {r4}
	b sub_08008796

	thumb_func_start sub_08008790
sub_08008790: @ 0x08008790
	ldrh r2, [r0, #0x2e]
	ldrh r3, [r0, #0x32]
	b sub_08008796

	non_word_aligned_thumb_func_start sub_08008796
sub_08008796: @ 0x08008796
	push {r4, r5, r6, r7, lr}
	push {r2, r3}
	ldr r2, _080088D4 @ =gRoomControls
	ldrh r3, [r2]
	movs r2, #1
	cmp r2, r3
	pop {r2, r3}
	beq _080087CE
	push {r0, r1, r2, r3}
	pop {r4, r5, r6, r7}
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x38
	ldrb r2, [r4, r2]
	bl sub_080002A4
	ldr r1, _080088D8 @ =gUnk_080046A4
	bl sub_08007DE0
	beq _080087CE
	lsls r1, r3, #3
	adds r3, r5, #0
	ldr r0, _080088DC @ =gUnk_080047F6
	adds r5, r0, r1
	ldrh r0, [r5]
	lsrs r0, r3
	lsrs r0, r0, #1
	bhs _080087D2
_080087CE:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_080087D2:
	ldrb r0, [r5, #2]
	ldrb r1, [r5, #3]
	cmp r0, #0xff
	beq _0800883A
	cmp r3, #6
	beq _0800883A
	cmp r3, #0xe
	beq _0800883A
	cmp r3, #0xa
	beq _0800883A
	cmp r3, #0xb
	beq _0800883A
	cmp r3, #0xd
	bne _080087F6
	cmp r0, #0xf
	bne _0800883A
	cmp r1, #0x17
	bne _0800883A
_080087F6:
	movs r2, #0
	cmp r0, #0xf
	bne _080087FE
	movs r2, #0x80
_080087FE:
	bl CreateObject
	cmp r0, #0
	beq _0800883A
	ldrb r1, [r5, #2]
	cmp r1, #0
	beq _08008820
	movs r2, #0xf
	adds r1, r6, #0
	bics r1, r2
	adds r1, #8
	strh r1, [r0, #0x2e]
	adds r1, r7, #0
	bics r1, r2
	adds r1, #8
	strh r1, [r0, #0x32]
	b _0800882C
_08008820:
	ldrh r1, [r4, #0x2e]
	strh r1, [r0, #0x2e]
	ldrh r1, [r4, #0x32]
	strh r1, [r0, #0x32]
	ldrh r1, [r4, #0x36]
	strh r1, [r1, #0x36]
_0800882C:
	movs r3, #0x50
	str r4, [r1, r3]
	movs r3, #0x38
	ldrb r1, [r4, r3]
	strb r1, [r0, r3]
	bl sub_08016A04
_0800883A:
	ldr r1, _080088E0 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r6, r0
	lsrs r2, r2, #4
	ldrh r0, [r1, #8]
	subs r3, r7, r0
	lsrs r3, r3, #4
	lsls r3, r3, #6
	adds r1, r2, r3
	movs r3, #0x38
	ldrb r2, [r4, r3]
	ldrh r0, [r5, #6]
	ldr r3, _080088E4 @ =0x00004000
	tst r0, r3
	beq _08008870
	ldr r3, _080088E8 @ =0x0000FFFF
	cmp r0, r3
	beq _08008876
	push {r0, r1}
	adds r0, r2, #0
	bl sub_0808094C
	adds r3, r0, #4
	pop {r0, r1}
	lsls r1, r1, #1
	strh r0, [r3, r1]
	b _0800887E
_08008870:
	bl sub_0807B7D8
	b _0800887E
_08008876:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_0807BA8C
_0800887E:
	ldrb r1, [r5, #2]
	ldrb r2, [r5, #3]
	adds r0, r5, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08008888: .4byte gUnk_03003F80
_0800888C: .4byte gUnk_03003F80
_08008890: .4byte gUnk_080083FC
_08008894: .4byte gUnk_0800839C
_08008898: .4byte gUnk_0800845C
_0800889C: .4byte 0x01000000
_080088A0: .4byte gUnk_0800833C
_080088A4: .4byte gUnk_080084BC
_080088A8: .4byte gUnk_03003F80
_080088AC: .4byte gUnk_0800851C
_080088B0: .4byte gUnk_080082DC
_080088B4: .4byte gUnk_03000BF6
_080088B8: .4byte gUnk_03000BF8
_080088BC: .4byte gLinkEntity
_080088C0: .4byte 0x000003F0
_080088C4: .4byte gUnk_08000248
_080088C8: .4byte gUnk_03003F80
_080088CC: .4byte gUnk_0800823C
_080088D0: .4byte gUnk_08007DF4
_080088D4: .4byte gRoomControls
_080088D8: .4byte gUnk_080046A4
_080088DC: .4byte gUnk_080047F6
_080088E0: .4byte gRoomControls
_080088E4: .4byte 0x00004000
_080088E8: .4byte 0x0000FFFF
_080088EC:
	.byte 0x00, 0xFD, 0x03, 0xFD
	.byte 0x03, 0x00, 0x03, 0x03, 0x00, 0x03, 0xFD, 0x03, 0xFD, 0x00, 0xFD, 0xFD
_080088FC:
	.byte 0x00, 0xF6, 0x0A, 0xF6
	.byte 0x0A, 0x00, 0x0A, 0x0A, 0x00, 0x0A, 0xF6, 0x0A, 0xF6, 0x00, 0xF6, 0xF6
_0800890C:
	.byte 0x00, 0x06, 0xFA, 0x00
	.byte 0x00, 0xFA, 0x06, 0x00, 0x13, 0x12, 0x12, 0x10, 0x10, 0x11, 0x11, 0x13
_0800891C:
	push {r0}
	bl sub_08078F60
	pop {r0}
_08008924:
	pop {pc}

	non_word_aligned_thumb_func_start sub_08008926
sub_08008926: @ 0x08008926
	push {r4, r5, r6, lr}
	bl sub_08008942
	pop {r4, r5, r6, pc}

	non_word_aligned_thumb_func_start sub_0800892E
sub_0800892E: @ 0x0800892E
	push {r4, r5, r6, lr}
	bl sub_08008936
	pop {r4, r5, r6, pc}

	non_word_aligned_thumb_func_start sub_08008936
sub_08008936: @ 0x08008936
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #3
	ldr r1, _08008A68 @ =gUnk_03003F80
	b _08008960

	non_word_aligned_thumb_func_start sub_08008942
sub_08008942: @ 0x08008942
	push {lr}
	ldr r1, _08008A6C @ =gUnk_03003F80
	ldrb r2, [r1, #7]
	ldrb r3, [r1, #0xa]
	orrs r2, r3
	bne _08008924
	ldrb r2, [r1, #0xd]
	b _08008956
_08008952:
	push {lr}
	ldr r1, _08008A70 @ =gUnk_03003F80
_08008956:
	movs r3, #0x15
	strb r2, [r0, r3]
	movs r3, #0x80
	tst r2, r3
	bne _080089C0
_08008960:
	ldrb r3, [r1, #5]
	cmp r3, #2
	beq _0800891C
	cmp r3, #1
	beq _0800891C
	ldr r4, _08008A74 @ =_080088FC
	ldrb r3, [r1, #2]
	adds r1, r2, #0
	orrs r3, r3
	beq _08008992
	push {r2}
	movs r3, #0x14
	ldrb r1, [r0, r3]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #2
	subs r2, r2, r1
	pop {r1}
	adds r2, #2
	movs r4, #7
	ands r2, r4
	ldr r4, _08008A78 @ =_080088EC
	cmp r2, #4
	beq _08008992
	bhs _080089A8
_08008992:
	adds r3, r1, #0
	lsrs r3, r3, #2
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08008A46
	b _080089C0
_080089A8:
	movs r3, #0x14
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	ldr r4, _08008A7C @ =_0800890C
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08008A46
_080089C0:
	ldr r1, _08008A80 @ =gUnk_03003F80
	movs r4, #0x8c
	movs r2, #8
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _080089E4
	bpl _080089D2
	movs r2, #0x18
	rsbs r3, r3, #0
_080089D2:
	push {r0, r1}
	adds r1, r3, #0
	push {r2}
	bl sub_080027EA
	pop {r0}
	bl sub_0807A5B8
	pop {r0, r1}
_080089E4:
	movs r4, #0x8e
	movs r2, #0x10
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _08008A06
	bpl _080089F4
	movs r2, #0
	rsbs r3, r3, #0
_080089F4:
	push {r0, r1}
	adds r1, r3, #0
	push {r2}
	bl sub_080027EA
	pop {r0}
	bl sub_0807A5B8
	pop {r0, r1}
_08008A06:
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08008A18
	movs r2, #0x8c
	bl sub_08008A1A
	movs r2, #0x8e
	bl sub_08008A1A
_08008A18:
	pop {pc}

	non_word_aligned_thumb_func_start sub_08008A1A
sub_08008A1A: @ 0x08008A1A
	ldrb r3, [r1, #2]
	movs r4, #3
	orrs r3, r3
	bne _08008A2C
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	bne _08008A2C
	movs r4, #3
_08008A2C:
	ldrsh r3, [r1, r2]
	orrs r3, r3
	bmi _08008A3E
	subs r3, r3, r4
	bpl _08008A3A
	beq _08008A3A
_08008A38:
	eors r3, r3
_08008A3A:
	strh r3, [r1, r2]
	mov pc, lr
_08008A3E:
	adds r3, r3, r4
	bmi _08008A3A
	beq _08008A3A
	b _08008A38

	non_word_aligned_thumb_func_start sub_08008A46
sub_08008A46: @ 0x08008A46
	push {lr}
	ldr r1, _08008A84 @ =gUnk_03003F80
	movs r4, #0x8c
	ldrsh r5, [r1, r4]
	adds r5, r5, r2
	bl sub_08008A88
	movs r4, #0x8e
	ldrsh r5, [r1, r4]
	adds r5, r5, r3
	bl sub_08008A88
	pop {pc}
_08008A60:
	eors r3, r3
	strh r3, [r1]
	pop {pc}
	.align 2, 0
_08008A68: .4byte gUnk_03003F80
_08008A6C: .4byte gUnk_03003F80
_08008A70: .4byte gUnk_03003F80
_08008A74: .4byte _080088FC
_08008A78: .4byte _080088EC
_08008A7C: .4byte _0800890C
_08008A80: .4byte gUnk_03003F80
_08008A84: .4byte gUnk_03003F80

	thumb_func_start sub_08008A88
sub_08008A88: @ 0x08008A88
	orrs r5, r5
	bmi _08008A94
	ldr r6, _08008B38 @ =0x00000180
	cmp r5, r6
	blo _08008A9C
	b _08008A9A
_08008A94:
	ldr r6, _08008B3C @ =0xFFFFFE80
	cmp r5, r6
	bhs _08008A9C
_08008A9A:
	adds r5, r6, #0
_08008A9C:
	strh r5, [r1, r4]
	mov pc, lr

	thumb_func_start sub_08008AA0
sub_08008AA0: @ 0x08008AA0
	push {r4, r5, lr}
	ldr r1, _08008B40 @ =gUnk_03003F80
	ldrb r2, [r1, #0x12]
	cmp r2, #1
	beq _08008AC4
	ldrb r2, [r1, #0xd]
	cmp r2, #0xff
	beq _08008AC4
	lsls r2, r2, #4
	ldr r3, _08008B44 @ =gUnk_080C9160
	ldrsh r4, [r3, r2]
	adds r3, #0x80
	ldrsh r5, [r3, r2]
	rsbs r5, r5, #0
	movs r2, #0x8c
	strh r4, [r1, r2]
	movs r2, #0x8e
	strh r5, [r1, r2]
_08008AC4:
	pop {r4, r5, pc}

	non_word_aligned_thumb_func_start sub_08008AC6
sub_08008AC6: @ 0x08008AC6
	push {r0, lr}
	ldr r1, _08008B48 @ =gUnk_03003F80
	movs r3, #0x26
	ldrb r2, [r1, r3]
	movs r3, #0xf
	ands r2, r3
	bne _08008AEC
	ldr r2, [r1, #0x30]
	ldr r3, _08008B4C @ =gUnk_02000020
	ands r2, r3
	bne _08008AEC
	bl sub_08008AEE
	beq _08008AEC
	movs r3, #0xe2
	movs r2, #0x3d
	strb r3, [r0, r2]
	bl sub_08079458
_08008AEC:
	pop {r0, pc}

	non_word_aligned_thumb_func_start sub_08008AEE
sub_08008AEE: @ 0x08008AEE
	ldrh r2, [r0, #0x2a]
	movs r3, #0xe
	movs r1, #4
_08008AF4:
	tst r2, r3
	beq _08008B00
	lsrs r2, r2, #4
	subs r1, #1
	bne _08008AF4
	movs r2, #1
_08008B00:
	bx lr

	non_word_aligned_thumb_func_start sub_08008B02
sub_08008B02: @ 0x08008B02
	push {r0, r1, lr}
	movs r1, #0
	movs r2, #0
	bl sub_080002B4
	ldr r1, _08008B50 @ =0x00004000
	tst r0, r1
	bne _08008B1E
	ldr r1, _08008B54 @ =gUnk_08007CAC
	bl sub_08007DE0
	movs r2, #1
	cmp r3, #1
	beq _08008B20
_08008B1E:
	movs r2, #0
_08008B20:
	pop {r0, r1, pc}

	non_word_aligned_thumb_func_start sub_08008B22
sub_08008B22: @ 0x08008B22
	push {lr}
	ldr r0, _08008B58 @ =gLinkEntity
	bl sub_08008B02
	adds r0, r2, #0
	pop {pc}

	non_word_aligned_thumb_func_start sub_08008B2E
sub_08008B2E: @ 0x08008B2E
	push {r0, lr}
	adds r0, r2, #0
	bl sub_08004488
	pop {r0, pc}
	.align 2, 0
_08008B38: .4byte 0x00000180
_08008B3C: .4byte 0xFFFFFE80
_08008B40: .4byte gUnk_03003F80
_08008B44: .4byte gUnk_080C9160
_08008B48: .4byte gUnk_03003F80
_08008B4C: .4byte gUnk_02000020
_08008B50: .4byte 0x00004000
_08008B54: .4byte gUnk_08007CAC
_08008B58: .4byte gLinkEntity

gUnk_08008B5C:: @ 08008B5C
	.incbin "baserom.gba", 0x008B5C, 0x0000034

gUnk_08008B90:: @ 08008B90
	.incbin "baserom.gba", 0x008B90, 0x0000030

gUnk_08008BC0:: @ 08008BC0
	.incbin "baserom.gba", 0x008BC0, 0x000008E

gUnk_08008C4E:: @ 08008C4E
	.incbin "baserom.gba", 0x008C4E, 0x0000016

gUnk_08008C64:: @ 08008C64
	.incbin "baserom.gba", 0x008C64, 0x0000009

gUnk_08008C6D:: @ 08008C6D
	.incbin "baserom.gba", 0x008C6D, 0x0000011

gUnk_08008C7E:: @ 08008C7E
	.incbin "baserom.gba", 0x008C7E, 0x000003B

gUnk_08008CB9:: @ 08008CB9
	.incbin "baserom.gba", 0x008CB9, 0x0000097

gUnk_08008D50:: @ 08008D50
	.incbin "baserom.gba", 0x008D50, 0x000003C

gUnk_08008D8C:: @ 08008D8C
	.incbin "baserom.gba", 0x008D8C, 0x0000034

gUnk_08008DC0:: @ 08008DC0
	.incbin "baserom.gba", 0x008DC0, 0x0000048

gUnk_08008E08:: @ 08008E08
	.incbin "baserom.gba", 0x008E08, 0x0000002

gUnk_08008E0A:: @ 08008E0A
	.incbin "baserom.gba", 0x008E0A, 0x0000102

gUnk_08008F0C:: @ 08008F0C
	.incbin "baserom.gba", 0x008F0C, 0x000000A

gUnk_08008F16:: @ 08008F16
	.incbin "baserom.gba", 0x008F16, 0x0000010

gUnk_08008F26:: @ 08008F26
	.incbin "baserom.gba", 0x008F26, 0x000006A

gUnk_08008F90:: @ 08008F90
	.incbin "baserom.gba", 0x008F90, 0x0000030

gUnk_08008FC0:: @ 08008FC0
	.incbin "baserom.gba", 0x008FC0, 0x0000011

gUnk_08008FD1:: @ 08008FD1
	.incbin "baserom.gba", 0x008FD1, 0x000002B

gUnk_08008FFC:: @ 08008FFC
	.incbin "baserom.gba", 0x008FFC, 0x000000C

gUnk_08009008:: @ 08009008
	.incbin "baserom.gba", 0x009008, 0x0000017

gUnk_0800901F:: @ 0800901F
	.incbin "baserom.gba", 0x00901F, 0x000001D

gUnk_0800903C:: @ 0800903C
	.incbin "baserom.gba", 0x00903C, 0x0000044

gUnk_08009080:: @ 08009080
	.incbin "baserom.gba", 0x009080, 0x000005B

gUnk_080090DB:: @ 080090DB
	.incbin "baserom.gba", 0x0090DB, 0x00000BD

gUnk_08009198:: @ 08009198
	.incbin "baserom.gba", 0x009198, 0x000006F

gUnk_08009207:: @ 08009207
	.incbin "baserom.gba", 0x009207, 0x000006D

gUnk_08009274:: @ 08009274
	.incbin "baserom.gba", 0x009274, 0x0000034

gUnk_080092A8:: @ 080092A8
	.incbin "baserom.gba", 0x0092A8, 0x000002C

gUnk_080092D4:: @ 080092D4
	.incbin "baserom.gba", 0x0092D4, 0x000001C

gUnk_080092F0:: @ 080092F0
	.incbin "baserom.gba", 0x0092F0, 0x0000018

gUnk_08009308:: @ 08009308
	.incbin "baserom.gba", 0x009308, 0x0000010

gUnk_08009318:: @ 08009318
	.incbin "baserom.gba", 0x009318, 0x0000008

gUnk_08009320:: @ 08009320
	.incbin "baserom.gba", 0x009320, 0x0000020

gUnk_08009340:: @ 08009340
	.incbin "baserom.gba", 0x009340, 0x0000008

gUnk_08009348:: @ 08009348
	.incbin "baserom.gba", 0x009348, 0x000004B

gUnk_08009393:: @ 08009393
	.incbin "baserom.gba", 0x009393, 0x0000044

gUnk_080093D7:: @ 080093D7
	.incbin "baserom.gba", 0x0093D7, 0x0000030

gUnk_08009407:: @ 08009407
	.incbin "baserom.gba", 0x009407, 0x000007F

gUnk_08009486:: @ 08009486
	.incbin "baserom.gba", 0x009486, 0x000001E

gUnk_080094A4:: @ 080094A4
	.incbin "baserom.gba", 0x0094A4, 0x0000028

gUnk_080094CC:: @ 080094CC
	.incbin "baserom.gba", 0x0094CC, 0x000000B

gUnk_080094D7:: @ 080094D7
	.incbin "baserom.gba", 0x0094D7, 0x0000025

gUnk_080094FC:: @ 080094FC
	.incbin "baserom.gba", 0x0094FC, 0x0000007

gUnk_08009503:: @ 08009503
	.incbin "baserom.gba", 0x009503, 0x0000005

gUnk_08009508:: @ 08009508
	.incbin "baserom.gba", 0x009508, 0x0000030

gUnk_08009538:: @ 08009538
	.incbin "baserom.gba", 0x009538, 0x000003C

gUnk_08009574:: @ 08009574
	.incbin "baserom.gba", 0x009574, 0x0000058

gUnk_080095CC:: @ 080095CC
	.incbin "baserom.gba", 0x0095CC, 0x0000060

gUnk_0800962C:: @ 0800962C
	.incbin "baserom.gba", 0x00962C, 0x000006C

gUnk_08009698:: @ 08009698
	.incbin "baserom.gba", 0x009698, 0x000006C

gUnk_08009704:: @ 08009704
	.incbin "baserom.gba", 0x009704, 0x0000002

gUnk_08009706:: @ 08009706
	.incbin "baserom.gba", 0x009706, 0x000003A

gUnk_08009740:: @ 08009740
	.incbin "baserom.gba", 0x009740, 0x0000038

gUnk_08009778:: @ 08009778
	.incbin "baserom.gba", 0x009778, 0x000000E

gUnk_08009786:: @ 08009786
	.incbin "baserom.gba", 0x009786, 0x000001B

gUnk_080097A1:: @ 080097A1
	.incbin "baserom.gba", 0x0097A1, 0x000004F

gUnk_080097F0:: @ 080097F0
	.incbin "baserom.gba", 0x0097F0, 0x0000048

gUnk_08009838:: @ 08009838
	.incbin "baserom.gba", 0x009838, 0x000009C

gUnk_080098D4:: @ 080098D4
	.incbin "baserom.gba", 0x0098D4, 0x0000044

gUnk_08009918:: @ 08009918
	.incbin "baserom.gba", 0x009918, 0x0000028

gUnk_08009940:: @ 08009940
	.incbin "baserom.gba", 0x009940, 0x0000010

gUnk_08009950:: @ 08009950
	.incbin "baserom.gba", 0x009950, 0x000008C

gUnk_080099DC:: @ 080099DC
	.incbin "baserom.gba", 0x0099DC, 0x0000028

gUnk_08009A04:: @ 08009A04
	.incbin "baserom.gba", 0x009A04, 0x0000003

gUnk_08009A07:: @ 08009A07
	.incbin "baserom.gba", 0x009A07, 0x0000025

gUnk_08009A2C:: @ 08009A2C
	.incbin "baserom.gba", 0x009A2C, 0x0000008

gUnk_08009A34:: @ 08009A34
	.incbin "baserom.gba", 0x009A34, 0x000001C

gUnk_08009A50:: @ 08009A50
	.incbin "baserom.gba", 0x009A50, 0x0000027

gUnk_08009A77:: @ 08009A77
	.incbin "baserom.gba", 0x009A77, 0x000000A

gUnk_08009A81:: @ 08009A81
	.incbin "baserom.gba", 0x009A81, 0x0000003

gUnk_08009A84:: @ 08009A84
	.incbin "baserom.gba", 0x009A84, 0x0000037

gUnk_08009ABB:: @ 08009ABB
	.incbin "baserom.gba", 0x009ABB, 0x000003D

gUnk_08009AF8:: @ 08009AF8
	.incbin "baserom.gba", 0x009AF8, 0x0000038

gUnk_08009B30:: @ 08009B30
	.incbin "baserom.gba", 0x009B30, 0x0000033

gUnk_08009B63:: @ 08009B63
	.incbin "baserom.gba", 0x009B63, 0x0000015

gUnk_08009B78:: @ 08009B78
	.incbin "baserom.gba", 0x009B78, 0x00000F0

gUnk_08009C68:: @ 08009C68
	.incbin "baserom.gba", 0x009C68, 0x0000017

gUnk_08009C7F:: @ 08009C7F
	.incbin "baserom.gba", 0x009C7F, 0x000001F

gUnk_08009C9E:: @ 08009C9E
	.incbin "baserom.gba", 0x009C9E, 0x0000062

gUnk_08009D00:: @ 08009D00
	.incbin "baserom.gba", 0x009D00, 0x000006C

gUnk_08009D6C:: @ 08009D6C
	.incbin "baserom.gba", 0x009D6C, 0x000000B

gUnk_08009D77:: @ 08009D77
	.incbin "baserom.gba", 0x009D77, 0x0000039

gUnk_08009DB0:: @ 08009DB0
	.incbin "baserom.gba", 0x009DB0, 0x000003C

gUnk_08009DEC:: @ 08009DEC
	.incbin "baserom.gba", 0x009DEC, 0x000004C

gUnk_08009E38:: @ 08009E38
	.incbin "baserom.gba", 0x009E38, 0x0000020

gUnk_08009E58:: @ 08009E58
	.incbin "baserom.gba", 0x009E58, 0x0000030

gUnk_08009E88:: @ 08009E88
	.incbin "baserom.gba", 0x009E88, 0x0000016

gUnk_08009E9E:: @ 08009E9E
	.incbin "baserom.gba", 0x009E9E, 0x000000B

gUnk_08009EA9:: @ 08009EA9
	.incbin "baserom.gba", 0x009EA9, 0x000000E

gUnk_08009EB7:: @ 08009EB7
	.incbin "baserom.gba", 0x009EB7, 0x0000015

gUnk_08009ECC:: @ 08009ECC
	.incbin "baserom.gba", 0x009ECC, 0x0000024

gUnk_08009EF0:: @ 08009EF0
	.incbin "baserom.gba", 0x009EF0, 0x0000017

gUnk_08009F07:: @ 08009F07
	.incbin "baserom.gba", 0x009F07, 0x000000D

gUnk_08009F14:: @ 08009F14
	.incbin "baserom.gba", 0x009F14, 0x0000025

gUnk_08009F39:: @ 08009F39
	.incbin "baserom.gba", 0x009F39, 0x0000039

gUnk_08009F72:: @ 08009F72
	.incbin "baserom.gba", 0x009F72, 0x00000F2

gUnk_0800A064:: @ 0800A064
	.incbin "baserom.gba", 0x00A064, 0x000001D

gUnk_0800A081:: @ 0800A081
	.incbin "baserom.gba", 0x00A081, 0x0000033

gUnk_0800A0B4:: @ 0800A0B4
	.incbin "baserom.gba", 0x00A0B4, 0x0000048

gUnk_0800A0FC:: @ 0800A0FC
	.incbin "baserom.gba", 0x00A0FC, 0x000000E

gUnk_0800A10A:: @ 0800A10A
	.incbin "baserom.gba", 0x00A10A, 0x0000005

gUnk_0800A10F:: @ 0800A10F
	.incbin "baserom.gba", 0x00A10F, 0x0000015

gUnk_0800A124:: @ 0800A124
	.incbin "baserom.gba", 0x00A124, 0x0000010

gUnk_0800A134:: @ 0800A134
	.incbin "baserom.gba", 0x00A134, 0x0000080

gUnk_0800A1B4:: @ 0800A1B4
	.incbin "baserom.gba", 0x00A1B4, 0x0000024

gUnk_0800A1D8:: @ 0800A1D8
	.incbin "baserom.gba", 0x00A1D8, 0x000004C

gUnk_0800A224:: @ 0800A224
	.incbin "baserom.gba", 0x00A224, 0x000003C

gUnk_0800A260:: @ 0800A260
	.incbin "baserom.gba", 0x00A260, 0x00000E0

gUnk_0800A340:: @ 0800A340
	.incbin "baserom.gba", 0x00A340, 0x0000063

gUnk_0800A3A3:: @ 0800A3A3
	.incbin "baserom.gba", 0x00A3A3, 0x0000006

gUnk_0800A3A9:: @ 0800A3A9
	.incbin "baserom.gba", 0x00A3A9, 0x0000001

gUnk_0800A3AA:: @ 0800A3AA
	.incbin "baserom.gba", 0x00A3AA, 0x000002E

gUnk_0800A3D8:: @ 0800A3D8
	.incbin "baserom.gba", 0x00A3D8, 0x0000128

gUnk_0800A500:: @ 0800A500
	.incbin "baserom.gba", 0x00A500, 0x0000090

gUnk_0800A590:: @ 0800A590
	.incbin "baserom.gba", 0x00A590, 0x0000016

gUnk_0800A5A6:: @ 0800A5A6
	.incbin "baserom.gba", 0x00A5A6, 0x00000B6

gUnk_0800A65C:: @ 0800A65C
	.incbin "baserom.gba", 0x00A65C, 0x0000022

gUnk_0800A67E:: @ 0800A67E
	.incbin "baserom.gba", 0x00A67E, 0x0000002

gUnk_0800A680:: @ 0800A680
	.incbin "baserom.gba", 0x00A680, 0x0000024

gUnk_0800A6A4:: @ 0800A6A4
	.incbin "baserom.gba", 0x00A6A4, 0x0000007

gUnk_0800A6AB:: @ 0800A6AB
	.incbin "baserom.gba", 0x00A6AB, 0x0000029

gUnk_0800A6D4:: @ 0800A6D4
	.incbin "baserom.gba", 0x00A6D4, 0x0000030

gUnk_0800A704:: @ 0800A704
	.incbin "baserom.gba", 0x00A704, 0x0000030

gUnk_0800A734:: @ 0800A734
	.incbin "baserom.gba", 0x00A734, 0x0000016

gUnk_0800A74A:: @ 0800A74A
	.incbin "baserom.gba", 0x00A74A, 0x000001A

gUnk_0800A764:: @ 0800A764
	.incbin "baserom.gba", 0x00A764, 0x0000080

gUnk_0800A7E4:: @ 0800A7E4
	.incbin "baserom.gba", 0x00A7E4, 0x0000004

gUnk_0800A7E8:: @ 0800A7E8
	.incbin "baserom.gba", 0x00A7E8, 0x000002E

gUnk_0800A816:: @ 0800A816
	.incbin "baserom.gba", 0x00A816, 0x000000A

gUnk_0800A820:: @ 0800A820
	.incbin "baserom.gba", 0x00A820, 0x000003C

gUnk_0800A85C:: @ 0800A85C
	.incbin "baserom.gba", 0x00A85C, 0x000003C

gUnk_0800A898:: @ 0800A898
	.incbin "baserom.gba", 0x00A898, 0x000003C

gUnk_0800A8D4:: @ 0800A8D4
	.incbin "baserom.gba", 0x00A8D4, 0x0000034

gUnk_0800A908:: @ 0800A908
	.incbin "baserom.gba", 0x00A908, 0x0000008

gUnk_0800A910:: @ 0800A910
	.incbin "baserom.gba", 0x00A910, 0x0000054

gUnk_0800A964:: @ 0800A964
	.incbin "baserom.gba", 0x00A964, 0x0000024

gUnk_0800A988:: @ 0800A988
	.incbin "baserom.gba", 0x00A988, 0x0000024

gUnk_0800A9AC:: @ 0800A9AC
	.incbin "baserom.gba", 0x00A9AC, 0x0000024

gUnk_0800A9D0:: @ 0800A9D0
	.incbin "baserom.gba", 0x00A9D0, 0x0000024

gUnk_0800A9F4:: @ 0800A9F4
	.incbin "baserom.gba", 0x00A9F4, 0x000000F

gUnk_0800AA03:: @ 0800AA03
	.incbin "baserom.gba", 0x00AA03, 0x0000045

gUnk_0800AA48:: @ 0800AA48
	.incbin "baserom.gba", 0x00AA48, 0x0000024

gUnk_0800AA6C:: @ 0800AA6C
	.incbin "baserom.gba", 0x00AA6C, 0x0000024

gUnk_0800AA90:: @ 0800AA90
	.incbin "baserom.gba", 0x00AA90, 0x0000024

gUnk_0800AAB4:: @ 0800AAB4
	.incbin "baserom.gba", 0x00AAB4, 0x0000024

gUnk_0800AAD8:: @ 0800AAD8
	.incbin "baserom.gba", 0x00AAD8, 0x0000030

gUnk_0800AB08:: @ 0800AB08
	.incbin "baserom.gba", 0x00AB08, 0x000001B

gUnk_0800AB23:: @ 0800AB23
	.incbin "baserom.gba", 0x00AB23, 0x000002C

gUnk_0800AB4F:: @ 0800AB4F
	.incbin "baserom.gba", 0x00AB4F, 0x00000A1

gUnk_0800ABF0:: @ 0800ABF0
	.incbin "baserom.gba", 0x00ABF0, 0x0000034

gUnk_0800AC24:: @ 0800AC24
	.incbin "baserom.gba", 0x00AC24, 0x0000049

gUnk_0800AC6D:: @ 0800AC6D
	.incbin "baserom.gba", 0x00AC6D, 0x0000048

gUnk_0800ACB5:: @ 0800ACB5
	.incbin "baserom.gba", 0x00ACB5, 0x0000007

gUnk_0800ACBC:: @ 0800ACBC
	.incbin "baserom.gba", 0x00ACBC, 0x0000024

gUnk_0800ACE0:: @ 0800ACE0
	.incbin "baserom.gba", 0x00ACE0, 0x0000074

gUnk_0800AD54:: @ 0800AD54
	.incbin "baserom.gba", 0x00AD54, 0x0000020

gUnk_0800AD74:: @ 0800AD74
	.incbin "baserom.gba", 0x00AD74, 0x0000033

gUnk_0800ADA7:: @ 0800ADA7
	.incbin "baserom.gba", 0x00ADA7, 0x000000D

gUnk_0800ADB4:: @ 0800ADB4
	.incbin "baserom.gba", 0x00ADB4, 0x00000F0

gUnk_0800AEA4:: @ 0800AEA4
	.incbin "baserom.gba", 0x00AEA4, 0x0000038

gUnk_0800AEDC:: @ 0800AEDC
	.incbin "baserom.gba", 0x00AEDC, 0x000003C

gUnk_0800AF18:: @ 0800AF18
	.incbin "baserom.gba", 0x00AF18, 0x000002C

gUnk_0800AF44:: @ 0800AF44
	.incbin "baserom.gba", 0x00AF44, 0x0000024

gUnk_0800AF68:: @ 0800AF68
	.incbin "baserom.gba", 0x00AF68, 0x0000016

gUnk_0800AF7E:: @ 0800AF7E
	.incbin "baserom.gba", 0x00AF7E, 0x000000E

gUnk_0800AF8C:: @ 0800AF8C
	.incbin "baserom.gba", 0x00AF8C, 0x000001B

gUnk_0800AFA7:: @ 0800AFA7
	.incbin "baserom.gba", 0x00AFA7, 0x0000009

gUnk_0800AFB0:: @ 0800AFB0
	.incbin "baserom.gba", 0x00AFB0, 0x0000038

gUnk_0800AFE8:: @ 0800AFE8
	.incbin "baserom.gba", 0x00AFE8, 0x0000024

gUnk_0800B00C:: @ 0800B00C
	.incbin "baserom.gba", 0x00B00C, 0x00000A0

gUnk_0800B0AC:: @ 0800B0AC
	.incbin "baserom.gba", 0x00B0AC, 0x0000004

gUnk_0800B0B0:: @ 0800B0B0
	.incbin "baserom.gba", 0x00B0B0, 0x0000020

gUnk_0800B0D0:: @ 0800B0D0
	.incbin "baserom.gba", 0x00B0D0, 0x00000A7

gUnk_0800B177:: @ 0800B177
	.incbin "baserom.gba", 0x00B177, 0x0000005

gUnk_0800B17C:: @ 0800B17C
	.incbin "baserom.gba", 0x00B17C, 0x0000044

gUnk_0800B1C0:: @ 0800B1C0
	.incbin "baserom.gba", 0x00B1C0, 0x0000040

gUnk_0800B200:: @ 0800B200
	.incbin "baserom.gba", 0x00B200, 0x0000054

gUnk_0800B254:: @ 0800B254
	.incbin "baserom.gba", 0x00B254, 0x0000030

gUnk_0800B284:: @ 0800B284
	.incbin "baserom.gba", 0x00B284, 0x0000030

gUnk_0800B2B4:: @ 0800B2B4
	.incbin "baserom.gba", 0x00B2B4, 0x0000054

gUnk_0800B308:: @ 0800B308
	.incbin "baserom.gba", 0x00B308, 0x000001A

gUnk_0800B322:: @ 0800B322
	.incbin "baserom.gba", 0x00B322, 0x0000007

gUnk_0800B329:: @ 0800B329
	.incbin "baserom.gba", 0x00B329, 0x000001F

gUnk_0800B348:: @ 0800B348
	.incbin "baserom.gba", 0x00B348, 0x0000014

gUnk_0800B35C:: @ 0800B35C
	.incbin "baserom.gba", 0x00B35C, 0x0000018

gUnk_0800B374:: @ 0800B374
	.incbin "baserom.gba", 0x00B374, 0x0000030

gUnk_0800B3A4:: @ 0800B3A4
	.incbin "baserom.gba", 0x00B3A4, 0x000006B

gUnk_0800B40F:: @ 0800B40F
	.incbin "baserom.gba", 0x00B40F, 0x000000D

gUnk_0800B41C:: @ 0800B41C
	.incbin "baserom.gba", 0x00B41C, 0x0000090

gUnk_0800B4AC:: @ 0800B4AC
	.incbin "baserom.gba", 0x00B4AC, 0x000005C

gUnk_0800B508:: @ 0800B508
	.incbin "baserom.gba", 0x00B508, 0x0000007

gUnk_0800B50F:: @ 0800B50F
	.incbin "baserom.gba", 0x00B50F, 0x000003D

gUnk_0800B54C:: @ 0800B54C
	.incbin "baserom.gba", 0x00B54C, 0x0000028

gUnk_0800B574:: @ 0800B574
	.incbin "baserom.gba", 0x00B574, 0x0000050

gUnk_0800B5C4:: @ 0800B5C4
	.incbin "baserom.gba", 0x00B5C4, 0x0000028

gUnk_0800B5EC:: @ 0800B5EC
	.incbin "baserom.gba", 0x00B5EC, 0x0000028

gUnk_0800B614:: @ 0800B614
	.incbin "baserom.gba", 0x00B614, 0x00000B4

gUnk_0800B6C8:: @ 0800B6C8
	.incbin "baserom.gba", 0x00B6C8, 0x0000040

gUnk_0800B708:: @ 0800B708
	.incbin "baserom.gba", 0x00B708, 0x0000017

gUnk_0800B71F:: @ 0800B71F
	.incbin "baserom.gba", 0x00B71F, 0x0000011

gUnk_0800B730:: @ 0800B730
	.incbin "baserom.gba", 0x00B730, 0x0000094

gUnk_0800B7C4:: @ 0800B7C4
	.incbin "baserom.gba", 0x00B7C4, 0x000008B

gUnk_0800B84F:: @ 0800B84F
	.incbin "baserom.gba", 0x00B84F, 0x0000012

gUnk_0800B861:: @ 0800B861
	.incbin "baserom.gba", 0x00B861, 0x0000027

gUnk_0800B888:: @ 0800B888
	.incbin "baserom.gba", 0x00B888, 0x0000018

gUnk_0800B8A0:: @ 0800B8A0
	.incbin "baserom.gba", 0x00B8A0, 0x0000018

gUnk_0800B8B8:: @ 0800B8B8
	.incbin "baserom.gba", 0x00B8B8, 0x000002C

gUnk_0800B8E4:: @ 0800B8E4
	.incbin "baserom.gba", 0x00B8E4, 0x0000022

gUnk_0800B906:: @ 0800B906
	.incbin "baserom.gba", 0x00B906, 0x0000016

gUnk_0800B91C:: @ 0800B91C
	.incbin "baserom.gba", 0x00B91C, 0x0000048

gUnk_0800B964:: @ 0800B964
	.incbin "baserom.gba", 0x00B964, 0x0000050

gUnk_0800B9B4:: @ 0800B9B4
	.incbin "baserom.gba", 0x00B9B4, 0x0000088

gUnk_0800BA3C:: @ 0800BA3C
	.incbin "baserom.gba", 0x00BA3C, 0x000003C

gUnk_0800BA78:: @ 0800BA78
	.incbin "baserom.gba", 0x00BA78, 0x0000054

gUnk_0800BACC:: @ 0800BACC
	.incbin "baserom.gba", 0x00BACC, 0x0000034

gUnk_0800BB00:: @ 0800BB00
	.incbin "baserom.gba", 0x00BB00, 0x0000008

gUnk_0800BB08:: @ 0800BB08
	.incbin "baserom.gba", 0x00BB08, 0x0000012

gUnk_0800BB1A:: @ 0800BB1A
	.incbin "baserom.gba", 0x00BB1A, 0x0000016

gUnk_0800BB30:: @ 0800BB30
	.incbin "baserom.gba", 0x00BB30, 0x0000034

gUnk_0800BB64:: @ 0800BB64
	.incbin "baserom.gba", 0x00BB64, 0x0000010

gUnk_0800BB74:: @ 0800BB74
	.incbin "baserom.gba", 0x00BB74, 0x0000030

gUnk_0800BBA4:: @ 0800BBA4
	.incbin "baserom.gba", 0x00BBA4, 0x0000037

gUnk_0800BBDB:: @ 0800BBDB
	.incbin "baserom.gba", 0x00BBDB, 0x0000001

gUnk_0800BBDC:: @ 0800BBDC
	.incbin "baserom.gba", 0x00BBDC, 0x000002C

gUnk_0800BC08:: @ 0800BC08
	.incbin "baserom.gba", 0x00BC08, 0x000001A

gUnk_0800BC22:: @ 0800BC22
	.incbin "baserom.gba", 0x00BC22, 0x000002E

gUnk_0800BC50:: @ 0800BC50
	.incbin "baserom.gba", 0x00BC50, 0x000005E

gUnk_0800BCAE:: @ 0800BCAE
	.incbin "baserom.gba", 0x00BCAE, 0x0000009

gUnk_0800BCB7:: @ 0800BCB7
	.incbin "baserom.gba", 0x00BCB7, 0x0000007

gUnk_0800BCBE:: @ 0800BCBE
	.incbin "baserom.gba", 0x00BCBE, 0x000002A

gUnk_0800BCE8:: @ 0800BCE8
	.incbin "baserom.gba", 0x00BCE8, 0x0000020

gUnk_0800BD08:: @ 0800BD08
	.incbin "baserom.gba", 0x00BD08, 0x0000068

gUnk_0800BD70:: @ 0800BD70
	.incbin "baserom.gba", 0x00BD70, 0x0000008

gUnk_0800BD78:: @ 0800BD78
	.incbin "baserom.gba", 0x00BD78, 0x0000034

gUnk_0800BDAC:: @ 0800BDAC
	.incbin "baserom.gba", 0x00BDAC, 0x0000018

gUnk_0800BDC4:: @ 0800BDC4
	.incbin "baserom.gba", 0x00BDC4, 0x0000058

gUnk_0800BE1C:: @ 0800BE1C
	.incbin "baserom.gba", 0x00BE1C, 0x0000038

gUnk_0800BE54:: @ 0800BE54
	.incbin "baserom.gba", 0x00BE54, 0x0000078

gUnk_0800BECC:: @ 0800BECC
	.incbin "baserom.gba", 0x00BECC, 0x0000048

gUnk_0800BF14:: @ 0800BF14
	.incbin "baserom.gba", 0x00BF14, 0x0000024

gUnk_0800BF38:: @ 0800BF38
	.incbin "baserom.gba", 0x00BF38, 0x0000012

gUnk_0800BF4A:: @ 0800BF4A
	.incbin "baserom.gba", 0x00BF4A, 0x0000026

gUnk_0800BF70:: @ 0800BF70
	.incbin "baserom.gba", 0x00BF70, 0x000004F

gUnk_0800BFBF:: @ 0800BFBF
	.incbin "baserom.gba", 0x00BFBF, 0x0000022

gUnk_0800BFE1:: @ 0800BFE1
	.incbin "baserom.gba", 0x00BFE1, 0x0000002

gUnk_0800BFE3:: @ 0800BFE3
	.incbin "baserom.gba", 0x00BFE3, 0x0000021

gUnk_0800C004:: @ 0800C004
	.incbin "baserom.gba", 0x00C004, 0x0000003

gUnk_0800C007:: @ 0800C007
	.incbin "baserom.gba", 0x00C007, 0x000001D

gUnk_0800C024:: @ 0800C024
	.incbin "baserom.gba", 0x00C024, 0x0000057

gUnk_0800C07B:: @ 0800C07B
	.incbin "baserom.gba", 0x00C07B, 0x0000035

gUnk_0800C0B0:: @ 0800C0B0
	.incbin "baserom.gba", 0x00C0B0, 0x0000017

gUnk_0800C0C7:: @ 0800C0C7
	.incbin "baserom.gba", 0x00C0C7, 0x000000C

gUnk_0800C0D3:: @ 0800C0D3
	.incbin "baserom.gba", 0x00C0D3, 0x0000015

gUnk_0800C0E8:: @ 0800C0E8
	.incbin "baserom.gba", 0x00C0E8, 0x000002B

gUnk_0800C113:: @ 0800C113
	.incbin "baserom.gba", 0x00C113, 0x0000034

gUnk_0800C147:: @ 0800C147
	.incbin "baserom.gba", 0x00C147, 0x0000019

gUnk_0800C160:: @ 0800C160
	.incbin "baserom.gba", 0x00C160, 0x0000078

gUnk_0800C1D8:: @ 0800C1D8
	.incbin "baserom.gba", 0x00C1D8, 0x000002C

gUnk_0800C204:: @ 0800C204
	.incbin "baserom.gba", 0x00C204, 0x0000003

gUnk_0800C207:: @ 0800C207
	.incbin "baserom.gba", 0x00C207, 0x0000001

gUnk_0800C208:: @ 0800C208
	.incbin "baserom.gba", 0x00C208, 0x0000008

gUnk_0800C210:: @ 0800C210
	.incbin "baserom.gba", 0x00C210, 0x0000053

gUnk_0800C263:: @ 0800C263
	.incbin "baserom.gba", 0x00C263, 0x0000041

gUnk_0800C2A4:: @ 0800C2A4
	.incbin "baserom.gba", 0x00C2A4, 0x0000003

gUnk_0800C2A7:: @ 0800C2A7
	.incbin "baserom.gba", 0x00C2A7, 0x0000027

gUnk_0800C2CE:: @ 0800C2CE
	.incbin "baserom.gba", 0x00C2CE, 0x0000082

gUnk_0800C350:: @ 0800C350
	.incbin "baserom.gba", 0x00C350, 0x0000046

gUnk_0800C396:: @ 0800C396
	.incbin "baserom.gba", 0x00C396, 0x0000036

gUnk_0800C3CC:: @ 0800C3CC
	.incbin "baserom.gba", 0x00C3CC, 0x000003C

gUnk_0800C408:: @ 0800C408
	.incbin "baserom.gba", 0x00C408, 0x0000008

gUnk_0800C410:: @ 0800C410
	.incbin "baserom.gba", 0x00C410, 0x000004C

gUnk_0800C45C:: @ 0800C45C
	.incbin "baserom.gba", 0x00C45C, 0x0000038

gUnk_0800C494:: @ 0800C494
	.incbin "baserom.gba", 0x00C494, 0x000003C

gUnk_0800C4D0:: @ 0800C4D0
	.incbin "baserom.gba", 0x00C4D0, 0x000000B

gUnk_0800C4DB:: @ 0800C4DB
	.incbin "baserom.gba", 0x00C4DB, 0x0000031

gUnk_0800C50C:: @ 0800C50C
	.incbin "baserom.gba", 0x00C50C, 0x0000015

gUnk_0800C521:: @ 0800C521
	.incbin "baserom.gba", 0x00C521, 0x000002F

gUnk_0800C550:: @ 0800C550
	.incbin "baserom.gba", 0x00C550, 0x0000006

gUnk_0800C556:: @ 0800C556
	.incbin "baserom.gba", 0x00C556, 0x000002E

gUnk_0800C584:: @ 0800C584
	.incbin "baserom.gba", 0x00C584, 0x0000016

gUnk_0800C59A:: @ 0800C59A
	.incbin "baserom.gba", 0x00C59A, 0x000002E

gUnk_0800C5C8:: @ 0800C5C8
	.incbin "baserom.gba", 0x00C5C8, 0x0000034

gUnk_0800C5FC:: @ 0800C5FC
	.incbin "baserom.gba", 0x00C5FC, 0x0000004

gUnk_0800C600:: @ 0800C600
	.incbin "baserom.gba", 0x00C600, 0x0000007

gUnk_0800C607:: @ 0800C607
	.incbin "baserom.gba", 0x00C607, 0x000002D

gUnk_0800C634:: @ 0800C634
	.incbin "baserom.gba", 0x00C634, 0x0000092

gUnk_0800C6C6:: @ 0800C6C6
	.incbin "baserom.gba", 0x00C6C6, 0x00000AE

gUnk_0800C774:: @ 0800C774
	.incbin "baserom.gba", 0x00C774, 0x0000005

gUnk_0800C779:: @ 0800C779
	.incbin "baserom.gba", 0x00C779, 0x000008F

gUnk_0800C808:: @ 0800C808
	.incbin "baserom.gba", 0x00C808, 0x0000059

gUnk_0800C861:: @ 0800C861
	.incbin "baserom.gba", 0x00C861, 0x000004F

gUnk_0800C8B0:: @ 0800C8B0
	.incbin "baserom.gba", 0x00C8B0, 0x000002A

gUnk_0800C8DA:: @ 0800C8DA
	.incbin "baserom.gba", 0x00C8DA, 0x0000016

gUnk_0800C8F0:: @ 0800C8F0
	.incbin "baserom.gba", 0x00C8F0, 0x000002C

gUnk_0800C91C:: @ 0800C91C
	.incbin "baserom.gba", 0x00C91C, 0x0000015

gUnk_0800C931:: @ 0800C931
	.incbin "baserom.gba", 0x00C931, 0x0000032

gUnk_0800C963:: @ 0800C963
	.incbin "baserom.gba", 0x00C963, 0x00000A5

gUnk_0800CA08:: @ 0800CA08
	.incbin "baserom.gba", 0x00CA08, 0x0000084

gUnk_0800CA8C:: @ 0800CA8C
	.incbin "baserom.gba", 0x00CA8C, 0x000001E

gUnk_0800CAAA:: @ 0800CAAA
	.incbin "baserom.gba", 0x00CAAA, 0x0000012

gUnk_0800CABC:: @ 0800CABC
	.incbin "baserom.gba", 0x00CABC, 0x000004B

gUnk_0800CB07:: @ 0800CB07
	.incbin "baserom.gba", 0x00CB07, 0x000004D

gUnk_0800CB54:: @ 0800CB54
	.incbin "baserom.gba", 0x00CB54, 0x000004F

gUnk_0800CBA3:: @ 0800CBA3
	.incbin "baserom.gba", 0x00CBA3, 0x0000031

gUnk_0800CBD4:: @ 0800CBD4
	.incbin "baserom.gba", 0x00CBD4, 0x0000034

gUnk_0800CC08:: @ 0800CC08
	.incbin "baserom.gba", 0x00CC08, 0x0000005

gUnk_0800CC0D:: @ 0800CC0D
	.incbin "baserom.gba", 0x00CC0D, 0x0000035

gUnk_0800CC42:: @ 0800CC42
	.incbin "baserom.gba", 0x00CC42, 0x000002A

gUnk_0800CC6C:: @ 0800CC6C
	.incbin "baserom.gba", 0x00CC6C, 0x0000061

gUnk_0800CCCD:: @ 0800CCCD
	.incbin "baserom.gba", 0x00CCCD, 0x0000010

gUnk_0800CCDD:: @ 0800CCDD
	.incbin "baserom.gba", 0x00CCDD, 0x0000027

gUnk_0800CD04:: @ 0800CD04
	.incbin "baserom.gba", 0x00CD04, 0x0000004

gUnk_0800CD08:: @ 0800CD08
	.incbin "baserom.gba", 0x00CD08, 0x000005F

gUnk_0800CD67:: @ 0800CD67
	.incbin "baserom.gba", 0x00CD67, 0x0000015

gUnk_0800CD7C:: @ 0800CD7C
	.incbin "baserom.gba", 0x00CD7C, 0x000008B

gUnk_0800CE07:: @ 0800CE07
	.incbin "baserom.gba", 0x00CE07, 0x00000FD

gUnk_0800CF04:: @ 0800CF04
	.incbin "baserom.gba", 0x00CF04, 0x0000012

gUnk_0800CF16:: @ 0800CF16
	.incbin "baserom.gba", 0x00CF16, 0x0000035

gUnk_0800CF4B:: @ 0800CF4B
	.incbin "baserom.gba", 0x00CF4B, 0x0000005

gUnk_0800CF50:: @ 0800CF50
	.incbin "baserom.gba", 0x00CF50, 0x000002B

gUnk_0800CF7B:: @ 0800CF7B
	.incbin "baserom.gba", 0x00CF7B, 0x000000D

gUnk_0800CF88:: @ 0800CF88
	.incbin "baserom.gba", 0x00CF88, 0x000000D

gUnk_0800CF95:: @ 0800CF95
	.incbin "baserom.gba", 0x00CF95, 0x0000014

gUnk_0800CFA9:: @ 0800CFA9
	.incbin "baserom.gba", 0x00CFA9, 0x0000003

gUnk_0800CFAC:: @ 0800CFAC
	.incbin "baserom.gba", 0x00CFAC, 0x0000065

gUnk_0800D011:: @ 0800D011
	.incbin "baserom.gba", 0x00D011, 0x000004E

gUnk_0800D05F:: @ 0800D05F
	.incbin "baserom.gba", 0x00D05F, 0x000006F

gUnk_0800D0CE:: @ 0800D0CE
	.incbin "baserom.gba", 0x00D0CE, 0x0000059

gUnk_0800D127:: @ 0800D127
	.incbin "baserom.gba", 0x00D127, 0x0000069

gUnk_0800D190:: @ 0800D190
	.incbin "baserom.gba", 0x00D190, 0x0000024

gUnk_0800D1B4:: @ 0800D1B4
	.incbin "baserom.gba", 0x00D1B4, 0x0000010

gUnk_0800D1C4:: @ 0800D1C4
	.incbin "baserom.gba", 0x00D1C4, 0x0000010

gUnk_0800D1D4:: @ 0800D1D4
	.incbin "baserom.gba", 0x00D1D4, 0x000000C

gUnk_0800D1E0:: @ 0800D1E0
	.incbin "baserom.gba", 0x00D1E0, 0x0000027

gUnk_0800D207:: @ 0800D207
	.incbin "baserom.gba", 0x00D207, 0x0000011

gUnk_0800D218:: @ 0800D218
	.incbin "baserom.gba", 0x00D218, 0x000003C

gUnk_0800D254:: @ 0800D254
	.incbin "baserom.gba", 0x00D254, 0x0000024

gUnk_0800D278:: @ 0800D278
	.incbin "baserom.gba", 0x00D278, 0x0000056

gUnk_0800D2CE:: @ 0800D2CE
	.incbin "baserom.gba", 0x00D2CE, 0x0000038

gUnk_0800D306:: @ 0800D306
	.incbin "baserom.gba", 0x00D306, 0x0000002

gUnk_0800D308:: @ 0800D308
	.incbin "baserom.gba", 0x00D308, 0x0000007

gUnk_0800D30F:: @ 0800D30F
	.incbin "baserom.gba", 0x00D30F, 0x0000041

gUnk_0800D350:: @ 0800D350
	.incbin "baserom.gba", 0x00D350, 0x000009C

gUnk_0800D3EC:: @ 0800D3EC
	.incbin "baserom.gba", 0x00D3EC, 0x0000028

gUnk_0800D414:: @ 0800D414
	.incbin "baserom.gba", 0x00D414, 0x0000038

gUnk_0800D44C:: @ 0800D44C
	.incbin "baserom.gba", 0x00D44C, 0x0000073

gUnk_0800D4BF:: @ 0800D4BF
	.incbin "baserom.gba", 0x00D4BF, 0x000001D

gUnk_0800D4DC:: @ 0800D4DC
	.incbin "baserom.gba", 0x00D4DC, 0x00000C0

gUnk_0800D59C:: @ 0800D59C
	.incbin "baserom.gba", 0x00D59C, 0x0000049

gUnk_0800D5E5:: @ 0800D5E5
	.incbin "baserom.gba", 0x00D5E5, 0x0000027

gUnk_0800D60C:: @ 0800D60C
	.incbin "baserom.gba", 0x00D60C, 0x000001F

gUnk_0800D62B:: @ 0800D62B
	.incbin "baserom.gba", 0x00D62B, 0x0000089

gUnk_0800D6B4:: @ 0800D6B4
	.incbin "baserom.gba", 0x00D6B4, 0x0000006

gUnk_0800D6BA:: @ 0800D6BA
	.incbin "baserom.gba", 0x00D6BA, 0x0000016

gUnk_0800D6D0:: @ 0800D6D0
	.incbin "baserom.gba", 0x00D6D0, 0x0000020

gUnk_0800D6F0:: @ 0800D6F0
	.incbin "baserom.gba", 0x00D6F0, 0x0000012

gUnk_0800D702:: @ 0800D702
	.incbin "baserom.gba", 0x00D702, 0x0000001

gUnk_0800D703:: @ 0800D703
	.incbin "baserom.gba", 0x00D703, 0x000000D

gUnk_0800D710:: @ 0800D710
	.incbin "baserom.gba", 0x00D710, 0x0000015

gUnk_0800D725:: @ 0800D725
	.incbin "baserom.gba", 0x00D725, 0x0000003

gUnk_0800D728:: @ 0800D728
	.incbin "baserom.gba", 0x00D728, 0x0000044

gUnk_0800D76C:: @ 0800D76C
	.incbin "baserom.gba", 0x00D76C, 0x0000063

gUnk_0800D7CF:: @ 0800D7CF
	.incbin "baserom.gba", 0x00D7CF, 0x000000D

gUnk_0800D7DC:: @ 0800D7DC
	.incbin "baserom.gba", 0x00D7DC, 0x0000098

gUnk_0800D874:: @ 0800D874
	.incbin "baserom.gba", 0x00D874, 0x0000070

gUnk_0800D8E4:: @ 0800D8E4
	.incbin "baserom.gba", 0x00D8E4, 0x0000022

gUnk_0800D906:: @ 0800D906
	.incbin "baserom.gba", 0x00D906, 0x000004E

gUnk_0800D954:: @ 0800D954
	.incbin "baserom.gba", 0x00D954, 0x0000029

gUnk_0800D97D:: @ 0800D97D
	.incbin "baserom.gba", 0x00D97D, 0x0000004

gUnk_0800D981:: @ 0800D981
	.incbin "baserom.gba", 0x00D981, 0x0000090

gUnk_0800DA11:: @ 0800DA11
	.incbin "baserom.gba", 0x00DA11, 0x0000017

gUnk_0800DA28:: @ 0800DA28
	.incbin "baserom.gba", 0x00DA28, 0x0000024

gUnk_0800DA4C:: @ 0800DA4C
	.incbin "baserom.gba", 0x00DA4C, 0x0000001

gUnk_0800DA4D:: @ 0800DA4D
	.incbin "baserom.gba", 0x00DA4D, 0x0000013

gUnk_0800DA60:: @ 0800DA60
	.incbin "baserom.gba", 0x00DA60, 0x00000AE

gUnk_0800DB0E:: @ 0800DB0E
	.incbin "baserom.gba", 0x00DB0E, 0x000000A

gUnk_0800DB18:: @ 0800DB18
	.incbin "baserom.gba", 0x00DB18, 0x0000010

gUnk_0800DB28:: @ 0800DB28
	.incbin "baserom.gba", 0x00DB28, 0x0000022

gUnk_0800DB4A:: @ 0800DB4A
	.incbin "baserom.gba", 0x00DB4A, 0x000002E

gUnk_0800DB78:: @ 0800DB78
	.incbin "baserom.gba", 0x00DB78, 0x0000010

gUnk_0800DB88:: @ 0800DB88
	.incbin "baserom.gba", 0x00DB88, 0x0000088

gUnk_0800DC10:: @ 0800DC10
	.incbin "baserom.gba", 0x00DC10, 0x0000009

gUnk_0800DC19:: @ 0800DC19
	.incbin "baserom.gba", 0x00DC19, 0x0000078

gUnk_0800DC91:: @ 0800DC91
	.incbin "baserom.gba", 0x00DC91, 0x000001B

gUnk_0800DCAC:: @ 0800DCAC
	.incbin "baserom.gba", 0x00DCAC, 0x0000030

gUnk_0800DCDC:: @ 0800DCDC
	.incbin "baserom.gba", 0x00DCDC, 0x0000028

gUnk_0800DD04:: @ 0800DD04
	.incbin "baserom.gba", 0x00DD04, 0x000000C

gUnk_0800DD10:: @ 0800DD10
	.incbin "baserom.gba", 0x00DD10, 0x0000009

gUnk_0800DD19:: @ 0800DD19
	.incbin "baserom.gba", 0x00DD19, 0x0000009

gUnk_0800DD22:: @ 0800DD22
	.incbin "baserom.gba", 0x00DD22, 0x000006B

gUnk_0800DD8D:: @ 0800DD8D
	.incbin "baserom.gba", 0x00DD8D, 0x000001D

gUnk_0800DDAA:: @ 0800DDAA
	.incbin "baserom.gba", 0x00DDAA, 0x000003E

gUnk_0800DDE8:: @ 0800DDE8
	.incbin "baserom.gba", 0x00DDE8, 0x0000014

gUnk_0800DDFC:: @ 0800DDFC
	.incbin "baserom.gba", 0x00DDFC, 0x0000004

gUnk_0800DE00:: @ 0800DE00
	.incbin "baserom.gba", 0x00DE00, 0x0000078

gUnk_0800DE78:: @ 0800DE78
	.incbin "baserom.gba", 0x00DE78, 0x0000038

gUnk_0800DEB0:: @ 0800DEB0
	.incbin "baserom.gba", 0x00DEB0, 0x0000024

gUnk_0800DED4:: @ 0800DED4
	.incbin "baserom.gba", 0x00DED4, 0x0000022

gUnk_0800DEF6:: @ 0800DEF6
	.incbin "baserom.gba", 0x00DEF6, 0x0000011

gUnk_0800DF07:: @ 0800DF07
	.incbin "baserom.gba", 0x00DF07, 0x000001D

gUnk_0800DF24:: @ 0800DF24
	.incbin "baserom.gba", 0x00DF24, 0x0000090

gUnk_0800DFB4:: @ 0800DFB4
	.incbin "baserom.gba", 0x00DFB4, 0x000001C

gUnk_0800DFD0:: @ 0800DFD0
	.incbin "baserom.gba", 0x00DFD0, 0x0000007

gUnk_0800DFD7:: @ 0800DFD7
	.incbin "baserom.gba", 0x00DFD7, 0x0000007

gUnk_0800DFDE:: @ 0800DFDE
	.incbin "baserom.gba", 0x00DFDE, 0x0000006

gUnk_0800DFE4:: @ 0800DFE4
	.incbin "baserom.gba", 0x00DFE4, 0x000006C

gUnk_0800E050:: @ 0800E050
	.incbin "baserom.gba", 0x00E050, 0x000006C

gUnk_0800E0BC:: @ 0800E0BC
	.incbin "baserom.gba", 0x00E0BC, 0x000003A

gUnk_0800E0F6:: @ 0800E0F6
	.incbin "baserom.gba", 0x00E0F6, 0x000004A

gUnk_0800E140:: @ 0800E140
	.incbin "baserom.gba", 0x00E140, 0x0000013

gUnk_0800E153:: @ 0800E153
	.incbin "baserom.gba", 0x00E153, 0x0000001

gUnk_0800E154:: @ 0800E154
	.incbin "baserom.gba", 0x00E154, 0x0000071

gUnk_0800E1C5:: @ 0800E1C5
	.incbin "baserom.gba", 0x00E1C5, 0x000003B

gUnk_0800E200:: @ 0800E200
	.incbin "baserom.gba", 0x00E200, 0x0000100

gUnk_0800E300:: @ 0800E300
	.incbin "baserom.gba", 0x00E300, 0x0000005

gUnk_0800E305:: @ 0800E305
	.incbin "baserom.gba", 0x00E305, 0x0000002

gUnk_0800E307:: @ 0800E307
	.incbin "baserom.gba", 0x00E307, 0x0000005

gUnk_0800E30C:: @ 0800E30C
	.incbin "baserom.gba", 0x00E30C, 0x000001D

gUnk_0800E329:: @ 0800E329
	.incbin "baserom.gba", 0x00E329, 0x0000027

gUnk_0800E350:: @ 0800E350
	.incbin "baserom.gba", 0x00E350, 0x000009E

gUnk_0800E3EE:: @ 0800E3EE
	.incbin "baserom.gba", 0x00E3EE, 0x000000B

gUnk_0800E3F9:: @ 0800E3F9
	.incbin "baserom.gba", 0x00E3F9, 0x0000001

gUnk_0800E3FA:: @ 0800E3FA
	.incbin "baserom.gba", 0x00E3FA, 0x0000002

gUnk_0800E3FC:: @ 0800E3FC
	.incbin "baserom.gba", 0x00E3FC, 0x0000004

gUnk_0800E400:: @ 0800E400
	.incbin "baserom.gba", 0x00E400, 0x0000008

gUnk_0800E408:: @ 0800E408
	.incbin "baserom.gba", 0x00E408, 0x0000003

gUnk_0800E40B:: @ 0800E40B
	.incbin "baserom.gba", 0x00E40B, 0x0000006

gUnk_0800E411:: @ 0800E411
	.incbin "baserom.gba", 0x00E411, 0x000001F

gUnk_0800E430:: @ 0800E430
	.incbin "baserom.gba", 0x00E430, 0x0000004

gUnk_0800E434:: @ 0800E434
	.incbin "baserom.gba", 0x00E434, 0x0000038

gUnk_0800E46C:: @ 0800E46C
	.incbin "baserom.gba", 0x00E46C, 0x000001D

gUnk_0800E489:: @ 0800E489
	.incbin "baserom.gba", 0x00E489, 0x0000010

gUnk_0800E499:: @ 0800E499
	.incbin "baserom.gba", 0x00E499, 0x000000B

gUnk_0800E4A4:: @ 0800E4A4
	.incbin "baserom.gba", 0x00E4A4, 0x000003F

gUnk_0800E4E3:: @ 0800E4E3
	.incbin "baserom.gba", 0x00E4E3, 0x0000021

gUnk_0800E504:: @ 0800E504
	.incbin "baserom.gba", 0x00E504, 0x0000008

gUnk_0800E50C:: @ 0800E50C
	.incbin "baserom.gba", 0x00E50C, 0x0000038

gUnk_0800E544:: @ 0800E544
	.incbin "baserom.gba", 0x00E544, 0x0000048

gUnk_0800E58C:: @ 0800E58C
	.incbin "baserom.gba", 0x00E58C, 0x0000038

gUnk_0800E5C4:: @ 0800E5C4
	.incbin "baserom.gba", 0x00E5C4, 0x000003C

gUnk_0800E600:: @ 0800E600
	.incbin "baserom.gba", 0x00E600, 0x000000E

gUnk_0800E60E:: @ 0800E60E
	.incbin "baserom.gba", 0x00E60E, 0x000001E

gUnk_0800E62C:: @ 0800E62C
	.incbin "baserom.gba", 0x00E62C, 0x000002C

gUnk_0800E658:: @ 0800E658
	.incbin "baserom.gba", 0x00E658, 0x000002C

gUnk_0800E684:: @ 0800E684
	.incbin "baserom.gba", 0x00E684, 0x000002C

gUnk_0800E6B0:: @ 0800E6B0
	.incbin "baserom.gba", 0x00E6B0, 0x0000038

gUnk_0800E6E8:: @ 0800E6E8
	.incbin "baserom.gba", 0x00E6E8, 0x000001F

gUnk_0800E707:: @ 0800E707
	.incbin "baserom.gba", 0x00E707, 0x0000003

gUnk_0800E70A:: @ 0800E70A
	.incbin "baserom.gba", 0x00E70A, 0x000002A

gUnk_0800E734:: @ 0800E734
	.incbin "baserom.gba", 0x00E734, 0x000002C

gUnk_0800E760:: @ 0800E760
	.incbin "baserom.gba", 0x00E760, 0x0000079

gUnk_0800E7D9:: @ 0800E7D9
	.incbin "baserom.gba", 0x00E7D9, 0x000001B

gUnk_0800E7F4:: @ 0800E7F4
	.incbin "baserom.gba", 0x00E7F4, 0x0000006

gUnk_0800E7FA:: @ 0800E7FA
	.incbin "baserom.gba", 0x00E7FA, 0x0000029

gUnk_0800E823:: @ 0800E823
	.incbin "baserom.gba", 0x00E823, 0x0000001

gUnk_0800E824:: @ 0800E824
	.incbin "baserom.gba", 0x00E824, 0x00000B7

gUnk_0800E8DB:: @ 0800E8DB
	.incbin "baserom.gba", 0x00E8DB, 0x0000045

gUnk_0800E920:: @ 0800E920
	.incbin "baserom.gba", 0x00E920, 0x0000044

gUnk_0800E964:: @ 0800E964
	.incbin "baserom.gba", 0x00E964, 0x0000072

gUnk_0800E9D6:: @ 0800E9D6
	.incbin "baserom.gba", 0x00E9D6, 0x000001E

gUnk_0800E9F4:: @ 0800E9F4
	.incbin "baserom.gba", 0x00E9F4, 0x0000028

gUnk_0800EA1C:: @ 0800EA1C
	.incbin "baserom.gba", 0x00EA1C, 0x0000038

gUnk_0800EA54:: @ 0800EA54
	.incbin "baserom.gba", 0x00EA54, 0x0000050

gUnk_0800EAA4:: @ 0800EAA4
	.incbin "baserom.gba", 0x00EAA4, 0x0000047

gUnk_0800EAEB:: @ 0800EAEB
	.incbin "baserom.gba", 0x00EAEB, 0x000000D

gUnk_0800EAF8:: @ 0800EAF8
	.incbin "baserom.gba", 0x00EAF8, 0x0000034

gUnk_0800EB2C:: @ 0800EB2C
	.incbin "baserom.gba", 0x00EB2C, 0x0000038

gUnk_0800EB64:: @ 0800EB64
	.incbin "baserom.gba", 0x00EB64, 0x000005C

gUnk_0800EBC0:: @ 0800EBC0
	.incbin "baserom.gba", 0x00EBC0, 0x000001C

gUnk_0800EBDC:: @ 0800EBDC
	.incbin "baserom.gba", 0x00EBDC, 0x0000004

gUnk_0800EBE0:: @ 0800EBE0
	.incbin "baserom.gba", 0x00EBE0, 0x0000010

gUnk_0800EBF0:: @ 0800EBF0
	.incbin "baserom.gba", 0x00EBF0, 0x0000018

gUnk_0800EC08:: @ 0800EC08
	.incbin "baserom.gba", 0x00EC08, 0x000000C

gUnk_0800EC14:: @ 0800EC14
	.incbin "baserom.gba", 0x00EC14, 0x0000040

gUnk_0800EC54:: @ 0800EC54
	.incbin "baserom.gba", 0x00EC54, 0x000000D

gUnk_0800EC61:: @ 0800EC61
	.incbin "baserom.gba", 0x00EC61, 0x000002B

gUnk_0800EC8C:: @ 0800EC8C
	.incbin "baserom.gba", 0x00EC8C, 0x0000065

gUnk_0800ECF1:: @ 0800ECF1
	.incbin "baserom.gba", 0x00ECF1, 0x0000013

gUnk_0800ED04:: @ 0800ED04
	.incbin "baserom.gba", 0x00ED04, 0x0000008

gUnk_0800ED0C:: @ 0800ED0C
	.incbin "baserom.gba", 0x00ED0C, 0x0000001

gUnk_0800ED0D:: @ 0800ED0D
	.incbin "baserom.gba", 0x00ED0D, 0x000004F

gUnk_0800ED5C:: @ 0800ED5C
	.incbin "baserom.gba", 0x00ED5C, 0x0000034

gUnk_0800ED90:: @ 0800ED90
	.incbin "baserom.gba", 0x00ED90, 0x0000049

gUnk_0800EDD9:: @ 0800EDD9
	.incbin "baserom.gba", 0x00EDD9, 0x0000007

gUnk_0800EDE0:: @ 0800EDE0
	.incbin "baserom.gba", 0x00EDE0, 0x0000029

gUnk_0800EE09:: @ 0800EE09
	.incbin "baserom.gba", 0x00EE09, 0x0000047

gUnk_0800EE50:: @ 0800EE50
	.incbin "baserom.gba", 0x00EE50, 0x000003C

gUnk_0800EE8C:: @ 0800EE8C
	.incbin "baserom.gba", 0x00EE8C, 0x0000054

gUnk_0800EEE0:: @ 0800EEE0
	.incbin "baserom.gba", 0x00EEE0, 0x000001D

gUnk_0800EEFD:: @ 0800EEFD
	.incbin "baserom.gba", 0x00EEFD, 0x000000A

gUnk_0800EF07:: @ 0800EF07
	.incbin "baserom.gba", 0x00EF07, 0x000000B

gUnk_0800EF12:: @ 0800EF12
	.incbin "baserom.gba", 0x00EF12, 0x000002E

gUnk_0800EF40:: @ 0800EF40
	.incbin "baserom.gba", 0x00EF40, 0x0000053

gUnk_0800EF93:: @ 0800EF93
	.incbin "baserom.gba", 0x00EF93, 0x000002D

gUnk_0800EFC0:: @ 0800EFC0
	.incbin "baserom.gba", 0x00EFC0, 0x0000020

gUnk_0800EFE0:: @ 0800EFE0
	.incbin "baserom.gba", 0x00EFE0, 0x0000004

gUnk_0800EFE4:: @ 0800EFE4
	.incbin "baserom.gba", 0x00EFE4, 0x00000AC

gUnk_0800F090:: @ 0800F090
	.incbin "baserom.gba", 0x00F090, 0x0000004

gUnk_0800F094:: @ 0800F094
	.incbin "baserom.gba", 0x00F094, 0x0000042

gUnk_0800F0D6:: @ 0800F0D6
	.incbin "baserom.gba", 0x00F0D6, 0x000000C

gUnk_0800F0E2:: @ 0800F0E2
	.incbin "baserom.gba", 0x00F0E2, 0x0000010

gUnk_0800F0F2:: @ 0800F0F2
	.incbin "baserom.gba", 0x00F0F2, 0x0000001

gUnk_0800F0F3:: @ 0800F0F3
	.incbin "baserom.gba", 0x00F0F3, 0x0000001

gUnk_0800F0F4:: @ 0800F0F4
	.incbin "baserom.gba", 0x00F0F4, 0x0000058

gUnk_0800F14C:: @ 0800F14C
	.incbin "baserom.gba", 0x00F14C, 0x0000038

gUnk_0800F184:: @ 0800F184
	.incbin "baserom.gba", 0x00F184, 0x000005A

gUnk_0800F1DE:: @ 0800F1DE
	.incbin "baserom.gba", 0x00F1DE, 0x0000003

gUnk_0800F1E1:: @ 0800F1E1
	.incbin "baserom.gba", 0x00F1E1, 0x0000004

gUnk_0800F1E5:: @ 0800F1E5
	.incbin "baserom.gba", 0x00F1E5, 0x0000002

gUnk_0800F1E7:: @ 0800F1E7
	.incbin "baserom.gba", 0x00F1E7, 0x0000006

gUnk_0800F1ED:: @ 0800F1ED
	.incbin "baserom.gba", 0x00F1ED, 0x000000E

gUnk_0800F1FB:: @ 0800F1FB
	.incbin "baserom.gba", 0x00F1FB, 0x0000002

gUnk_0800F1FD:: @ 0800F1FD
	.incbin "baserom.gba", 0x00F1FD, 0x0000006

gUnk_0800F203:: @ 0800F203
	.incbin "baserom.gba", 0x00F203, 0x0000004

gUnk_0800F207:: @ 0800F207
	.incbin "baserom.gba", 0x00F207, 0x0000009

gUnk_0800F210:: @ 0800F210
	.incbin "baserom.gba", 0x00F210, 0x00000DB

gUnk_0800F2EB:: @ 0800F2EB
	.incbin "baserom.gba", 0x00F2EB, 0x0000005

gUnk_0800F2F0:: @ 0800F2F0
	.incbin "baserom.gba", 0x00F2F0, 0x0000002

gUnk_0800F2F2:: @ 0800F2F2
	.incbin "baserom.gba", 0x00F2F2, 0x0000011

gUnk_0800F303:: @ 0800F303
	.incbin "baserom.gba", 0x00F303, 0x0000099

gUnk_0800F39C:: @ 0800F39C
	.incbin "baserom.gba", 0x00F39C, 0x000003F

gUnk_0800F3DB:: @ 0800F3DB
	.incbin "baserom.gba", 0x00F3DB, 0x000000A

gUnk_0800F3E5:: @ 0800F3E5
	.incbin "baserom.gba", 0x00F3E5, 0x0000001

gUnk_0800F3E6:: @ 0800F3E6
	.incbin "baserom.gba", 0x00F3E6, 0x0000002

gUnk_0800F3E8:: @ 0800F3E8
	.incbin "baserom.gba", 0x00F3E8, 0x0000003

gUnk_0800F3EB:: @ 0800F3EB
	.incbin "baserom.gba", 0x00F3EB, 0x0000002

gUnk_0800F3ED:: @ 0800F3ED
	.incbin "baserom.gba", 0x00F3ED, 0x0000008

gUnk_0800F3F5:: @ 0800F3F5
	.incbin "baserom.gba", 0x00F3F5, 0x0000004

gUnk_0800F3F9:: @ 0800F3F9
	.incbin "baserom.gba", 0x00F3F9, 0x0000007

gUnk_0800F400:: @ 0800F400
	.incbin "baserom.gba", 0x00F400, 0x0000008

gUnk_0800F408:: @ 0800F408
	.incbin "baserom.gba", 0x00F408, 0x0000001

gUnk_0800F409:: @ 0800F409
	.incbin "baserom.gba", 0x00F409, 0x0000007

gUnk_0800F410:: @ 0800F410
	.incbin "baserom.gba", 0x00F410, 0x0000016

gUnk_0800F426:: @ 0800F426
	.incbin "baserom.gba", 0x00F426, 0x000000A

gUnk_0800F430:: @ 0800F430
	.incbin "baserom.gba", 0x00F430, 0x0000094

gUnk_0800F4C4:: @ 0800F4C4
	.incbin "baserom.gba", 0x00F4C4, 0x0000026

gUnk_0800F4EA:: @ 0800F4EA
	.incbin "baserom.gba", 0x00F4EA, 0x0000001

gUnk_0800F4EB:: @ 0800F4EB
	.incbin "baserom.gba", 0x00F4EB, 0x0000004

gUnk_0800F4EF:: @ 0800F4EF
	.incbin "baserom.gba", 0x00F4EF, 0x0000001

gUnk_0800F4F0:: @ 0800F4F0
	.incbin "baserom.gba", 0x00F4F0, 0x0000001

gUnk_0800F4F1:: @ 0800F4F1
	.incbin "baserom.gba", 0x00F4F1, 0x0000002

gUnk_0800F4F3:: @ 0800F4F3
	.incbin "baserom.gba", 0x00F4F3, 0x0000004

gUnk_0800F4F7:: @ 0800F4F7
	.incbin "baserom.gba", 0x00F4F7, 0x0000002

gUnk_0800F4F9:: @ 0800F4F9
	.incbin "baserom.gba", 0x00F4F9, 0x0000008

gUnk_0800F501:: @ 0800F501
	.incbin "baserom.gba", 0x00F501, 0x000000D

gUnk_0800F50E:: @ 0800F50E
	.incbin "baserom.gba", 0x00F50E, 0x0000046

gUnk_0800F554:: @ 0800F554
	.incbin "baserom.gba", 0x00F554, 0x0000030

gUnk_0800F584:: @ 0800F584
	.incbin "baserom.gba", 0x00F584, 0x000000B

gUnk_0800F58F:: @ 0800F58F
	.incbin "baserom.gba", 0x00F58F, 0x0000021

gUnk_0800F5B0:: @ 0800F5B0
	.incbin "baserom.gba", 0x00F5B0, 0x0000039

gUnk_0800F5E9:: @ 0800F5E9
	.incbin "baserom.gba", 0x00F5E9, 0x0000003

gUnk_0800F5EC:: @ 0800F5EC
	.incbin "baserom.gba", 0x00F5EC, 0x0000001

gUnk_0800F5ED:: @ 0800F5ED
	.incbin "baserom.gba", 0x00F5ED, 0x0000001

gUnk_0800F5EE:: @ 0800F5EE
	.incbin "baserom.gba", 0x00F5EE, 0x0000001

gUnk_0800F5EF:: @ 0800F5EF
	.incbin "baserom.gba", 0x00F5EF, 0x0000001

gUnk_0800F5F0:: @ 0800F5F0
	.incbin "baserom.gba", 0x00F5F0, 0x0000002

gUnk_0800F5F2:: @ 0800F5F2
	.incbin "baserom.gba", 0x00F5F2, 0x0000002

gUnk_0800F5F4:: @ 0800F5F4
	.incbin "baserom.gba", 0x00F5F4, 0x0000008

gUnk_0800F5FC:: @ 0800F5FC
	.incbin "baserom.gba", 0x00F5FC, 0x0000003

gUnk_0800F5FF:: @ 0800F5FF
	.incbin "baserom.gba", 0x00F5FF, 0x0000007

gUnk_0800F606:: @ 0800F606
	.incbin "baserom.gba", 0x00F606, 0x0000001

gUnk_0800F607:: @ 0800F607
	.incbin "baserom.gba", 0x00F607, 0x0000001

gUnk_0800F608:: @ 0800F608
	.incbin "baserom.gba", 0x00F608, 0x0000002

gUnk_0800F60A:: @ 0800F60A
	.incbin "baserom.gba", 0x00F60A, 0x000001E

gUnk_0800F628:: @ 0800F628
	.incbin "baserom.gba", 0x00F628, 0x0000028

gUnk_0800F650:: @ 0800F650
	.incbin "baserom.gba", 0x00F650, 0x0000038

gUnk_0800F688:: @ 0800F688
	.incbin "baserom.gba", 0x00F688, 0x0000018

gUnk_0800F6A0:: @ 0800F6A0
	.incbin "baserom.gba", 0x00F6A0, 0x0000028

gUnk_0800F6C8:: @ 0800F6C8
	.incbin "baserom.gba", 0x00F6C8, 0x0000018

gUnk_0800F6E0:: @ 0800F6E0
	.incbin "baserom.gba", 0x00F6E0, 0x0000009

gUnk_0800F6E9:: @ 0800F6E9
	.incbin "baserom.gba", 0x00F6E9, 0x0000003

gUnk_0800F6EC:: @ 0800F6EC
	.incbin "baserom.gba", 0x00F6EC, 0x0000001

gUnk_0800F6ED:: @ 0800F6ED
	.incbin "baserom.gba", 0x00F6ED, 0x0000001

gUnk_0800F6EE:: @ 0800F6EE
	.incbin "baserom.gba", 0x00F6EE, 0x0000001

gUnk_0800F6EF:: @ 0800F6EF
	.incbin "baserom.gba", 0x00F6EF, 0x0000001

gUnk_0800F6F0:: @ 0800F6F0
	.incbin "baserom.gba", 0x00F6F0, 0x0000001

gUnk_0800F6F1:: @ 0800F6F1
	.incbin "baserom.gba", 0x00F6F1, 0x0000001

gUnk_0800F6F2:: @ 0800F6F2
	.incbin "baserom.gba", 0x00F6F2, 0x0000001

gUnk_0800F6F3:: @ 0800F6F3
	.incbin "baserom.gba", 0x00F6F3, 0x0000001

gUnk_0800F6F4:: @ 0800F6F4
	.incbin "baserom.gba", 0x00F6F4, 0x0000005

gUnk_0800F6F9:: @ 0800F6F9
	.incbin "baserom.gba", 0x00F6F9, 0x0000005

gUnk_0800F6FE:: @ 0800F6FE
	.incbin "baserom.gba", 0x00F6FE, 0x0000004

gUnk_0800F702:: @ 0800F702
	.incbin "baserom.gba", 0x00F702, 0x0000004

gUnk_0800F706:: @ 0800F706
	.incbin "baserom.gba", 0x00F706, 0x0000018

gUnk_0800F71E:: @ 0800F71E
	.incbin "baserom.gba", 0x00F71E, 0x0000006

gUnk_0800F724:: @ 0800F724
	.incbin "baserom.gba", 0x00F724, 0x0000010

gUnk_0800F734:: @ 0800F734
	.incbin "baserom.gba", 0x00F734, 0x0000008

gUnk_0800F73C:: @ 0800F73C
	.incbin "baserom.gba", 0x00F73C, 0x00000AA

gUnk_0800F7E6:: @ 0800F7E6
	.incbin "baserom.gba", 0x00F7E6, 0x0000005

gUnk_0800F7EB:: @ 0800F7EB
	.incbin "baserom.gba", 0x00F7EB, 0x0000003

gUnk_0800F7EE:: @ 0800F7EE
	.incbin "baserom.gba", 0x00F7EE, 0x0000001

gUnk_0800F7EF:: @ 0800F7EF
	.incbin "baserom.gba", 0x00F7EF, 0x0000001

gUnk_0800F7F0:: @ 0800F7F0
	.incbin "baserom.gba", 0x00F7F0, 0x0000004

gUnk_0800F7F4:: @ 0800F7F4
	.incbin "baserom.gba", 0x00F7F4, 0x0000001

gUnk_0800F7F5:: @ 0800F7F5
	.incbin "baserom.gba", 0x00F7F5, 0x0000002

gUnk_0800F7F7:: @ 0800F7F7
	.incbin "baserom.gba", 0x00F7F7, 0x0000005

gUnk_0800F7FC:: @ 0800F7FC
	.incbin "baserom.gba", 0x00F7FC, 0x0000001

gUnk_0800F7FD:: @ 0800F7FD
	.incbin "baserom.gba", 0x00F7FD, 0x0000002

gUnk_0800F7FF:: @ 0800F7FF
	.incbin "baserom.gba", 0x00F7FF, 0x0000001

gUnk_0800F800:: @ 0800F800
	.incbin "baserom.gba", 0x00F800, 0x0000005

gUnk_0800F805:: @ 0800F805
	.incbin "baserom.gba", 0x00F805, 0x0000003

gUnk_0800F808:: @ 0800F808
	.incbin "baserom.gba", 0x00F808, 0x00000E7

gUnk_0800F8EF:: @ 0800F8EF
	.incbin "baserom.gba", 0x00F8EF, 0x0000001

gUnk_0800F8F0:: @ 0800F8F0
	.incbin "baserom.gba", 0x00F8F0, 0x0000001

gUnk_0800F8F1:: @ 0800F8F1
	.incbin "baserom.gba", 0x00F8F1, 0x0000001

gUnk_0800F8F2:: @ 0800F8F2
	.incbin "baserom.gba", 0x00F8F2, 0x0000001

gUnk_0800F8F3:: @ 0800F8F3
	.incbin "baserom.gba", 0x00F8F3, 0x0000001

gUnk_0800F8F4:: @ 0800F8F4
	.incbin "baserom.gba", 0x00F8F4, 0x0000001

gUnk_0800F8F5:: @ 0800F8F5
	.incbin "baserom.gba", 0x00F8F5, 0x0000003

gUnk_0800F8F8:: @ 0800F8F8
	.incbin "baserom.gba", 0x00F8F8, 0x0000001

gUnk_0800F8F9:: @ 0800F8F9
	.incbin "baserom.gba", 0x00F8F9, 0x0000007

gUnk_0800F900:: @ 0800F900
	.incbin "baserom.gba", 0x00F900, 0x0000002

gUnk_0800F902:: @ 0800F902
	.incbin "baserom.gba", 0x00F902, 0x0000014

gUnk_0800F916:: @ 0800F916
	.incbin "baserom.gba", 0x00F916, 0x00000DA

gUnk_0800F9F0:: @ 0800F9F0
	.incbin "baserom.gba", 0x00F9F0, 0x0000002

gUnk_0800F9F2:: @ 0800F9F2
	.incbin "baserom.gba", 0x00F9F2, 0x0000001

gUnk_0800F9F3:: @ 0800F9F3
	.incbin "baserom.gba", 0x00F9F3, 0x0000001

gUnk_0800F9F4:: @ 0800F9F4
	.incbin "baserom.gba", 0x00F9F4, 0x0000002

gUnk_0800F9F6:: @ 0800F9F6
	.incbin "baserom.gba", 0x00F9F6, 0x0000001

gUnk_0800F9F7:: @ 0800F9F7
	.incbin "baserom.gba", 0x00F9F7, 0x0000001

gUnk_0800F9F8:: @ 0800F9F8
	.incbin "baserom.gba", 0x00F9F8, 0x000000A

gUnk_0800FA02:: @ 0800FA02
	.incbin "baserom.gba", 0x00FA02, 0x0000005

gUnk_0800FA07:: @ 0800FA07
	.incbin "baserom.gba", 0x00FA07, 0x0000001

gUnk_0800FA08:: @ 0800FA08
	.incbin "baserom.gba", 0x00FA08, 0x0000001

gUnk_0800FA09:: @ 0800FA09
	.incbin "baserom.gba", 0x00FA09, 0x0000004

gUnk_0800FA0D:: @ 0800FA0D
	.incbin "baserom.gba", 0x00FA0D, 0x000006B

gUnk_0800FA78:: @ 0800FA78
	.incbin "baserom.gba", 0x00FA78, 0x0000048

gUnk_0800FAC0:: @ 0800FAC0
	.incbin "baserom.gba", 0x00FAC0, 0x0000024

gUnk_0800FAE4:: @ 0800FAE4
	.incbin "baserom.gba", 0x00FAE4, 0x000000F

gUnk_0800FAF3:: @ 0800FAF3
	.incbin "baserom.gba", 0x00FAF3, 0x0000002

gUnk_0800FAF5:: @ 0800FAF5
	.incbin "baserom.gba", 0x00FAF5, 0x0000001

gUnk_0800FAF6:: @ 0800FAF6
	.incbin "baserom.gba", 0x00FAF6, 0x0000001

gUnk_0800FAF7:: @ 0800FAF7
	.incbin "baserom.gba", 0x00FAF7, 0x0000001

gUnk_0800FAF8:: @ 0800FAF8
	.incbin "baserom.gba", 0x00FAF8, 0x0000005

gUnk_0800FAFD:: @ 0800FAFD
	.incbin "baserom.gba", 0x00FAFD, 0x0000001

gUnk_0800FAFE:: @ 0800FAFE
	.incbin "baserom.gba", 0x00FAFE, 0x0000001

gUnk_0800FAFF:: @ 0800FAFF
	.incbin "baserom.gba", 0x00FAFF, 0x0000001

gUnk_0800FB00:: @ 0800FB00
	.incbin "baserom.gba", 0x00FB00, 0x0000001

gUnk_0800FB01:: @ 0800FB01
	.incbin "baserom.gba", 0x00FB01, 0x0000001

gUnk_0800FB02:: @ 0800FB02
	.incbin "baserom.gba", 0x00FB02, 0x0000002

gUnk_0800FB04:: @ 0800FB04
	.incbin "baserom.gba", 0x00FB04, 0x0000004

gUnk_0800FB08:: @ 0800FB08
	.incbin "baserom.gba", 0x00FB08, 0x0000002

gUnk_0800FB0A:: @ 0800FB0A
	.incbin "baserom.gba", 0x00FB0A, 0x0000027

gUnk_0800FB31:: @ 0800FB31
	.incbin "baserom.gba", 0x00FB31, 0x0000013

gUnk_0800FB44:: @ 0800FB44
	.incbin "baserom.gba", 0x00FB44, 0x0000077

gUnk_0800FBBB:: @ 0800FBBB
	.incbin "baserom.gba", 0x00FBBB, 0x0000035

gUnk_0800FBF0:: @ 0800FBF0
	.incbin "baserom.gba", 0x00FBF0, 0x0000003

gUnk_0800FBF3:: @ 0800FBF3
	.incbin "baserom.gba", 0x00FBF3, 0x0000002

gUnk_0800FBF5:: @ 0800FBF5
	.incbin "baserom.gba", 0x00FBF5, 0x0000001

gUnk_0800FBF6:: @ 0800FBF6
	.incbin "baserom.gba", 0x00FBF6, 0x0000002

gUnk_0800FBF8:: @ 0800FBF8
	.incbin "baserom.gba", 0x00FBF8, 0x0000001

gUnk_0800FBF9:: @ 0800FBF9
	.incbin "baserom.gba", 0x00FBF9, 0x0000001

gUnk_0800FBFA:: @ 0800FBFA
	.incbin "baserom.gba", 0x00FBFA, 0x0000001

gUnk_0800FBFB:: @ 0800FBFB
	.incbin "baserom.gba", 0x00FBFB, 0x0000001

gUnk_0800FBFC:: @ 0800FBFC
	.incbin "baserom.gba", 0x00FBFC, 0x0000003

gUnk_0800FBFF:: @ 0800FBFF
	.incbin "baserom.gba", 0x00FBFF, 0x0000001

gUnk_0800FC00:: @ 0800FC00
	.incbin "baserom.gba", 0x00FC00, 0x0000001

gUnk_0800FC01:: @ 0800FC01
	.incbin "baserom.gba", 0x00FC01, 0x0000004

gUnk_0800FC05:: @ 0800FC05
	.incbin "baserom.gba", 0x00FC05, 0x0000001

gUnk_0800FC06:: @ 0800FC06
	.incbin "baserom.gba", 0x00FC06, 0x0000002

gUnk_0800FC08:: @ 0800FC08
	.incbin "baserom.gba", 0x00FC08, 0x0000001

gUnk_0800FC09:: @ 0800FC09
	.incbin "baserom.gba", 0x00FC09, 0x0000005

gUnk_0800FC0E:: @ 0800FC0E
	.incbin "baserom.gba", 0x00FC0E, 0x0000016

gUnk_0800FC24:: @ 0800FC24
	.incbin "baserom.gba", 0x00FC24, 0x00000C6

gUnk_0800FCEA:: @ 0800FCEA
	.incbin "baserom.gba", 0x00FCEA, 0x0000004

gUnk_0800FCEE:: @ 0800FCEE
	.incbin "baserom.gba", 0x00FCEE, 0x0000004

gUnk_0800FCF2:: @ 0800FCF2
	.incbin "baserom.gba", 0x00FCF2, 0x0000001

gUnk_0800FCF3:: @ 0800FCF3
	.incbin "baserom.gba", 0x00FCF3, 0x0000002

gUnk_0800FCF5:: @ 0800FCF5
	.incbin "baserom.gba", 0x00FCF5, 0x0000002

gUnk_0800FCF7:: @ 0800FCF7
	.incbin "baserom.gba", 0x00FCF7, 0x0000001

gUnk_0800FCF8:: @ 0800FCF8
	.incbin "baserom.gba", 0x00FCF8, 0x0000002

gUnk_0800FCFA:: @ 0800FCFA
	.incbin "baserom.gba", 0x00FCFA, 0x0000001

gUnk_0800FCFB:: @ 0800FCFB
	.incbin "baserom.gba", 0x00FCFB, 0x0000001

gUnk_0800FCFC:: @ 0800FCFC
	.incbin "baserom.gba", 0x00FCFC, 0x0000002

gUnk_0800FCFE:: @ 0800FCFE
	.incbin "baserom.gba", 0x00FCFE, 0x0000001

gUnk_0800FCFF:: @ 0800FCFF
	.incbin "baserom.gba", 0x00FCFF, 0x0000001

gUnk_0800FD00:: @ 0800FD00
	.incbin "baserom.gba", 0x00FD00, 0x0000001

gUnk_0800FD01:: @ 0800FD01
	.incbin "baserom.gba", 0x00FD01, 0x0000003

gUnk_0800FD04:: @ 0800FD04
	.incbin "baserom.gba", 0x00FD04, 0x0000001

gUnk_0800FD05:: @ 0800FD05
	.incbin "baserom.gba", 0x00FD05, 0x0000007

gUnk_0800FD0C:: @ 0800FD0C
	.incbin "baserom.gba", 0x00FD0C, 0x000000A

gUnk_0800FD16:: @ 0800FD16
	.incbin "baserom.gba", 0x00FD16, 0x000000B

gUnk_0800FD21:: @ 0800FD21
	.incbin "baserom.gba", 0x00FD21, 0x000005F

gUnk_0800FD80:: @ 0800FD80
	.incbin "baserom.gba", 0x00FD80, 0x0000020

gUnk_0800FDA0:: @ 0800FDA0
	.incbin "baserom.gba", 0x00FDA0, 0x000002C

gUnk_0800FDCC:: @ 0800FDCC
	.incbin "baserom.gba", 0x00FDCC, 0x0000026

gUnk_0800FDF2:: @ 0800FDF2
	.incbin "baserom.gba", 0x00FDF2, 0x0000001

gUnk_0800FDF3:: @ 0800FDF3
	.incbin "baserom.gba", 0x00FDF3, 0x0000007

gUnk_0800FDFA:: @ 0800FDFA
	.incbin "baserom.gba", 0x00FDFA, 0x0000002

gUnk_0800FDFC:: @ 0800FDFC
	.incbin "baserom.gba", 0x00FDFC, 0x0000002

gUnk_0800FDFE:: @ 0800FDFE
	.incbin "baserom.gba", 0x00FDFE, 0x0000001

gUnk_0800FDFF:: @ 0800FDFF
	.incbin "baserom.gba", 0x00FDFF, 0x0000001

gUnk_0800FE00:: @ 0800FE00
	.incbin "baserom.gba", 0x00FE00, 0x0000001

gUnk_0800FE01:: @ 0800FE01
	.incbin "baserom.gba", 0x00FE01, 0x0000001

gUnk_0800FE02:: @ 0800FE02
	.incbin "baserom.gba", 0x00FE02, 0x0000002

gUnk_0800FE04:: @ 0800FE04
	.incbin "baserom.gba", 0x00FE04, 0x0000002

gUnk_0800FE06:: @ 0800FE06
	.incbin "baserom.gba", 0x00FE06, 0x0000001

gUnk_0800FE07:: @ 0800FE07
	.incbin "baserom.gba", 0x00FE07, 0x0000001

gUnk_0800FE08:: @ 0800FE08
	.incbin "baserom.gba", 0x00FE08, 0x0000001

gUnk_0800FE09:: @ 0800FE09
	.incbin "baserom.gba", 0x00FE09, 0x0000037

gUnk_0800FE40:: @ 0800FE40
	.incbin "baserom.gba", 0x00FE40, 0x0000004

gUnk_0800FE44:: @ 0800FE44
	.incbin "baserom.gba", 0x00FE44, 0x0000020

gUnk_0800FE64:: @ 0800FE64
	.incbin "baserom.gba", 0x00FE64, 0x0000024

gUnk_0800FE88:: @ 0800FE88
	.incbin "baserom.gba", 0x00FE88, 0x0000034

gUnk_0800FEBC:: @ 0800FEBC
	.incbin "baserom.gba", 0x00FEBC, 0x0000034

gUnk_0800FEF0:: @ 0800FEF0
	.incbin "baserom.gba", 0x00FEF0, 0x0000002

gUnk_0800FEF2:: @ 0800FEF2
	.incbin "baserom.gba", 0x00FEF2, 0x0000007

gUnk_0800FEF9:: @ 0800FEF9
	.incbin "baserom.gba", 0x00FEF9, 0x0000003

gUnk_0800FEFC:: @ 0800FEFC
	.incbin "baserom.gba", 0x00FEFC, 0x0000002

gUnk_0800FEFE:: @ 0800FEFE
	.incbin "baserom.gba", 0x00FEFE, 0x0000003

gUnk_0800FF01:: @ 0800FF01
	.incbin "baserom.gba", 0x00FF01, 0x0000002

gUnk_0800FF03:: @ 0800FF03
	.incbin "baserom.gba", 0x00FF03, 0x0000001

gUnk_0800FF04:: @ 0800FF04
	.incbin "baserom.gba", 0x00FF04, 0x0000001

gUnk_0800FF05:: @ 0800FF05
	.incbin "baserom.gba", 0x00FF05, 0x0000001

gUnk_0800FF06:: @ 0800FF06
	.incbin "baserom.gba", 0x00FF06, 0x0000002

gUnk_0800FF08:: @ 0800FF08
	.incbin "baserom.gba", 0x00FF08, 0x0000010

gUnk_0800FF18:: @ 0800FF18
	.incbin "baserom.gba", 0x00FF18, 0x0000012

gUnk_0800FF2A:: @ 0800FF2A
	.incbin "baserom.gba", 0x00FF2A, 0x000004A

gUnk_0800FF74:: @ 0800FF74
	.incbin "baserom.gba", 0x00FF74, 0x000003C

gUnk_0800FFB0:: @ 0800FFB0
	.incbin "baserom.gba", 0x00FFB0, 0x000000B

gUnk_0800FFBB:: @ 0800FFBB
	.incbin "baserom.gba", 0x00FFBB, 0x000001B

gUnk_0800FFD6:: @ 0800FFD6
	.incbin "baserom.gba", 0x00FFD6, 0x0000018

gUnk_0800FFEE:: @ 0800FFEE
	.incbin "baserom.gba", 0x00FFEE, 0x0000008

gUnk_0800FFF6:: @ 0800FFF6
	.incbin "baserom.gba", 0x00FFF6, 0x0000006

gUnk_0800FFFC:: @ 0800FFFC
	.incbin "baserom.gba", 0x00FFFC, 0x0000001

gUnk_0800FFFD:: @ 0800FFFD
	.incbin "baserom.gba", 0x00FFFD, 0x0000002

gUnk_0800FFFF:: @ 0800FFFF
	.incbin "baserom.gba", 0x00FFFF, 0x0000001

gUnk_08010000:: @ 08010000
	.incbin "baserom.gba", 0x010000, 0x0000001

gUnk_08010001:: @ 08010001
	.incbin "baserom.gba", 0x010001, 0x0000001

gUnk_08010002:: @ 08010002
	.incbin "baserom.gba", 0x010002, 0x0000001

gUnk_08010003:: @ 08010003
	.incbin "baserom.gba", 0x010003, 0x0000002

gUnk_08010005:: @ 08010005
	.incbin "baserom.gba", 0x010005, 0x0000002

gUnk_08010007:: @ 08010007
	.incbin "baserom.gba", 0x010007, 0x0000001

gUnk_08010008:: @ 08010008
	.incbin "baserom.gba", 0x010008, 0x0000001

gUnk_08010009:: @ 08010009
	.incbin "baserom.gba", 0x010009, 0x0000001

gUnk_0801000A:: @ 0801000A
	.incbin "baserom.gba", 0x01000A, 0x0000002

gUnk_0801000C:: @ 0801000C
	.incbin "baserom.gba", 0x01000C, 0x0000001

gUnk_0801000D:: @ 0801000D
	.incbin "baserom.gba", 0x01000D, 0x0000001

gUnk_0801000E:: @ 0801000E
	.incbin "baserom.gba", 0x01000E, 0x0000001

gUnk_0801000F:: @ 0801000F
	.incbin "baserom.gba", 0x01000F, 0x0000009

gUnk_08010018:: @ 08010018
	.incbin "baserom.gba", 0x010018, 0x0000003

gUnk_0801001B:: @ 0801001B
	.incbin "baserom.gba", 0x01001B, 0x0000002

gUnk_0801001D:: @ 0801001D
	.incbin "baserom.gba", 0x01001D, 0x0000006

gUnk_08010023:: @ 08010023
	.incbin "baserom.gba", 0x010023, 0x0000021

gUnk_08010044:: @ 08010044
	.incbin "baserom.gba", 0x010044, 0x0000054

gUnk_08010098:: @ 08010098
	.incbin "baserom.gba", 0x010098, 0x0000001

gUnk_08010099:: @ 08010099
	.incbin "baserom.gba", 0x010099, 0x0000028

gUnk_080100C1:: @ 080100C1
	.incbin "baserom.gba", 0x0100C1, 0x0000007

gUnk_080100C8:: @ 080100C8
	.incbin "baserom.gba", 0x0100C8, 0x000002D

gUnk_080100F5:: @ 080100F5
	.incbin "baserom.gba", 0x0100F5, 0x0000007

gUnk_080100FC:: @ 080100FC
	.incbin "baserom.gba", 0x0100FC, 0x0000002

gUnk_080100FE:: @ 080100FE
	.incbin "baserom.gba", 0x0100FE, 0x0000001

gUnk_080100FF:: @ 080100FF
	.incbin "baserom.gba", 0x0100FF, 0x0000001

gUnk_08010100:: @ 08010100
	.incbin "baserom.gba", 0x010100, 0x0000002

gUnk_08010102:: @ 08010102
	.incbin "baserom.gba", 0x010102, 0x0000001

gUnk_08010103:: @ 08010103
	.incbin "baserom.gba", 0x010103, 0x0000002

gUnk_08010105:: @ 08010105
	.incbin "baserom.gba", 0x010105, 0x0000001

gUnk_08010106:: @ 08010106
	.incbin "baserom.gba", 0x010106, 0x0000004

gUnk_0801010A:: @ 0801010A
	.incbin "baserom.gba", 0x01010A, 0x0000007

gUnk_08010111:: @ 08010111
	.incbin "baserom.gba", 0x010111, 0x000000F

gUnk_08010120:: @ 08010120
	.incbin "baserom.gba", 0x010120, 0x0000010

gUnk_08010130:: @ 08010130
	.incbin "baserom.gba", 0x010130, 0x0000018

gUnk_08010148:: @ 08010148
	.incbin "baserom.gba", 0x010148, 0x00000B2

gUnk_080101FA:: @ 080101FA
	.incbin "baserom.gba", 0x0101FA, 0x0000003

gUnk_080101FD:: @ 080101FD
	.incbin "baserom.gba", 0x0101FD, 0x0000002

gUnk_080101FF:: @ 080101FF
	.incbin "baserom.gba", 0x0101FF, 0x0000001

gUnk_08010200:: @ 08010200
	.incbin "baserom.gba", 0x010200, 0x0000003

gUnk_08010203:: @ 08010203
	.incbin "baserom.gba", 0x010203, 0x0000004

gUnk_08010207:: @ 08010207
	.incbin "baserom.gba", 0x010207, 0x0000001

gUnk_08010208:: @ 08010208
	.incbin "baserom.gba", 0x010208, 0x0000004

gUnk_0801020C:: @ 0801020C
	.incbin "baserom.gba", 0x01020C, 0x0000014

gUnk_08010220:: @ 08010220
	.incbin "baserom.gba", 0x010220, 0x0000016

gUnk_08010236:: @ 08010236
	.incbin "baserom.gba", 0x010236, 0x000002E

gUnk_08010264:: @ 08010264
	.incbin "baserom.gba", 0x010264, 0x0000030

gUnk_08010294:: @ 08010294
	.incbin "baserom.gba", 0x010294, 0x000004C

gUnk_080102E0:: @ 080102E0
	.incbin "baserom.gba", 0x0102E0, 0x000001B

gUnk_080102FB:: @ 080102FB
	.incbin "baserom.gba", 0x0102FB, 0x0000002

gUnk_080102FD:: @ 080102FD
	.incbin "baserom.gba", 0x0102FD, 0x0000001

gUnk_080102FE:: @ 080102FE
	.incbin "baserom.gba", 0x0102FE, 0x0000005

gUnk_08010303:: @ 08010303
	.incbin "baserom.gba", 0x010303, 0x0000001

gUnk_08010304:: @ 08010304
	.incbin "baserom.gba", 0x010304, 0x0000001

gUnk_08010305:: @ 08010305
	.incbin "baserom.gba", 0x010305, 0x0000005

gUnk_0801030A:: @ 0801030A
	.incbin "baserom.gba", 0x01030A, 0x0000002

gUnk_0801030C:: @ 0801030C
	.incbin "baserom.gba", 0x01030C, 0x0000014

gUnk_08010320:: @ 08010320
	.incbin "baserom.gba", 0x010320, 0x0000090

gUnk_080103B0:: @ 080103B0
	.incbin "baserom.gba", 0x0103B0, 0x0000020

gUnk_080103D0:: @ 080103D0
	.incbin "baserom.gba", 0x0103D0, 0x0000028

gUnk_080103F8:: @ 080103F8
	.incbin "baserom.gba", 0x0103F8, 0x0000005

gUnk_080103FD:: @ 080103FD
	.incbin "baserom.gba", 0x0103FD, 0x0000003

gUnk_08010400:: @ 08010400
	.incbin "baserom.gba", 0x010400, 0x0000006

gUnk_08010406:: @ 08010406
	.incbin "baserom.gba", 0x010406, 0x0000001

gUnk_08010407:: @ 08010407
	.incbin "baserom.gba", 0x010407, 0x0000003

gUnk_0801040A:: @ 0801040A
	.incbin "baserom.gba", 0x01040A, 0x000001E

gUnk_08010428:: @ 08010428
	.incbin "baserom.gba", 0x010428, 0x000002C

gUnk_08010454:: @ 08010454
	.incbin "baserom.gba", 0x010454, 0x000002C

gUnk_08010480:: @ 08010480
	.incbin "baserom.gba", 0x010480, 0x0000020

gUnk_080104A0:: @ 080104A0
	.incbin "baserom.gba", 0x0104A0, 0x000004C

gUnk_080104EC:: @ 080104EC
	.incbin "baserom.gba", 0x0104EC, 0x0000013

gUnk_080104FF:: @ 080104FF
	.incbin "baserom.gba", 0x0104FF, 0x0000002

gUnk_08010501:: @ 08010501
	.incbin "baserom.gba", 0x010501, 0x0000001

gUnk_08010502:: @ 08010502
	.incbin "baserom.gba", 0x010502, 0x0000001

gUnk_08010503:: @ 08010503
	.incbin "baserom.gba", 0x010503, 0x0000007

gUnk_0801050A:: @ 0801050A
	.incbin "baserom.gba", 0x01050A, 0x0000001

gUnk_0801050B:: @ 0801050B
	.incbin "baserom.gba", 0x01050B, 0x000001B

gUnk_08010526:: @ 08010526
	.incbin "baserom.gba", 0x010526, 0x0000079

gUnk_0801059F:: @ 0801059F
	.incbin "baserom.gba", 0x01059F, 0x000002A

gUnk_080105C9:: @ 080105C9
	.incbin "baserom.gba", 0x0105C9, 0x0000032

gUnk_080105FB:: @ 080105FB
	.incbin "baserom.gba", 0x0105FB, 0x0000004

gUnk_080105FF:: @ 080105FF
	.incbin "baserom.gba", 0x0105FF, 0x0000001

gUnk_08010600:: @ 08010600
	.incbin "baserom.gba", 0x010600, 0x000000A

gUnk_0801060A:: @ 0801060A
	.incbin "baserom.gba", 0x01060A, 0x0000003

gUnk_0801060D:: @ 0801060D
	.incbin "baserom.gba", 0x01060D, 0x000000A

gUnk_08010617:: @ 08010617
	.incbin "baserom.gba", 0x010617, 0x0000005

gUnk_0801061C:: @ 0801061C
	.incbin "baserom.gba", 0x01061C, 0x0000028

gUnk_08010644:: @ 08010644
	.incbin "baserom.gba", 0x010644, 0x000000C

gUnk_08010650:: @ 08010650
	.incbin "baserom.gba", 0x010650, 0x0000024

gUnk_08010674:: @ 08010674
	.incbin "baserom.gba", 0x010674, 0x0000038

gUnk_080106AC:: @ 080106AC
	.incbin "baserom.gba", 0x0106AC, 0x0000054

gUnk_08010700:: @ 08010700
	.incbin "baserom.gba", 0x010700, 0x0000001

gUnk_08010701:: @ 08010701
	.incbin "baserom.gba", 0x010701, 0x0000004

gUnk_08010705:: @ 08010705
	.incbin "baserom.gba", 0x010705, 0x0000009

gUnk_0801070E:: @ 0801070E
	.incbin "baserom.gba", 0x01070E, 0x0000026

gUnk_08010734:: @ 08010734
	.incbin "baserom.gba", 0x010734, 0x0000060

gUnk_08010794:: @ 08010794
	.incbin "baserom.gba", 0x010794, 0x000003C

gUnk_080107D0:: @ 080107D0
	.incbin "baserom.gba", 0x0107D0, 0x000003A

gUnk_0801080A:: @ 0801080A
	.incbin "baserom.gba", 0x01080A, 0x0000001

gUnk_0801080B:: @ 0801080B
	.incbin "baserom.gba", 0x01080B, 0x000000A

gUnk_08010815:: @ 08010815
	.incbin "baserom.gba", 0x010815, 0x0000006

gUnk_0801081B:: @ 0801081B
	.incbin "baserom.gba", 0x01081B, 0x00000B5

gUnk_080108D0:: @ 080108D0
	.incbin "baserom.gba", 0x0108D0, 0x000002F

gUnk_080108FF:: @ 080108FF
	.incbin "baserom.gba", 0x0108FF, 0x000000D

gUnk_0801090C:: @ 0801090C
	.incbin "baserom.gba", 0x01090C, 0x0000003

gUnk_0801090F:: @ 0801090F
	.incbin "baserom.gba", 0x01090F, 0x0000008

gUnk_08010917:: @ 08010917
	.incbin "baserom.gba", 0x010917, 0x000004D

gUnk_08010964:: @ 08010964
	.incbin "baserom.gba", 0x010964, 0x000003C

gUnk_080109A0:: @ 080109A0
	.incbin "baserom.gba", 0x0109A0, 0x0000050

gUnk_080109F0:: @ 080109F0
	.incbin "baserom.gba", 0x0109F0, 0x0000006

gUnk_080109F6:: @ 080109F6
	.incbin "baserom.gba", 0x0109F6, 0x000001E

gUnk_08010A14:: @ 08010A14
	.incbin "baserom.gba", 0x010A14, 0x000000B

gUnk_08010A1F:: @ 08010A1F
	.incbin "baserom.gba", 0x010A1F, 0x0000019

gUnk_08010A38:: @ 08010A38
	.incbin "baserom.gba", 0x010A38, 0x0000024

gUnk_08010A5C:: @ 08010A5C
	.incbin "baserom.gba", 0x010A5C, 0x000003C

gUnk_08010A98:: @ 08010A98
	.incbin "baserom.gba", 0x010A98, 0x000004C

gUnk_08010AE4:: @ 08010AE4
	.incbin "baserom.gba", 0x010AE4, 0x0000020

gUnk_08010B04:: @ 08010B04
	.incbin "baserom.gba", 0x010B04, 0x0000064

gUnk_08010B68:: @ 08010B68
	.incbin "baserom.gba", 0x010B68, 0x000004C

gUnk_08010BB4:: @ 08010BB4
	.incbin "baserom.gba", 0x010BB4, 0x0000038

gUnk_08010BEC:: @ 08010BEC
	.incbin "baserom.gba", 0x010BEC, 0x000000D

gUnk_08010BF9:: @ 08010BF9
	.incbin "baserom.gba", 0x010BF9, 0x0000005

gUnk_08010BFE:: @ 08010BFE
	.incbin "baserom.gba", 0x010BFE, 0x000001C

gUnk_08010C1A:: @ 08010C1A
	.incbin "baserom.gba", 0x010C1A, 0x00000E9

gUnk_08010D03:: @ 08010D03
	.incbin "baserom.gba", 0x010D03, 0x00000FD

gUnk_08010E00:: @ 08010E00
	.incbin "baserom.gba", 0x010E00, 0x000000D

gUnk_08010E0D:: @ 08010E0D
	.incbin "baserom.gba", 0x010E0D, 0x00000F3

gUnk_08010F00:: @ 08010F00
	.incbin "baserom.gba", 0x010F00, 0x00000FF

gUnk_08010FFF:: @ 08010FFF
	.incbin "baserom.gba", 0x010FFF, 0x0000001

gUnk_08011000:: @ 08011000
	.incbin "baserom.gba", 0x011000, 0x0000001

gUnk_08011001:: @ 08011001
	.incbin "baserom.gba", 0x011001, 0x000001E

gUnk_0801101F:: @ 0801101F
	.incbin "baserom.gba", 0x01101F, 0x0000055

gUnk_08011074:: @ 08011074
	.incbin "baserom.gba", 0x011074, 0x000000F

gUnk_08011083:: @ 08011083
	.incbin "baserom.gba", 0x011083, 0x0000059

gUnk_080110DC:: @ 080110DC
	.incbin "baserom.gba", 0x0110DC, 0x000000C

gUnk_080110E8:: @ 080110E8
	.incbin "baserom.gba", 0x0110E8, 0x0000040

gUnk_08011128:: @ 08011128
	.incbin "baserom.gba", 0x011128, 0x00000A4

gUnk_080111CC:: @ 080111CC
	.incbin "baserom.gba", 0x0111CC, 0x000003C

gUnk_08011208:: @ 08011208
	.incbin "baserom.gba", 0x011208, 0x0000015

gUnk_0801121D:: @ 0801121D
	.incbin "baserom.gba", 0x01121D, 0x00000A7

gUnk_080112C4:: @ 080112C4
	.incbin "baserom.gba", 0x0112C4, 0x000004B

gUnk_0801130F:: @ 0801130F
	.incbin "baserom.gba", 0x01130F, 0x0000019

gUnk_08011328:: @ 08011328
	.incbin "baserom.gba", 0x011328, 0x00000DB

gUnk_08011403:: @ 08011403
	.incbin "baserom.gba", 0x011403, 0x00001CD

gUnk_080115D0:: @ 080115D0
	.incbin "baserom.gba", 0x0115D0, 0x0000038

gUnk_08011608:: @ 08011608
	.incbin "baserom.gba", 0x011608, 0x0000038

gUnk_08011640:: @ 08011640
	.incbin "baserom.gba", 0x011640, 0x0000068

gUnk_080116A8:: @ 080116A8
	.incbin "baserom.gba", 0x0116A8, 0x0000161

gUnk_08011809:: @ 08011809
	.incbin "baserom.gba", 0x011809, 0x0000033

gUnk_0801183C:: @ 0801183C
	.incbin "baserom.gba", 0x01183C, 0x0000098

gUnk_080118D4:: @ 080118D4
	.incbin "baserom.gba", 0x0118D4, 0x000005C

gUnk_08011930:: @ 08011930
	.incbin "baserom.gba", 0x011930, 0x0000010

gUnk_08011940:: @ 08011940
	.incbin "baserom.gba", 0x011940, 0x000000C

gUnk_0801194C:: @ 0801194C
	.incbin "baserom.gba", 0x01194C, 0x000000C

gUnk_08011958:: @ 08011958
	.incbin "baserom.gba", 0x011958, 0x000000C

gUnk_08011964:: @ 08011964
	.incbin "baserom.gba", 0x011964, 0x000004C

gUnk_080119B0:: @ 080119B0
	.incbin "baserom.gba", 0x0119B0, 0x0000028

gUnk_080119D8:: @ 080119D8
	.incbin "baserom.gba", 0x0119D8, 0x000000C

gUnk_080119E4:: @ 080119E4
	.incbin "baserom.gba", 0x0119E4, 0x000000C

gUnk_080119F0:: @ 080119F0
	.incbin "baserom.gba", 0x0119F0, 0x0000014

gUnk_08011A04:: @ 08011A04
	.incbin "baserom.gba", 0x011A04, 0x0000028

gUnk_08011A2C:: @ 08011A2C
	.incbin "baserom.gba", 0x011A2C, 0x0000038

gUnk_08011A64:: @ 08011A64
	.incbin "baserom.gba", 0x011A64, 0x0000080

gUnk_08011AE4:: @ 08011AE4
	.incbin "baserom.gba", 0x011AE4, 0x0000020

gUnk_08011B04:: @ 08011B04
	.incbin "baserom.gba", 0x011B04, 0x000001C

gUnk_08011B20:: @ 08011B20
	.incbin "baserom.gba", 0x011B20, 0x0000020

gUnk_08011B40:: @ 08011B40
	.incbin "baserom.gba", 0x011B40, 0x00000A4

gUnk_08011BE4:: @ 08011BE4
	.incbin "baserom.gba", 0x011BE4, 0x0000020

gUnk_08011C04:: @ 08011C04
	.incbin "baserom.gba", 0x011C04, 0x000004C

gUnk_08011C50:: @ 08011C50
	.incbin "baserom.gba", 0x011C50, 0x000002C

gUnk_08011C7C:: @ 08011C7C
	.incbin "baserom.gba", 0x011C7C, 0x00000AC

gUnk_08011D28:: @ 08011D28
	.incbin "baserom.gba", 0x011D28, 0x00000AC

gUnk_08011DD4:: @ 08011DD4
	.incbin "baserom.gba", 0x011DD4, 0x0000030

gUnk_08011E04:: @ 08011E04
	.incbin "baserom.gba", 0x011E04, 0x000007C

gUnk_08011E80:: @ 08011E80
	.incbin "baserom.gba", 0x011E80, 0x000008C

gUnk_08011F0C:: @ 08011F0C
	.incbin "baserom.gba", 0x011F0C, 0x000008C

gUnk_08011F98:: @ 08011F98
	.incbin "baserom.gba", 0x011F98, 0x000008C

gUnk_08012024:: @ 08012024
	.incbin "baserom.gba", 0x012024, 0x000006D

gUnk_08012091:: @ 08012091
	.incbin "baserom.gba", 0x012091, 0x000001F

gUnk_080120B0:: @ 080120B0
	.incbin "baserom.gba", 0x0120B0, 0x000003D

gUnk_080120ED:: @ 080120ED
	.incbin "baserom.gba", 0x0120ED, 0x000000E

gUnk_080120FB:: @ 080120FB
	.incbin "baserom.gba", 0x0120FB, 0x0000041

gUnk_0801213C:: @ 0801213C
	.incbin "baserom.gba", 0x01213C, 0x000008C

gUnk_080121C8:: @ 080121C8
	.incbin "baserom.gba", 0x0121C8, 0x0000038

gUnk_08012200:: @ 08012200
	.incbin "baserom.gba", 0x012200, 0x0000038

gUnk_08012238:: @ 08012238
	.incbin "baserom.gba", 0x012238, 0x0000038

gUnk_08012270:: @ 08012270
	.incbin "baserom.gba", 0x012270, 0x00000BC

gUnk_0801232C:: @ 0801232C
	.incbin "baserom.gba", 0x01232C, 0x0000034

gUnk_08012360:: @ 08012360
	.incbin "baserom.gba", 0x012360, 0x00000B0

gUnk_08012410:: @ 08012410
	.incbin "baserom.gba", 0x012410, 0x0000020

gUnk_08012430:: @ 08012430
	.incbin "baserom.gba", 0x012430, 0x0000050

gUnk_08012480:: @ 08012480
	.incbin "baserom.gba", 0x012480, 0x000027C

gUnk_080126FC:: @ 080126FC
	.incbin "baserom.gba", 0x0126FC, 0x00003B4

gUnk_08012AB0:: @ 08012AB0
	.incbin "baserom.gba", 0x012AB0, 0x00000F8

gUnk_08012BA8:: @ 08012BA8
	.incbin "baserom.gba", 0x012BA8, 0x0000050

gUnk_08012BF8:: @ 08012BF8
	.incbin "baserom.gba", 0x012BF8, 0x0000014

gUnk_08012C0C:: @ 08012C0C
	.incbin "baserom.gba", 0x012C0C, 0x000003C

gUnk_08012C48:: @ 08012C48
	.incbin "baserom.gba", 0x012C48, 0x0000050

gUnk_08012C98:: @ 08012C98
	.incbin "baserom.gba", 0x012C98, 0x0000040

gUnk_08012CD8:: @ 08012CD8
	.incbin "baserom.gba", 0x012CD8, 0x0000040

gUnk_08012D18:: @ 08012D18
	.incbin "baserom.gba", 0x012D18, 0x0000058

gUnk_08012D70:: @ 08012D70
	.incbin "baserom.gba", 0x012D70, 0x0000031

gUnk_08012DA1:: @ 08012DA1
	.incbin "baserom.gba", 0x012DA1, 0x000000F

gUnk_08012DB0:: @ 08012DB0
	.incbin "baserom.gba", 0x012DB0, 0x0000028

gUnk_08012DD8:: @ 08012DD8
	.incbin "baserom.gba", 0x012DD8, 0x0000048

gUnk_08012E20:: @ 08012E20
	.incbin "baserom.gba", 0x012E20, 0x0000024

gUnk_08012E44:: @ 08012E44
	.incbin "baserom.gba", 0x012E44, 0x0000044

gUnk_08012E88:: @ 08012E88
	.incbin "baserom.gba", 0x012E88, 0x0000038

gUnk_08012EC0:: @ 08012EC0
	.incbin "baserom.gba", 0x012EC0, 0x000004C

gUnk_08012F0C:: @ 08012F0C
	.incbin "baserom.gba", 0x012F0C, 0x00000F5

gUnk_08013001:: @ 08013001
	.incbin "baserom.gba", 0x013001, 0x0000002

gUnk_08013003:: @ 08013003
	.incbin "baserom.gba", 0x013003, 0x0000008

gUnk_0801300B:: @ 0801300B
	.incbin "baserom.gba", 0x01300B, 0x0000031

gUnk_0801303C:: @ 0801303C
	.incbin "baserom.gba", 0x01303C, 0x0000034

gUnk_08013070:: @ 08013070
	.incbin "baserom.gba", 0x013070, 0x0000011

gUnk_08013081:: @ 08013081
	.incbin "baserom.gba", 0x013081, 0x000000F

gUnk_08013090:: @ 08013090
	.incbin "baserom.gba", 0x013090, 0x0000084

gUnk_08013114:: @ 08013114
	.incbin "baserom.gba", 0x013114, 0x0000074

gUnk_08013188:: @ 08013188
	.incbin "baserom.gba", 0x013188, 0x0000024

gUnk_080131AC:: @ 080131AC
	.incbin "baserom.gba", 0x0131AC, 0x0000138

gUnk_080132E4:: @ 080132E4
	.incbin "baserom.gba", 0x0132E4, 0x000004C

gUnk_08013330:: @ 08013330
	.incbin "baserom.gba", 0x013330, 0x000001C

gUnk_0801334C:: @ 0801334C
	.incbin "baserom.gba", 0x01334C, 0x000002C

gUnk_08013378:: @ 08013378
	.incbin "baserom.gba", 0x013378, 0x000004C

gUnk_080133C4:: @ 080133C4
	.incbin "baserom.gba", 0x0133C4, 0x0000034

gUnk_080133F8:: @ 080133F8
	.incbin "baserom.gba", 0x0133F8, 0x00000E4

gUnk_080134DC:: @ 080134DC
	.incbin "baserom.gba", 0x0134DC, 0x00001FC

gUnk_080136D8:: @ 080136D8
	.incbin "baserom.gba", 0x0136D8, 0x0000048

gUnk_08013720:: @ 08013720
	.incbin "baserom.gba", 0x013720, 0x00000BA

gUnk_080137DA:: @ 080137DA
	.incbin "baserom.gba", 0x0137DA, 0x00000DA

gUnk_080138B4:: @ 080138B4
	.incbin "baserom.gba", 0x0138B4, 0x0000264

gUnk_08013B18:: @ 08013B18
	.incbin "baserom.gba", 0x013B18, 0x0000058

gUnk_08013B70:: @ 08013B70
	.incbin "baserom.gba", 0x013B70, 0x0000038

gUnk_08013BA8:: @ 08013BA8
	.incbin "baserom.gba", 0x013BA8, 0x0000040

gUnk_08013BE8:: @ 08013BE8
	.incbin "baserom.gba", 0x013BE8, 0x00000BC

gUnk_08013CA4:: @ 08013CA4
	.incbin "baserom.gba", 0x013CA4, 0x0000160

gUnk_08013E04:: @ 08013E04
	.incbin "baserom.gba", 0x013E04, 0x0000048

gUnk_08013E4C:: @ 08013E4C
	.incbin "baserom.gba", 0x013E4C, 0x0000024

gUnk_08013E70:: @ 08013E70
	.incbin "baserom.gba", 0x013E70, 0x0000024

gUnk_08013E94:: @ 08013E94
	.incbin "baserom.gba", 0x013E94, 0x000001C

gUnk_08013EB0:: @ 08013EB0
	.incbin "baserom.gba", 0x013EB0, 0x000001C

gUnk_08013ECC:: @ 08013ECC
	.incbin "baserom.gba", 0x013ECC, 0x000001C

gUnk_08013EE8:: @ 08013EE8
	.incbin "baserom.gba", 0x013EE8, 0x000001C

gUnk_08013F04:: @ 08013F04
	.incbin "baserom.gba", 0x013F04, 0x0000030

gUnk_08013F34:: @ 08013F34
	.incbin "baserom.gba", 0x013F34, 0x0000030

gUnk_08013F64:: @ 08013F64
	.incbin "baserom.gba", 0x013F64, 0x0000030

gUnk_08013F94:: @ 08013F94
	.incbin "baserom.gba", 0x013F94, 0x0000054

gUnk_08013FE8:: @ 08013FE8
	.incbin "baserom.gba", 0x013FE8, 0x000006C

gUnk_08014054:: @ 08014054
	.incbin "baserom.gba", 0x014054, 0x0000020

gUnk_08014074:: @ 08014074
	.incbin "baserom.gba", 0x014074, 0x0000020

gUnk_08014094:: @ 08014094
	.incbin "baserom.gba", 0x014094, 0x0000048

gUnk_080140DC:: @ 080140DC
	.incbin "baserom.gba", 0x0140DC, 0x000001C

gUnk_080140F8:: @ 080140F8
	.incbin "baserom.gba", 0x0140F8, 0x0000020

gUnk_08014118:: @ 08014118
	.incbin "baserom.gba", 0x014118, 0x000003C

gUnk_08014154:: @ 08014154
	.incbin "baserom.gba", 0x014154, 0x0000088

gUnk_080141DC:: @ 080141DC
	.incbin "baserom.gba", 0x0141DC, 0x0000034

gUnk_08014210:: @ 08014210
	.incbin "baserom.gba", 0x014210, 0x0000064

gUnk_08014274:: @ 08014274
	.incbin "baserom.gba", 0x014274, 0x000003C

gUnk_080142B0:: @ 080142B0
	.incbin "baserom.gba", 0x0142B0, 0x00000D4

gUnk_08014384:: @ 08014384
	.incbin "baserom.gba", 0x014384, 0x000003C

gUnk_080143C0:: @ 080143C0
	.incbin "baserom.gba", 0x0143C0, 0x0000042

gUnk_08014402:: @ 08014402
	.incbin "baserom.gba", 0x014402, 0x000004E

gUnk_08014450:: @ 08014450
	.incbin "baserom.gba", 0x014450, 0x00000BC

gUnk_0801450C:: @ 0801450C
	.incbin "baserom.gba", 0x01450C, 0x000003C

gUnk_08014548:: @ 08014548
	.incbin "baserom.gba", 0x014548, 0x0000058

gUnk_080145A0:: @ 080145A0
	.incbin "baserom.gba", 0x0145A0, 0x0000010

gUnk_080145B0:: @ 080145B0
	.incbin "baserom.gba", 0x0145B0, 0x0000038

gUnk_080145E8:: @ 080145E8
	.incbin "baserom.gba", 0x0145E8, 0x0000040

gUnk_08014628:: @ 08014628
	.incbin "baserom.gba", 0x014628, 0x00001DC

gUnk_08014804:: @ 08014804
	.incbin "baserom.gba", 0x014804, 0x00000EC

gUnk_080148F0:: @ 080148F0
	.incbin "baserom.gba", 0x0148F0, 0x0000068

gUnk_08014958:: @ 08014958
	.incbin "baserom.gba", 0x014958, 0x000003C

gUnk_08014994:: @ 08014994
	.incbin "baserom.gba", 0x014994, 0x0000038

gUnk_080149CC:: @ 080149CC
	.incbin "baserom.gba", 0x0149CC, 0x000005C

gUnk_08014A28:: @ 08014A28
	.incbin "baserom.gba", 0x014A28, 0x000002C

gUnk_08014A54:: @ 08014A54
	.incbin "baserom.gba", 0x014A54, 0x000002C

gUnk_08014A80:: @ 08014A80
	.incbin "baserom.gba", 0x014A80, 0x0000044

gUnk_08014AC4:: @ 08014AC4
	.incbin "baserom.gba", 0x014AC4, 0x0000070

gUnk_08014B34:: @ 08014B34
	.incbin "baserom.gba", 0x014B34, 0x00000F8

gUnk_08014C2C:: @ 08014C2C
	.incbin "baserom.gba", 0x014C2C, 0x0000068

gUnk_08014C94:: @ 08014C94
	.incbin "baserom.gba", 0x014C94, 0x0000048

gUnk_08014CDC:: @ 08014CDC
	.incbin "baserom.gba", 0x014CDC, 0x00000F0

gUnk_08014DCC:: @ 08014DCC
	.incbin "baserom.gba", 0x014DCC, 0x0000048

gUnk_08014E14:: @ 08014E14
	.incbin "baserom.gba", 0x014E14, 0x000003C

gUnk_08014E50:: @ 08014E50
	.incbin "baserom.gba", 0x014E50, 0x000007C

gUnk_08014ECC:: @ 08014ECC
	.incbin "baserom.gba", 0x014ECC, 0x000002C

gUnk_08014EF8:: @ 08014EF8
	.incbin "baserom.gba", 0x014EF8, 0x0000038

gUnk_08014F30:: @ 08014F30
	.incbin "baserom.gba", 0x014F30, 0x000008C

gUnk_08014FBC:: @ 08014FBC
	.incbin "baserom.gba", 0x014FBC, 0x0000045

gUnk_08015001:: @ 08015001
	.incbin "baserom.gba", 0x015001, 0x0000086

gUnk_08015087:: @ 08015087
	.incbin "baserom.gba", 0x015087, 0x0000068

gUnk_080150EF:: @ 080150EF
	.incbin "baserom.gba", 0x0150EF, 0x0000145

gUnk_08015234:: @ 08015234
	.incbin "baserom.gba", 0x015234, 0x0000080

gUnk_080152B4:: @ 080152B4
	.incbin "baserom.gba", 0x0152B4, 0x00000DC

gUnk_08015390:: @ 08015390
	.incbin "baserom.gba", 0x015390, 0x000005C

gUnk_080153EC:: @ 080153EC
	.incbin "baserom.gba", 0x0153EC, 0x0000120

gUnk_0801550C:: @ 0801550C
	.incbin "baserom.gba", 0x01550C, 0x000010C

gUnk_08015618:: @ 08015618
	.incbin "baserom.gba", 0x015618, 0x000006C

gUnk_08015684:: @ 08015684
	.incbin "baserom.gba", 0x015684, 0x000001C

gUnk_080156A0:: @ 080156A0
	.incbin "baserom.gba", 0x0156A0, 0x00000B4

gUnk_08015754:: @ 08015754
	.incbin "baserom.gba", 0x015754, 0x0000058

gUnk_080157AC:: @ 080157AC
	.incbin "baserom.gba", 0x0157AC, 0x000014C

gUnk_080158F8:: @ 080158F8
	.incbin "baserom.gba", 0x0158F8, 0x0000040

gUnk_08015938:: @ 08015938
	.incbin "baserom.gba", 0x015938, 0x0000020

gUnk_08015958:: @ 08015958
	.incbin "baserom.gba", 0x015958, 0x000016C

gUnk_08015AC4:: @ 08015AC4
	.incbin "baserom.gba", 0x015AC4, 0x0000050

gUnk_08015B14:: @ 08015B14
	.incbin "baserom.gba", 0x015B14, 0x0000020

gUnk_08015B34:: @ 08015B34
	.incbin "baserom.gba", 0x015B34, 0x0000050

gUnk_08015B84:: @ 08015B84
	.incbin "baserom.gba", 0x015B84, 0x0000024

gUnk_08015BA8:: @ 08015BA8
	.incbin "baserom.gba", 0x015BA8, 0x0000040

gUnk_08015BE8:: @ 08015BE8
	.incbin "baserom.gba", 0x015BE8, 0x00000EC

gUnk_08015CD4:: @ 08015CD4
	.incbin "baserom.gba", 0x015CD4, 0x000011C

gUnk_08015DF0:: @ 08015DF0
	.incbin "baserom.gba", 0x015DF0, 0x0000068

gUnk_08015E58:: @ 08015E58
	.incbin "baserom.gba", 0x015E58, 0x00000B0

gUnk_08015F08:: @ 08015F08
	.incbin "baserom.gba", 0x015F08, 0x0000034

gUnk_08015F3C:: @ 08015F3C
	.incbin "baserom.gba", 0x015F3C, 0x0000068

gUnk_08015FA4:: @ 08015FA4
	.incbin "baserom.gba", 0x015FA4, 0x000001C

gUnk_08015FC0:: @ 08015FC0
	.incbin "baserom.gba", 0x015FC0, 0x0000061

gUnk_08016021:: @ 08016021
	.incbin "baserom.gba", 0x016021, 0x000000F

gUnk_08016030:: @ 08016030
	.incbin "baserom.gba", 0x016030, 0x000003C

gUnk_0801606C:: @ 0801606C
	.incbin "baserom.gba", 0x01606C, 0x000003C

gUnk_080160A8:: @ 080160A8
	.incbin "baserom.gba", 0x0160A8, 0x0000042

gUnk_080160EA:: @ 080160EA
	.incbin "baserom.gba", 0x0160EA, 0x0000052

gUnk_0801613C:: @ 0801613C
	.incbin "baserom.gba", 0x01613C, 0x0000054

gUnk_08016190:: @ 08016190
	.incbin "baserom.gba", 0x016190, 0x0000058

gUnk_080161E8:: @ 080161E8
	.incbin "baserom.gba", 0x0161E8, 0x0000174

gUnk_0801635C:: @ 0801635C
	.incbin "baserom.gba", 0x01635C, 0x0000021

gUnk_0801637D:: @ 0801637D
	.incbin "baserom.gba", 0x01637D, 0x0000007

gUnk_08016384:: @ 08016384
	.incbin "baserom.gba", 0x016384, 0x0000084

gUnk_08016408:: @ 08016408
	.incbin "baserom.gba", 0x016408, 0x00001F0

gUnk_080165F8:: @ 080165F8
	.incbin "baserom.gba", 0x0165F8, 0x0000014

gUnk_0801660C:: @ 0801660C
	.incbin "baserom.gba", 0x01660C, 0x000001C

gUnk_08016628:: @ 08016628
	.incbin "baserom.gba", 0x016628, 0x000001C

gUnk_08016644:: @ 08016644
	.incbin "baserom.gba", 0x016644, 0x0000028

gUnk_0801666C:: @ 0801666C
	.incbin "baserom.gba", 0x01666C, 0x000004C

gUnk_080166B8:: @ 080166B8
	.incbin "baserom.gba", 0x0166B8, 0x0000044

gUnk_080166FC:: @ 080166FC
	.incbin "baserom.gba", 0x0166FC, 0x000009C

gUnk_08016798:: @ 08016798
	.incbin "baserom.gba", 0x016798, 0x00000AC

gUnk_08016844:: @ 08016844
	.incbin "baserom.gba", 0x016844, 0x000009C

gUnk_080168E0:: @ 080168E0
	.incbin "baserom.gba", 0x0168E0, 0x0000014

gUnk_080168F4:: @ 080168F4
	.incbin "baserom.gba", 0x0168F4, 0x0000090

gUnk_08016984:: @ 08016984
	.incbin "baserom.gba", 0x016984, 0x0000002

	.text

	non_word_aligned_thumb_func_start sub_08016986
sub_08016986: @ 0x08016986
	ldrh r0, [r0]
	bx lr

	non_word_aligned_thumb_func_start sub_0801698A
sub_0801698A: @ 0x0801698A
	ldrh r0, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_0801698E
sub_0801698E: @ 0x0801698E
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr

	thumb_func_start sub_08016998
sub_08016998: @ 0x08016998
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0

gUnk_080169A4::
	.byte 0x01, 0xFF, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0x01, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x02, 0xFF, 0x01, 0xFE, 0x00, 0xFF, 0xFF, 0x00, 0xFF, 0x01, 0xFF, 0x02
	.byte 0x00, 0x00, 0x01, 0x01, 0x02, 0xFF, 0x02, 0xFE, 0xFE, 0x02, 0xFF, 0x03, 0xFD, 0xFF, 0xFE, 0x01
	.byte 0x01, 0xFD, 0xFF, 0xFF, 0x03, 0xFE, 0x02, 0x00, 0x00, 0xFF, 0xFE, 0x03, 0xFD, 0x02, 0xFF, 0x00
	.byte 0x00, 0xFD, 0x02, 0x00, 0x00, 0xFF, 0x00, 0xFE, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02
	.byte 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0x00, 0x00, 0x01, 0x00

	thumb_func_start sub_08016A04
sub_08016A04: @ 0x08016A04
	movs r1, #0x38
	ldrb r1, [r0, r1]
	lsls r1, r1, #1
	add r3, pc, #0x1C
	adds r1, r1, r3
	movs r3, #0xc0
	ldrb r2, [r0, #0x19]
	bics r2, r3
	ldrb r3, [r1]
	orrs r2, r3
	strb r2, [r0, #0x19]
	movs r3, #0xc0
	ldrb r2, [r0, #0x1b]
	bics r2, r3
	ldrb r3, [r1, #1]
	orrs r2, r3
	strb r2, [r0, #0x1b]
	bx lr
_08016A28:
	.byte 0x80, 0x80, 0x80, 0x80, 0x40, 0x40, 0x40, 0x40

	thumb_func_start sub_08016A30
sub_08016A30: @ 0x08016A30
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x38
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _08016A64
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	movs r2, #2
	bl sub_080002A4
	movs r3, #1
	cmp r0, #0
	beq _08016A62
	bl sub_080002E4
	movs r3, #2
	add r1, pc, #0x40
_08016A54:
	adds r1, #4
	ldrh r2, [r1]
	cmp r2, #0
	beq _08016A62
	cmp r0, r2
	bne _08016A54
	ldrb r3, [r1, #3]
_08016A62:
	strb r3, [r4, r5]
_08016A64:
	adds r0, r4, #0
	bl sub_08016A04
	pop {r4, r5, pc}

	thumb_func_start sub_08016A6C
sub_08016A6C: @ 0x08016A6C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080002B8
	add r1, pc, #0x38
_08016A76:
	adds r1, #4
	ldrh r2, [r1]
	cmp r2, #0
	beq _08016A90
	cmp r2, r0
	bne _08016A76
	movs r2, #0x38
	ldrb r3, [r4, r2]
	ldrb r5, [r1, #2]
	cmp r3, r5
	beq _08016A90
	ldrb r5, [r1, #3]
	strb r5, [r4, r2]
_08016A90:
	pop {r4, r5, pc}
	.align 2, 0
_08016A94:
	.byte 0x2A, 0x00, 0x03, 0x03, 0x2D, 0x00, 0x03, 0x03, 0x2B, 0x00, 0x03, 0x03
	.byte 0x2C, 0x00, 0x03, 0x03, 0x4C, 0x00, 0x03, 0x03, 0x4E, 0x00, 0x03, 0x03, 0x4D, 0x00, 0x03, 0x03
	.byte 0x4F, 0x00, 0x03, 0x03, 0x0A, 0x00, 0x02, 0x01, 0x09, 0x00, 0x02, 0x01, 0x0C, 0x00, 0x01, 0x02
	.byte 0x0B, 0x00, 0x01, 0x02, 0x52, 0x00, 0x03, 0x03, 0x27, 0x00, 0x03, 0x03, 0x26, 0x00, 0x03, 0x03
	.byte 0x00, 0x00

	non_word_aligned_thumb_func_start sub_08016AD2
sub_08016AD2: @ 0x08016AD2
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08016A6C
	push {r0}
	adds r0, r4, #0
	bl sub_08016A04
	pop {r0, r4, pc}

