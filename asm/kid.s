	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080620C8
sub_080620C8: @ 0x080620C8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080620DE
	adds r0, r2, #0
	bl sub_080621AC
	b _080620EE
_080620DE:
	ldr r0, _080620F0 @ =gUnk_0810BE0C
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080620EE:
	pop {pc}
	.align 2, 0
_080620F0: .4byte gUnk_0810BE0C

	thumb_func_start sub_080620F4
sub_080620F4: @ 0x080620F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806212C @ =gUnk_0810BDC4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806212A
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_08078778
_0806212A:
	pop {r4, pc}
	.align 2, 0
_0806212C: .4byte gUnk_0810BDC4

	thumb_func_start sub_08062130
sub_08062130: @ 0x08062130
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08062152
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
_08062152:
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x78
	bls _08062184
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	movs r0, #7
	ands r1, r0
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0806217A
	adds r0, r1, #0
	adds r0, #0x10
	strb r0, [r4, #0xe]
_0806217A:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl LoadAnimation
	b _0806218A
_08062184:
	adds r0, r4, #0
	bl sub_080042B8
_0806218A:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08062194
sub_08062194: @ 0x08062194
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl TextboxTryNoOverlap
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r4, #0x39
	strb r1, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080621AC
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
	bl sub_0806FDEC
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
	ldr r1, _080622C8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	ldrb r1, [r5]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	bl UpdateSprite
	b _080622F2
	.align 2, 0
_080622C8: .4byte gLinkEntity
_080622CC:
	adds r0, r4, #0
	bl sub_08004274
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
	bl sub_0806F148
	cmp r0, #0
	beq _080622F2
_080622EE:
	movs r0, #1
	strb r0, [r4, #0xc]
_080622F2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080622F4
sub_080622F4: @ 0x080622F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _0806239C @ =gLinkEntity
	mov r8, r0
	ldrh r1, [r0, #0x2e]
	ldr r3, _080623A0 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	mov r2, r8
	ldrh r1, [r2, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _080623A4 @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	mov r1, r8
	ldrh r0, [r1, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _080623A8 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _080623AC @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r1, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _080623B0 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _080623B4 @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	ldr r4, [r7, #0x64]
	ldrb r0, [r4, #6]
	cmp r0, #0x16
	bne _080623BE
	lsrs r0, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	beq _080623BE
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	mov r3, r8
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	subs r2, r1, r0
	movs r0, #0x32
	ldrsh r3, [r7, r0]
	mov sb, r3
	mov r1, r8
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	mov r3, sb
	subs r1, r3, r0
	cmp r2, #0
	bge _08062382
	rsbs r2, r2, #0
_08062382:
	cmp r1, #0
	bge _08062388
	rsbs r1, r1, #0
_08062388:
	cmp r2, #0x78
	bgt _08062390
	cmp r1, #0x50
	ble _080623B8
_08062390:
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0
	strb r0, [r1]
	b _080624F8
	.align 2, 0
_0806239C: .4byte gLinkEntity
_080623A0: .4byte 0xFFFF0000
_080623A4: .4byte 0x0000FFFF
_080623A8: .4byte gLinkState
_080623AC: .4byte 0xFF00FFFF
_080623B0: .4byte 0xC0FFFFFF
_080623B4: .4byte 0x3FFFFFFF
_080623B8:
	adds r0, r7, #0
	bl sub_0806252C
_080623BE:
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	cmp r5, r0
	bne _080623CE
	ldr r0, [r4, #4]
	cmp r6, r0
	beq _08062410
_080623CE:
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r1, #0x69
	adds r1, r1, r7
	mov r8, r1
	adds r3, r7, #0
	adds r3, #0x38
	movs r2, #0x58
	adds r2, r2, r7
	mov ip, r2
	movs r2, #0x12
_080623E4:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _080623E4
	ldr r4, [r7, #0x64]
	str r5, [r4]
	str r6, [r4, #4]
	movs r0, #4
	mov sb, r0
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08062484
	subs r0, r1, #1
	strb r0, [r2]
	b _08062484
_08062410:
	adds r4, #0x98
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08062442
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r0, #0x69
	adds r0, r0, r7
	mov r8, r0
	adds r3, r7, #0
	adds r3, #0x38
	movs r1, #0x58
	adds r1, r1, r7
	mov ip, r1
	movs r2, #0x12
_08062430:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _08062430
	b _08062480
_08062442:
	ldr r1, _080624E8 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r0, [r1, r3]
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	bl sub_080041E8
	lsrs r0, r0, #4
	movs r3, #0x69
	adds r3, r3, r7
	mov r8, r3
	adds r3, r7, #0
	adds r3, #0x38
	movs r1, #0x58
	adds r1, r1, r7
	mov ip, r1
	cmp r0, #0x18
	ble _08062484
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r2, #0x12
_08062470:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _08062470
_08062480:
	movs r2, #4
	mov sb, r2
_08062484:
	ldr r4, [r7, #0x64]
	adds r4, #0x98
	ldrh r0, [r4]
	strh r0, [r7, #0x2e]
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x32]
	ldrh r0, [r4, #4]
	strh r0, [r7, #0x36]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r7, #0x14]
	ldrb r0, [r4, #7]
	lsrs r0, r0, #6
	strb r0, [r3]
	mov r1, r8
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080624B2
	subs r0, r2, #1
	strb r0, [r1]
_080624B2:
	mov r2, sb
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	add sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	bne _080624C4
	movs r3, #0x10
	add sb, r3
_080624C4:
	mov r0, ip
	ldrb r0, [r0]
	cmp sb, r0
	beq _080624EC
	cmp r2, #0
	bne _080624D8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080624EC
_080624D8:
	adds r0, r7, #0
	mov r1, sb
	bl LoadAnimation
	movs r0, #0x1e
	mov r1, r8
	strb r0, [r1]
	b _080624F2
	.align 2, 0
_080624E8: .4byte gLinkEntity
_080624EC:
	adds r0, r7, #0
	bl sub_080042B8
_080624F2:
	adds r0, r7, #0
	bl sub_0800451C
_080624F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08062500
sub_08062500: @ 0x08062500
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	bl sub_0801D8E0
	str r0, [r5, #0x64]
	cmp r0, #0
	beq _08062528
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_080788E0
	str r4, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806252C
_08062528:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806252C
sub_0806252C: @ 0x0806252C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r4, _08062618 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _0806261C @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _08062620 @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	ldrh r0, [r4, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _08062624 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08062628 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _0806262C @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _08062630 @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov sl, r1
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [r7, #0x64]
	movs r0, #0
	mov sb, r0
	mov ip, r0
	movs r4, #0x13
_080625C8:
	mov r1, ip
	asrs r0, r1, #8
	subs r0, r5, r0
	strh r0, [r3]
	lsrs r0, r5, #0x10
	mov r2, sb
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r3, #2]
	strh r6, [r3, #4]
	lsrs r0, r6, #0x10
	strb r0, [r3, #6]
	ldrb r0, [r7, #0x14]
	movs r1, #0x3f
	ands r1, r0
	ldrb r2, [r3, #7]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r1, r7, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #6
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r3, #8
	add sb, r8
	add ip, sl
	subs r4, #1
	cmp r4, #0
	bge _080625C8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08062618: .4byte gLinkEntity
_0806261C: .4byte 0xFFFF0000
_08062620: .4byte 0x0000FFFF
_08062624: .4byte gLinkState
_08062628: .4byte 0xFF00FFFF
_0806262C: .4byte 0xC0FFFFFF
_08062630: .4byte 0x3FFFFFFF

	thumb_func_start sub_08062634
sub_08062634: @ 0x08062634
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	bl Random
	movs r1, #1
	ands r1, r0
	ldr r0, _08062658 @ =gUnk_0810BDE8
	lsls r1, r1, #1
	lsls r4, r4, #2
	adds r1, r1, r4
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08062658: .4byte gUnk_0810BDE8

	thumb_func_start sub_0806265C
sub_0806265C: @ 0x0806265C
	push {lr}
	adds r2, r0, #0
	ldr r3, _08062674 @ =gUnk_02002A40
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _08062678
	movs r0, #0
	adds r1, r2, #0
	bl TextboxNoOverlap
	b _08062690
	.align 2, 0
_08062674: .4byte gUnk_02002A40
_08062678:
	ldrb r0, [r2, #0xa]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08062694 @ =gUnk_0810BE10
	adds r1, r1, r0
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0806F1AC
_08062690:
	pop {pc}
	.align 2, 0
_08062694: .4byte gUnk_0810BE10

	thumb_func_start sub_08062698
sub_08062698: @ 0x08062698
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0xc0
	strh r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080626AC
sub_080626AC: @ 0x080626AC
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080626C0
sub_080626C0: @ 0x080626C0
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1, #0x14]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _080626DC
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080626DC
	movs r0, #1
	str r0, [r1, #0x14]
_080626DC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080626E0
sub_080626E0: @ 0x080626E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0806270E
	adds r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0xa
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r2, [r4, #4]
	ldr r1, _08062778 @ =gRoomControls
	ldrh r0, [r4, #6]
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
_0806270E:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806274A
	movs r0, #0xa
	strb r0, [r4, #0x19]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	bl Random
	movs r1, #0xb
	bl __modsi3
	ldrb r1, [r5, #0x15]
	adds r1, r1, r0
	subs r1, #5
	strb r1, [r5, #0x15]
_0806274A:
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bhi _0806277C
	ldrh r0, [r4, #0x1e]
	strh r0, [r5, #0x2e]
	b _08062782
	.align 2, 0
_08062778: .4byte gRoomControls
_0806277C:
	ldr r1, _08062784 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08062782:
	pop {r4, r5, pc}
	.align 2, 0
_08062784: .4byte gUnk_02033280

	thumb_func_start sub_08062788
sub_08062788: @ 0x08062788
	push {r4, lr}
	ldr r4, _080627CC @ =0x00004072
	ldr r1, _080627D0 @ =0x0000060B
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _080627D4 @ =0x0000060C
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _080627D8 @ =0x0000060D
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _080627DC @ =0x0000064B
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _080627E0 @ =0x0000064C
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _080627E4 @ =0x0000064D
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	pop {r4, pc}
	.align 2, 0
_080627CC: .4byte 0x00004072
_080627D0: .4byte 0x0000060B
_080627D4: .4byte 0x0000060C
_080627D8: .4byte 0x0000060D
_080627DC: .4byte 0x0000064B
_080627E0: .4byte 0x0000064C
_080627E4: .4byte 0x0000064D

	thumb_func_start sub_080627E8
sub_080627E8: @ 0x080627E8
	push {lr}
	ldr r0, _0806281C @ =0x0000060B
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08062820 @ =0x0000060C
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08062824 @ =0x0000060D
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08062828 @ =0x0000064B
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0806282C @ =0x0000064C
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08062830 @ =0x0000064D
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0806281C: .4byte 0x0000060B
_08062820: .4byte 0x0000060C
_08062824: .4byte 0x0000060D
_08062828: .4byte 0x0000064B
_0806282C: .4byte 0x0000064C
_08062830: .4byte 0x0000064D

	thumb_func_start sub_08062834
sub_08062834: @ 0x08062834
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	lsls r0, r4, #2
	mov ip, r0
	ldr r2, _08062868 @ =gUnk_0810C0A0
	add r2, ip
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	movs r1, #0x1f
	adds r0, r1, #0
	ands r0, r3
	ldrb r3, [r2]
	adds r6, r0, r3
	ldrb r0, [r5, #0x1e]
	ands r1, r0
	ldrb r2, [r2, #1]
	adds r7, r1, r2
	cmp r4, #8
	bhi _08062946
	ldr r0, _0806286C @ =_08062870
	add r0, ip
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08062868: .4byte gUnk_0810C0A0
_0806286C: .4byte _08062870 @ jump table
_08062870:
	.4byte _08062894 @ case 0
	.4byte _08062894 @ case 1
	.4byte _08062894 @ case 2
	.4byte _08062894 @ case 3
	.4byte _08062894 @ case 4
	.4byte _08062894 @ case 5
	.4byte _080628D8 @ case 6
	.4byte _08062922 @ case 7
	.4byte _08062922 @ case 8
_08062894:
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r4, r0, #4
	cmp r4, #0
	beq _080628A6
	adds r4, #0x50
_080628A6:
	subs r4, #1
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	b _08062916
_080628D8:
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	beq _080628E8
	adds r2, #0x93
_080628E8:
	subs r2, #1
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
_08062916:
	bl sub_0806FFD8
	adds r0, r5, #0
	bl sub_0807000C
	b _08062946
_08062922:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r5, #0
	bl sub_0807000C
_08062946:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08062948
sub_08062948: @ 0x08062948
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	bne _080629B4
	adds r0, #1
	strb r0, [r6, #0x18]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strh r0, [r6, #0x12]
	bl Random
	adds r1, r0, #0
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08062990
	cmp r0, #8
	bgt _0806297E
	cmp r0, #0
	beq _08062988
	b _080629A6
_0806297E:
	cmp r0, #0x10
	beq _08062998
	cmp r0, #0x18
	beq _080629A0
	b _080629A6
_08062988:
	cmp r1, #0x10
	bne _080629A6
	movs r1, #8
	b _080629A6
_08062990:
	cmp r1, #0x18
	bne _080629A6
	movs r1, #0x10
	b _080629A6
_08062998:
	cmp r1, #0
	bne _080629A6
	movs r1, #0x18
	b _080629A6
_080629A0:
	cmp r1, #8
	bne _080629A6
	movs r1, #0
_080629A6:
	strb r1, [r4, #0x15]
	adds r0, r1, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	movs r0, #0x80
	strh r0, [r4, #0x24]
_080629B4:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	adds r1, r0, #4
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	cmp r1, r0
	beq _080629D2
	adds r0, r4, #0
	bl UpdateSprite
	ldrb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
_080629D2:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	adds r2, r4, #0
	adds r2, #0x6c
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _080629F4
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r6, #0x12]
_080629F4:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _08062A06
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r6, #0x12]
_08062A06:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x6e
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _08062A22
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r6, #0x12]
_08062A22:
	cmp r1, r3
	bge _08062A30
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r6, #0x12]
_08062A30:
	ldrh r0, [r6, #0x12]
	subs r0, #1
	strh r0, [r6, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08062A42
	ldr r1, _08062A44 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08062A42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08062A44: .4byte gUnk_02033280

	thumb_func_start sub_08062A48
sub_08062A48: @ 0x08062A48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x6a
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_08062A60
sub_08062A60: @ 0x08062A60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062AB0
	ldr r1, _08062AAC @ =gUnk_0810BDC4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08062AB6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #8
	strh r0, [r4, #0x32]
	movs r1, #6
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08062AA2
	movs r1, #0x16
_08062AA2:
	adds r0, r4, #0
	bl UpdateSprite
	b _08062AB6
	.align 2, 0
_08062AAC: .4byte gUnk_0810BDC4
_08062AB0:
	adds r0, r4, #0
	bl sub_08004274
_08062AB6:
	pop {r4, pc}

	thumb_func_start sub_08062AB8
sub_08062AB8: @ 0x08062AB8
	push {lr}
	ldr r2, _08062ACC @ =gUnk_0810C268
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08062ACC: .4byte gUnk_0810C268

	thumb_func_start sub_08062AD0
sub_08062AD0: @ 0x08062AD0
	bx lr
	.align 2, 0

	thumb_func_start sub_08062AD4
sub_08062AD4: @ 0x08062AD4
	bx lr
	.align 2, 0
