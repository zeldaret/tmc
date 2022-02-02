	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080043E8
sub_080043E8: @ 0x080043E8
	push {r4, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08004414
	adds r4, r0, #0
	bl sub_08016AD2
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	cmp r2, #0
	bmi _08004414
	cmp r0, #0
	beq _08004414
	add r3, pc, #0x10
_08004404:
	adds r3, #4
	ldrh r1, [r3]
	cmp r1, #0
	beq _08004414
	cmp r0, r1
	bne _08004404
	ldrh r0, [r3, #2]
	pop {r4, pc}
_08004414:
	movs r0, #0
	pop {r4, pc}
_08004418:
	.byte 0x0D, 0x00, 0x01, 0x00, 0x10, 0x00, 0x02, 0x00
	.byte 0x11, 0x00, 0x02, 0x00, 0x5A, 0x00, 0x03, 0x00, 0x13, 0x00, 0x04, 0x00, 0x00, 0x00

	non_word_aligned_thumb_func_start sub_0800442E
sub_0800442E: @ 0x0800442E
	push {r0, lr}
	bl sub_080043E8
	cmp r0, #0
	beq _08004448
	lsls r0, r0, #2
	add r1, pc, #0xC
	ldr r1, [r1, r0]
	pop {r0}
	bl _call_via_r1
	movs r0, #1
	pop {pc}
_08004448:
	movs r0, #0
	pop {r1, pc}
_0800444C: .4byte CreateItemOnGround
_08004450: .4byte sub_080043A8
_08004454: .4byte CreateChestSpawner
_08004458: .4byte sub_080043B0

	thumb_func_start sub_0800445C
sub_0800445C: @ 0x0800445C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	beq _08004482
	ldr r5, _080044D8 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004484
	cmp r0, #0
	beq _08004482
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _08004480
	movs r0, #3
	strb r0, [r5, #0xd]
_08004480:
	movs r0, #1
_08004482:
	pop {r4, r5, pc}

	thumb_func_start sub_08004484
sub_08004484: @ 0x08004484
	ldr r2, _080044DC @ =gUnk_03005FF0
	bx r2

	thumb_func_start EnqueueSFX
EnqueueSFX: @ 0x08004488
	ldr r1, _080044E0 @ =gUnk_02024048
	ldrb r2, [r1]
	cmp r2, #8
	bhs _0800449A
	adds r3, r2, #1
	strb r3, [r1]
	ldr r1, _080044E4 @ =gUnk_02021F20
	lsls r2, r2, #1
	strh r0, [r1, r2]
_0800449A:
	bx lr

	thumb_func_start SoundReqClipped
SoundReqClipped: @ 0x0800449C
	push {r1, lr}
	bl CheckOnScreen
	cmp r0, #0
	pop {r0}
	beq _080044AC
	bl SoundReq
_080044AC:
	pop {pc}

	non_word_aligned_thumb_func_start sub_080044AE
sub_080044AE: @ 0x080044AE
	push {lr}
	ldr r3, _080044E8 @ =gPlayerEntity
	cmp r0, r3
	beq _080044CC
	push {r0, r1, r2}
	adds r1, r2, #0
	movs r2, #2
	bl sub_080AE58C
	pop {r0, r1, r2}
	movs r3, #2
	bl sub_080AE7E8
_080044C8:
	pop {r3}
	bx r3
_080044CC:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08079E58
	b _080044C8
	.align 2, 0
_080044D8: .4byte gPlayerEntity
_080044DC: .4byte gUnk_03005FF0
_080044E0: .4byte gUnk_02024048
_080044E4: .4byte gUnk_02021F20
_080044E8: .4byte gPlayerEntity

	thumb_func_start sub_080044EC
sub_080044EC: @ 0x080044EC
	ldr r2, [r0, #0x34]
	ldr r3, [r0, #0x20]
	subs r2, r2, r3
	bpl _080044FE
	str r2, [r0, #0x34]
	subs r3, r3, r1
	str r3, [r0, #0x20]
	movs r0, #2
	bx lr
_080044FE:
	movs r2, #1
	str r2, [r0, #0x34]
	subs r3, r3, r1
	rsbs r3, r3, #0
	lsrs r3, r3, #1
	lsrs r1, r3, #2
	adds r3, r3, r1
	lsrs r1, r3, #0xc
	cmp r1, #0xc
	bhs _08004516
	movs r2, #0
	movs r3, #0
_08004516:
	str r3, [r0, #0x20]
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_0800451C
sub_0800451C: @ 0x0800451C
	push {r0, lr}
	bl sub_080002B8
	adds r1, r0, #0
	pop {r0, r3}
	mov lr, r3
	cmp r1, #0xc
	beq sub_08004542
	cmp r1, #0xb
	beq sub_08004542
	cmp r1, #0xa
	beq ResetCollisionLayer
	cmp r1, #9
	beq ResetCollisionLayer
	cmp r1, #0x26
	beq _0800457A
	cmp r1, #0x27
	beq _0800457A
	bx lr

	non_word_aligned_thumb_func_start sub_08004542
sub_08004542: @ 0x08004542
	movs r1, #0x38
	movs r2, #2
	strb r2, [r0, r1]
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1b]
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x19]
	bx lr

	non_word_aligned_thumb_func_start ResetCollisionLayer
ResetCollisionLayer: @ 0x0800455E
	movs r1, #0x38
	movs r2, #1
	strb r2, [r0, r1]
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x80
	strb r1, [r0, #0x1b]
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x80
	strb r1, [r0, #0x19]
	bx lr
_0800457A:
	movs r1, #0x38
	movs r2, #3
	strb r2, [r0, r1]
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1b]
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x19]
	bx lr

	non_word_aligned_thumb_func_start sub_08004596
sub_08004596: @ 0x08004596
	movs r2, #0x1f
	ldrb r3, [r0, #0x15]
	cmp r3, #0x20
	bhs _080045AE
	subs r1, r1, r3
	beq _080045B2
	ands r1, r2
	cmp r1, #0x10
	movs r1, #1
	blo _080045AC
	rsbs r1, r1, #0
_080045AC:
	adds r1, r3, r1
_080045AE:
	ands r1, r2
	strb r1, [r0, #0x15]
_080045B2:
	bx lr

	thumb_func_start sub_080045B4
sub_080045B4: @ 0x080045B4
	mov ip, r2
	adds r2, r1, #0
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	ldr r3, _08004690 @ =gUnk_030060F0
	bx r3

	thumb_func_start GetFacingDirection
GetFacingDirection: @ 0x080045C4
	push {r4, r5}
	movs r4, #0x32
	movs r5, #0x2e
	ldrsh r3, [r1, r4]
	ldrsh r2, [r1, r5]
	ldrsh r1, [r0, r4]
	ldrsh r0, [r0, r5]
	pop {r4, r5}

	thumb_func_start CalculateDirectionTo
CalculateDirectionTo: @ 0x080045D4
	mov ip, r3
	ldr r3, _08004694 @ =gUnk_030060F0
	bx r3

	non_word_aligned_thumb_func_start sub_080045DA
sub_080045DA: @ 0x080045DA
	push {r0, r1, r4, r5, r6, lr}
	movs r6, #0x40
	cmp r0, #0
	beq _08004632
	ldr r5, _08004698 @ =gUnk_080C93E0
	lsls r2, r1, #8
	adds r1, r0, #0
	adds r0, r2, #0
	bl Div
	ldr r1, _0800469C @ =0x00000106
	cmp r3, r1
	bhs _08004608
	movs r1, #0x6e
	cmp r3, r1
	bhs _08004602
	movs r6, #0
	movs r1, #0
	movs r2, #0x20
	b _08004618
_08004602:
	movs r1, #0x20
	movs r2, #0x40
	b _08004618
_08004608:
	ldr r1, _080046A0 @ =0x00000280
	cmp r3, r1
	bhs _08004614
	movs r1, #0x40
	movs r2, #0x60
	b _08004618
_08004614:
	movs r1, #0x60
	movs r2, #0x7e
_08004618:
	adds r0, r1, r5
	ldrh r4, [r0]
	cmp r3, r4
	blo _0800462C
	ldrh r4, [r0, #2]
	cmp r3, r4
	bhs _0800462C
	lsrs r6, r1, #1
	adds r6, #1
	b _08004632
_0800462C:
	adds r1, #2
	cmp r1, r2
	blo _08004618
_08004632:
	adds r2, r6, #0
	pop {r0, r1, r4, r5, r6}
	cmp r0, #0
	bmi _08004644
	movs r0, #0x40
	cmp r1, #0
	bmi _0800464A
_08004640:
	adds r0, r0, r2
	pop {pc}
_08004644:
	movs r0, #0xc0
	cmp r1, #0
	bmi _08004640
_0800464A:
	subs r0, r0, r2
	pop {pc}

gUnk_0800464E::
	.byte 0x00, 0x01
	.byte 0x02, 0x03, 0x04, 0x00, 0x00, 0x00, 0x08, 0x07, 0x06, 0x05, 0x04, 0x00, 0x00, 0x00, 0x10, 0x0F
	.byte 0x0E, 0x0D, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x1F
	.byte 0x1E, 0x1D, 0x1C, 0x00, 0x00, 0x00, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x00, 0x00, 0x00, 0x10, 0x11
	.byte 0x12, 0x13, 0x14, 0x00, 0x00, 0x00, 0x18, 0x17, 0x16, 0x15, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00

_08004690: .4byte gUnk_030060F0
_08004694: .4byte gUnk_030060F0
_08004698: .4byte gUnk_080C93E0
_0800469C: .4byte 0x00000106
_080046A0: .4byte 0x00000280

gUnk_080046A4:: @ 080046A4
	.incbin "code_080043E8/gUnk_080046A4.bin"

gUnk_080047F6:: @ 080047F6
	.incbin "code_080043E8/gUnk_080047F6.bin"

gUnk_080049D6:: @ 080049D6
	.incbin "code_080043E8/gUnk_080049D6.bin"

gUnk_080049F6:: @ 080049F6
	.incbin "code_080043E8/gUnk_080049F6.bin"

gUnk_080049FE:: @ gUnk_080049FE
	.incbin "code_080043E8/gUnk_080049FE.bin"

gUnk_08004A0C:: @ 08004A0C
	.incbin "code_080043E8/gUnk_08004A0C.bin"

gUnk_08004A16:: @ 08004A16
	.incbin "code_080043E8/gUnk_08004A16.bin"

gUnk_08004A24:: @ 08004A24
	.incbin "code_080043E8/gUnk_08004A24.bin"

gUnk_08004A32:: @ 08004A32
	.incbin "code_080043E8/gUnk_08004A32.bin"

gUnk_08004A48:: @ 08004A48
	.incbin "code_080043E8/gUnk_08004A48.bin"

gUnk_08004A72:: @ 08004A72
	.incbin "code_080043E8/gUnk_08004A72.bin"

gUnk_08004A8C:: @ 08004A8C
	.incbin "code_080043E8/gUnk_08004A8C.bin"

gUnk_08004AA6:: @ 08004AA6
	.incbin "code_080043E8/gUnk_08004AA6.bin"
