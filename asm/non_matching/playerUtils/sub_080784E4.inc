	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080784FC @ =gPossibleInteraction
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08078500
	ldr r0, [r0, #4]
	b _0807876A
	.align 2, 0
_080784FC: .4byte gPossibleInteraction
_08078500:
	ldr r2, _08078528 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x27
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	bne _08078598
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807852C
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _0807852E
	.align 2, 0
_08078528: .4byte gPlayerState
_0807852C:
	ldrb r0, [r1]
_0807852E:
	subs r0, #2
	cmp r0, #0x14
	bhi _080785B0
	lsls r0, r0, #2
	ldr r1, _08078540 @ =_08078544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078540: .4byte _08078544
_08078544: @ jump table
	.4byte _08078598 @ case 0
	.4byte _08078598 @ case 1
	.4byte _080785B0 @ case 2
	.4byte _080785B0 @ case 3
	.4byte _080785B0 @ case 4
	.4byte _080785B0 @ case 5
	.4byte _080785B0 @ case 6
	.4byte _080785B0 @ case 7
	.4byte _080785B0 @ case 8
	.4byte _080785B0 @ case 9
	.4byte _080785B0 @ case 10
	.4byte _080785B0 @ case 11
	.4byte _080785B0 @ case 12
	.4byte _080785B0 @ case 13
	.4byte _080785B0 @ case 14
	.4byte _080785B0 @ case 15
	.4byte _08078598 @ case 16
	.4byte _080785B0 @ case 17
	.4byte _080785B0 @ case 18
	.4byte _08078598 @ case 19
	.4byte _08078598 @ case 20
_08078598:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _080785AC @ =gNoInteraction
	str r0, [r1, #4]
	movs r1, #1
	mov r2, r8
	strb r1, [r2]
	b _0807876A
	.align 2, 0
_080785AC: .4byte gNoInteraction
_080785B0:
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080785F0
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _080785C4
	movs r0, #1
_080785C4:
	adds r7, r0, #0
	bl HasDungeonBigKey
	cmp r0, #0
	beq _080785D2
	movs r0, #2
	orrs r7, r0
_080785D2:
	ldr r3, _080785E4 @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _080785E8 @ =gPlayerInteractHitboxOffsetNormal
	adds r2, r1, r0
	ldr r5, _080785EC @ =gPossibleInteraction
	mov r8, r5
	b _080785FE
	.align 2, 0
_080785E4: .4byte gPlayerEntity
_080785E8: .4byte gPlayerInteractHitboxOffsetNormal
_080785EC: .4byte gPossibleInteraction
_080785F0:
	ldr r3, _08078624 @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _08078628 @ =gPlayerInteractHitboxOffsetMinish
	adds r2, r1, r0
	movs r7, #0
_080785FE:
	mov ip, r3
	mov r0, ip
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	mov r5, ip
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sb, r1
	movs r6, #0
	ldr r5, _0807862C @ =gInteractableObjects
	b _08078724
	.align 2, 0
_08078624: .4byte gPlayerEntity
_08078628: .4byte gPlayerInteractHitboxOffsetMinish
_0807862C: .4byte gInteractableObjects
_08078630:
	ldrb r1, [r5]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0807864E
	mov r0, ip
	adds r0, #0x38
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08078714
_0807864E:
	ldrb r1, [r5, #2]
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	asrs r1, r0
	ands r1, r3
	cmp r1, #0
	bne _08078714
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bhi _080786D4
	lsls r0, r0, #2
	ldr r1, _08078670 @ =_08078674
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078670: .4byte _08078674
_08078674: @ jump table
	.4byte _08078714 @ case 0
	.4byte _080786A0 @ case 1
	.4byte _080786C4 @ case 2
	.4byte _080786A0 @ case 3
	.4byte _080786A0 @ case 4
	.4byte _080786C8 @ case 5
	.4byte _080786CC @ case 6
	.4byte _080786B4 @ case 7
	.4byte _080786A0 @ case 8
	.4byte _080786A0 @ case 9
	.4byte _080786D4 @ case 10
_080786A0:
	ldr r0, _080786B0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078714
	b _080786D4
	.align 2, 0
_080786B0: .4byte gPlayerState
_080786B4:
	ldr r0, _080786C0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	b _080786D0
	.align 2, 0
_080786C0: .4byte gPlayerState
_080786C4:
	ldrb r0, [r5, #3]
	b _080786D0
_080786C8:
	movs r0, #1
	b _080786CE
_080786CC:
	movs r0, #2
_080786CE:
	ands r0, r7
_080786D0:
	cmp r0, #0
	beq _08078714
_080786D4:
	ldr r0, [r5, #8]
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	movs r2, #0x32
	ldrsh r4, [r0, r2]
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _080786F4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r3, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	adds r2, r1, #2
	b _080786F8
_080786F4:
	ldr r0, [r0, #0x48]
	adds r2, r0, #6
_080786F8:
	ldrb r1, [r2]
	mov r5, sl
	adds r0, r1, r5
	subs r0, r0, r3
	lsls r1, r1, #1
	cmp r0, r1
	bhs _08078714
	ldrb r1, [r2, #1]
	mov r2, sb
	adds r0, r1, r2
	subs r0, r0, r4
	lsls r1, r1, #1
	cmp r0, r1
	blo _0807873A
_08078714:
	adds r6, #1
	cmp r6, #0x1f
	bhi _08078758
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r3, _08078754 @ =gInteractableObjects
	adds r5, r0, r3
_08078724:
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _08078714
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0807873A
	b _08078630
_0807873A:
	cmp r6, #0x1f
	bhi _08078758
	mov r5, r8
	strb r6, [r5, #3]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08078762
	.align 2, 0
_08078754: .4byte gInteractableObjects
_08078758:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _08078774 @ =gNoInteraction
	str r0, [r1, #4]
_08078762:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r2, #4]
_0807876A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08078774: .4byte gNoInteraction
	.syntax divided
