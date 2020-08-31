	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Fairy
Fairy: @ 0x0808D674
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D750
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1f
	bhi _0808D750
	lsls r0, r0, #2
	ldr r1, _0808D698 @ =_0808D69C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D698: .4byte _0808D69C
_0808D69C: @ jump table
	.4byte _0808D740 @ case 0
	.4byte _0808D740 @ case 1
	.4byte _0808D750 @ case 2
	.4byte _0808D750 @ case 3
	.4byte _0808D740 @ case 4
	.4byte _0808D740 @ case 5
	.4byte _0808D740 @ case 6
	.4byte _0808D750 @ case 7
	.4byte _0808D740 @ case 8
	.4byte _0808D740 @ case 9
	.4byte _0808D740 @ case 10
	.4byte _0808D740 @ case 11
	.4byte _0808D740 @ case 12
	.4byte _0808D750 @ case 13
	.4byte _0808D750 @ case 14
	.4byte _0808D750 @ case 15
	.4byte _0808D750 @ case 16
	.4byte _0808D750 @ case 17
	.4byte _0808D750 @ case 18
	.4byte _0808D748 @ case 19
	.4byte _0808D71C @ case 20
	.4byte _0808D750 @ case 21
	.4byte _0808D750 @ case 22
	.4byte _0808D750 @ case 23
	.4byte _0808D750 @ case 24
	.4byte _0808D750 @ case 25
	.4byte _0808D750 @ case 26
	.4byte _0808D750 @ case 27
	.4byte _0808D750 @ case 28
	.4byte _0808D750 @ case 29
	.4byte _0808D740 @ case 30
	.4byte _0808D73C @ case 31
_0808D71C:
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
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	b _0808D750
_0808D73C:
	bl DeleteThisEntity
_0808D740:
	adds r0, r4, #0
	bl sub_0808DAD0
	b _0808D750
_0808D748:
	adds r0, r4, #0
	bl sub_0808D76C
	b _0808D766
_0808D750:
	ldr r0, _0808D768 @ =gUnk_08121784
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
_0808D766:
	pop {r4, pc}
	.align 2, 0
_0808D768: .4byte gUnk_08121784

	thumb_func_start sub_0808D76C
sub_0808D76C: @ 0x0808D76C
	push {lr}
	ldr r2, _0808D780 @ =gUnk_08121798
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808D780: .4byte gUnk_08121798

	thumb_func_start sub_0808D784
sub_0808D784: @ 0x0808D784
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

	thumb_func_start sub_0808D798
sub_0808D798: @ 0x0808D798
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0808D7A0
sub_0808D7A0: @ 0x0808D7A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0808D7B2
	adds r0, r4, #0
	bl sub_0808DB2C
_0808D7B2:
	pop {r4, pc}

	thumb_func_start sub_0808D7B4
