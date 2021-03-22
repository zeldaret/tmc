	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Maid
Maid: @ 0x08064508
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806451E
	adds r0, r2, #0
	bl sub_08064570
	b _08064522
_0806451E:
	bl DeleteThisEntity
_08064522:
	pop {pc}

	thumb_func_start Maid_Head
Maid_Head: @ 0x08064524
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	ldrb r5, [r4, #0x1e]
	ldrb r0, [r4, #9]
	cmp r0, #0x16
	bne _08064540
	cmp r2, #0
	beq _08064548
	adds r2, #0xa
	b _08064548
_08064540:
	cmp r2, #0
	beq _08064546
	adds r2, #0x1a
_08064546:
	adds r5, #0x10
_08064548:
	subs r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08064570
sub_08064570: @ 0x08064570
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080645EA
	cmp r5, #1
	bgt _08064584
	cmp r5, #0
	beq _0806458A
	b _0806463C
_08064584:
	cmp r5, #2
	beq _0806462C
	b _0806463C
_0806458A:
	ldrb r1, [r4, #9]
	movs r0, #0x16
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080645D0 @ =gUnk_0810F874
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806463C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _080645D4
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _080645E0
	.align 2, 0
_080645D0: .4byte gUnk_0810F874
_080645D4:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_080645E0:
	movs r0, #0
	str r0, [r4, #0x68]
	adds r0, r4, #0
	bl sub_0807DD50
_080645EA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0806463C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r2]
	ldr r1, _08064628 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0806463C
	bl _call_via_r0
	b _0806463C
	.align 2, 0
_08064628: .4byte gPlayerEntity
_0806462C:
	ldr r0, _08064640 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806463C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806463C:
	pop {r4, r5, pc}
	.align 2, 0
_08064640: .4byte gTextBox

	thumb_func_start sub_08064644
sub_08064644: @ 0x08064644
	ldr r1, [r1, #4]
	str r1, [r0, #0x68]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806464C
sub_0806464C: @ 0x0806464C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806465E
	movs r4, #2
	b _08064674
_0806465E:
	movs r0, #0xa0
	bl CheckLocalFlag
	cmp r0, #0
	bne _08064672
	movs r4, #0
	movs r0, #0xa0
	bl SetLocalFlag
	b _08064674
_08064672:
	movs r4, #1
_08064674:
	ldr r0, _08064684 @ =gUnk_0810F88C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08064684: .4byte gUnk_0810F88C

	thumb_func_start sub_08064688
sub_08064688: @ 0x08064688
	push {lr}
	ldr r1, _0806469C @ =gSave
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _080646A0 @ =gUnk_0810F894
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806469C: .4byte gSave
_080646A0: .4byte gUnk_0810F894

	thumb_func_start sub_080646A4
sub_080646A4: @ 0x080646A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08064710
	adds r0, #1
	strb r0, [r5, #0x18]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strh r0, [r5, #0x12]
	bl Random
	adds r1, r0, #0
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _080646EC
	cmp r0, #8
	bgt _080646DA
	cmp r0, #0
	beq _080646E4
	b _08064702
_080646DA:
	cmp r0, #0x10
	beq _080646F4
	cmp r0, #0x18
	beq _080646FC
	b _08064702
_080646E4:
	cmp r1, #0x10
	bne _08064702
	movs r1, #8
	b _08064702
_080646EC:
	cmp r1, #0x18
	bne _08064702
	movs r1, #0x10
	b _08064702
_080646F4:
	cmp r1, #0
	bne _08064702
	movs r1, #0x18
	b _08064702
_080646FC:
	cmp r1, #8
	bne _08064702
	movs r1, #0
_08064702:
	strb r1, [r4, #0x15]
	adds r0, r1, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	movs r0, #0x80
	strh r0, [r4, #0x24]
_08064710:
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r4, #0
	bl ProcessMovement
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x6c
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _0806473A
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_0806473A:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _0806474C
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_0806474C:
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r2, r4, #0
	adds r2, #0x6e
	movs r6, #0
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _08064768
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_08064768:
	cmp r1, r3
	bge _08064776
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_08064776:
	ldrh r0, [r5, #0x12]
	subs r0, #1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08064788
	ldr r1, _0806478C @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_08064788:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806478C: .4byte gActiveScriptInfo
