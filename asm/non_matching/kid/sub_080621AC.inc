	.syntax unified
	.text

sub_080621AC: @ 0x080621AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _08062234
	cmp r5, #1
	bgt _080621C0
	cmp r5, #0
	beq _080621CE
	b _080622F2
_080621C0:
	cmp r5, #2
	bne _080621C6
	b _080622CC
_080621C6:
	cmp r5, #3
	bne _080621CC
	b _080622E4
_080621CC:
	b _080622F2
_080621CE:
	ldr r1, _0806221C @ =gUnk_0810BDC4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	bne _080621E4
	b _080622F2
_080621E4:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x68
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x6b
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08062220
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _0806222C
	.align 2, 0
_0806221C: .4byte gUnk_0810BDC4
_08062220:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_0806222C:
	adds r0, r4, #0
	bl sub_0807DD50
	b _080622F2
_08062234:
	adds r5, r4, #0
	adds r5, #0x39
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #2
	bne _08062252
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806F118
	adds r5, #0x1f
	b _0806229A
_08062252:
	adds r0, r4, #0
	adds r0, #0x68
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	beq _08062274
	cmp r1, #0
	beq _0806226C
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r5]
	b _0806228A
_0806226C:
	adds r0, r4, #0
	bl sub_080622F4
	b _080622F2
_08062274:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080622F2
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r6, [r5]
_0806228A:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0806265C
	adds r5, r4, #0
	adds r5, #0x58
_0806229A:
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x6b
	strb r0, [r1]
	ldrb r0, [r5]
	cmp r0, #7
	bhi _080622F2
	ldr r1, _080622C8 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	ldrb r1, [r5]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	b _080622F2
	.align 2, 0
_080622C8: .4byte gPlayerEntity
_080622CC:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, _080622E0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080622F2
	b _080622EE
	.align 2, 0
_080622E0: .4byte gTextBox
_080622E4:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _080622F2
_080622EE:
	movs r0, #1
	strb r0, [r4, #0xc]
_080622F2:
	pop {r4, r5, r6, pc}
	.syntax divided