sub_0808D7B4: @ 0x0808D7B4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	movs r2, #0x17
	strb r2, [r0]
	adds r1, #8
	movs r0, #0x49
	strb r0, [r1]
	subs r1, #1
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3b
	strb r2, [r0]
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0808D818 @ =gUnk_080FD1A8
	str r0, [r4, #0x48]
	movs r0, #1
	strb r0, [r4, #0x1c]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	movs r0, #0x9b
	lsls r0, r0, #1
	bl EnqueueSFX
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	beq _0808D834
	cmp r0, #2
	bgt _0808D81C
	cmp r0, #0
	beq _0808D822
	b _0808D82E
	.align 2, 0
_0808D818: .4byte gUnk_080FD1A8
_0808D81C:
	cmp r0, #3
	beq _0808D83C
	b _0808D82E
_0808D822:
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
_0808D82E:
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0808D842
_0808D834:
	adds r0, r4, #0
	bl sub_0808DAD0
	b _0808D842
_0808D83C:
	adds r0, r4, #0
	bl sub_0808DB2C
_0808D842:
	pop {r4, pc}

	thumb_func_start sub_0808D844
sub_0808D844: @ 0x0808D844
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x34]
	ldr r1, _0808D870 @ =0xFFFF2000
	adds r0, r0, r1
	str r0, [r3, #0x34]
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808D88A
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	beq _0808D874
	adds r2, r3, #0
	adds r2, #0x78
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r2]
	b _0808D87E
	.align 2, 0
_0808D870: .4byte 0xFFFF2000
_0808D874:
	adds r1, r3, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
_0808D87E:
	movs r0, #2
	strb r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0xf]
	movs r0, #0x80
	strh r0, [r3, #0x24]
_0808D88A:
	pop {pc}

	thumb_func_start sub_0808D88C
sub_0808D88C: @ 0x0808D88C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D910
	bl Random
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	ldr r2, _0808D8D0 @ =gUnk_081217A4
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0808DAA0
	cmp r0, #0
	beq _0808D8D4
	movs r0, #0x1f
	ands r5, r0
	strb r5, [r4, #0x15]
	b _0808D8EE
	.align 2, 0
_0808D8D0: .4byte gUnk_081217A4
_0808D8D4:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
_0808D8EE:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0808D910
	movs r0, #0x10
	eors r1, r0
	lsrs r1, r1, #4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0808D910:
	adds r0, r4, #0
	bl sub_080AEFB4
	bl sub_0805E40C
	cmp r0, #0
	bne _0808D954
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808D954
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D93C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
_0808D93C:
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0808D954
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0808D954:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808D958
sub_0808D958: @ 0x0808D958
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldrh r1, [r2, #8]
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	beq _0808D972
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _0808D992
_0808D972:
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0808D994 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _0808D992
	adds r0, r4, #0
	bl sub_0808DB2C
_0808D992:
	pop {r4, pc}
	.align 2, 0
_0808D994: .4byte gPlayerEntity

	thumb_func_start sub_0808D998
sub_0808D998: @ 0x0808D998
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r2, _0808DA28 @ =gSineTable
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	cmp r0, #0
	bge _0808D9B8
	ldr r1, _0808DA2C @ =0x0000FFFF
	adds r0, r0, r1
_0808D9B8:
	asrs r0, r0, #0x10
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	ldrb r0, [r5, #0xe]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	cmp r0, #0
	bge _0808D9DA
	ldr r3, _0808DA2C @ =0x0000FFFF
	adds r0, r0, r3
_0808D9DA:
	asrs r1, r0, #0x10
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	ldrb r3, [r5, #0xe]
	adds r0, r3, #0
	adds r0, #8
	strb r0, [r5, #0xe]
	ldrh r0, [r6, #0x36]
	strh r0, [r5, #0x36]
	ldrb r2, [r6, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r6, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	subs r3, #0x39
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x7e
	bhi _0808DA30
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _0808DA3E
	.align 2, 0
_0808DA28: .4byte gSineTable
_0808DA2C: .4byte 0x0000FFFF
_0808DA30:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
_0808DA3E:
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x63
	cmp r0, #0
	bne _0808DA70
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x16
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0808DA70
	adds r0, r5, #0
	movs r1, #1
	bl sub_08081404
_0808DA70:
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0808DA8E
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
_0808DA8E:
	adds r1, r5, #0
	adds r1, #0x87
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _0808DA9C
	movs r0, #0xa
	strb r0, [r1]
_0808DA9C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808DAA0
sub_0808DAA0: @ 0x0808DAA0
	push {lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x30
	cmp r0, #0x60
	bhi _0808DACC
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x30
	cmp r0, #0x60
	bhi _0808DACC
	movs r0, #1
	b _0808DACE
_0808DACC:
	movs r0, #0
_0808DACE:
	pop {pc}

	thumb_func_start sub_0808DAD0
sub_0808DAD0: @ 0x0808DAD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DAE0
	bl DeleteThisEntity
_0808DAE0:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #6
	strb r0, [r4, #0xf]
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
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfb
	strb r0, [r1]
	ldr r0, _0808DB28 @ =gPlayerEntity
	str r0, [r4, #0x54]
	adds r1, r4, #0
	bl CopyPosition
	pop {r4, pc}
	.align 2, 0
_0808DB28: .4byte gPlayerEntity

	thumb_func_start sub_0808DB2C
sub_0808DB2C: @ 0x0808DB2C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xd]
	ldrb r2, [r1, #0x10]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x10]
	adds r2, r1, #0
	adds r2, #0x3b
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0808DB50 @ =gPlayerEntity
	bl CopyPosition
	pop {pc}
	.align 2, 0
_0808DB50: .4byte gPlayerEntity
