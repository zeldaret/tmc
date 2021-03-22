	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start EvilSpirit
EvilSpirit: @ 0x08086284
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
	bl CheckLocalFlag
	cmp r0, #0
	beq _080862CA
	bl DeleteThisEntity
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
	bl InitializeAnimation
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
	ldr r2, _080863E8 @ =gPlayerEntity
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
_080863E8: .4byte gPlayerEntity
_080863EC:
	subs r0, r2, #3
_080863EE:
	strb r0, [r6, #0x15]
_080863F0:
	ldr r0, _0808640C @ =gPlayerEntity
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
_0808640C: .4byte gPlayerEntity
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
	ldr r0, _08086480 @ =gPlayerEntity
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
_08086480: .4byte gPlayerEntity
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
	ldr r5, _0808654C @ =gSineTable
	ldrb r0, [r6, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #6
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl FixedDiv
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
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FixedDiv
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
_0808654C: .4byte gSineTable

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
	bl SetLocalFlag
	movs r0, #0
	bl SetRoomFlag
	movs r5, #0
_0808657E:
	ldr r0, [r4, #0x54]
	ldr r1, [r0, #0x50]
	str r1, [r4, #0x54]
	bl DeleteEntity
	adds r5, #1
	cmp r5, #3
	bls _0808657E
	bl DeleteThisEntity
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
	ldr r0, _080865EC @ =gPlayerEntity
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
_080865EC: .4byte gPlayerEntity
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
	ldr r6, _080866BC @ =gSineTable
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #6
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl FixedDiv
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
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl FixedDiv
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
_080866BC: .4byte gSineTable
