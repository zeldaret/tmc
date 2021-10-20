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

	thumb_func_start sub_0800449C
sub_0800449C: @ 0x0800449C
	push {r1, lr}
	bl sub_080040A8
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
	beq sub_0800455E
	cmp r1, #9
	beq sub_0800455E
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

	non_word_aligned_thumb_func_start sub_0800455E
sub_0800455E: @ 0x0800455E
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

	thumb_func_start sub_080045D4
sub_080045D4: @ 0x080045D4
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

gUnk_08004AEC:: @ 08004AEC
	.incbin "code_080043E8/gUnk_08004AEC.bin"

gUnk_08004AF1:: @ 08004AF1
	.incbin "code_080043E8/gUnk_08004AF1.bin"

gUnk_08004B1A:: @ 08004B1A
	.incbin "code_080043E8/gUnk_08004B1A.bin"

gUnk_08004B43:: @ 08004B43
	.incbin "code_080043E8/gUnk_08004B43.bin"

gUnk_08004B6C:: @ 08004B6C
	.incbin "code_080043E8/gUnk_08004B6C.bin"

gUnk_08004B95:: @ 08004B95
	.incbin "code_080043E8/gUnk_08004B95.bin"

gUnk_08004BBE:: @ 08004BBE
	.incbin "code_080043E8/gUnk_08004BBE.bin"

gUnk_08004BEE:: @ 08004BEE
	.incbin "code_080043E8/gUnk_08004BEE.bin"

gUnk_08004BF7:: @ 08004BF7
	.incbin "code_080043E8/gUnk_08004BF7.bin"

gUnk_08004C27:: @ 08004C27
	.incbin "code_080043E8/gUnk_08004C27.bin"

gUnk_08004C30:: @ 08004C30
	.incbin "code_080043E8/gUnk_08004C30.bin"

gUnk_08004C60:: @ 08004C60
	.incbin "code_080043E8/gUnk_08004C60.bin"

gUnk_08004C69:: @ 08004C69
	.incbin "code_080043E8/gUnk_08004C69.bin"

gUnk_08004CD2:: @ 08004CD2
	.incbin "code_080043E8/gUnk_08004CD2.bin"

gUnk_08004D27:: @ 08004D27
	.incbin "code_080043E8/gUnk_08004D27.bin"

gUnk_08004D90:: @ 08004D90
	.incbin "code_080043E8/gUnk_08004D90.bin"

gUnk_08004DE5:: @ 08004DE5
	.incbin "code_080043E8/gUnk_08004DE5.bin"

gUnk_08004E4E:: @ 08004E4E
	.incbin "code_080043E8/gUnk_08004E4E.bin"

gUnk_08004EA3:: @ 08004EA3
	.incbin "code_080043E8/gUnk_08004EA3.bin"

gUnk_08004F0C:: @ 08004F0C
	.incbin "code_080043E8/gUnk_08004F0C.bin"

gUnk_08004F61:: @ 08004F61
	.incbin "code_080043E8/gUnk_08004F61.bin"

gUnk_08004FA2:: @ 08004FA2
	.incbin "code_080043E8/gUnk_08004FA2.bin"

gUnk_08004FE3:: @ 08004FE3
	.incbin "code_080043E8/gUnk_08004FE3.bin"

gUnk_08005024:: @ 08005024
	.incbin "code_080043E8/gUnk_08005024.bin"

gUnk_08005065:: @ 08005065
	.incbin "code_080043E8/gUnk_08005065.bin"

gUnk_0800507A:: @ 0800507A
	.incbin "code_080043E8/gUnk_0800507A.bin"

gUnk_0800508F:: @ 0800508F
	.incbin "code_080043E8/gUnk_0800508F.bin"

gUnk_080050A4:: @ 080050A4
	.incbin "code_080043E8/gUnk_080050A4.bin"

gUnk_080050B5:: @ 080050B5
	.incbin "code_080043E8/gUnk_080050B5.bin"

gUnk_080050C6:: @ 080050C6
	.incbin "code_080043E8/gUnk_080050C6.bin"

gUnk_080050D7:: @ 080050D7
	.incbin "code_080043E8/gUnk_080050D7.bin"

gUnk_0800510B:: @ 0800510B
	.incbin "code_080043E8/gUnk_0800510B.bin"

gUnk_0800513F:: @ 0800513F
	.incbin "code_080043E8/gUnk_0800513F.bin"

gUnk_08005173:: @ 08005173
	.incbin "code_080043E8/gUnk_08005173.bin"

gUnk_08005197:: @ 08005197
	.incbin "code_080043E8/gUnk_08005197.bin"

gUnk_0800519F:: @ 0800519F
	.incbin "code_080043E8/gUnk_0800519F.bin"

gUnk_080051C3:: @ 080051C3
	.incbin "code_080043E8/gUnk_080051C3.bin"

gUnk_080051CB:: @ 080051CB
	.incbin "code_080043E8/gUnk_080051CB.bin"

gUnk_080051EF:: @ 080051EF
	.incbin "code_080043E8/gUnk_080051EF.bin"

gUnk_080051F7:: @ 080051F7
	.incbin "code_080043E8/gUnk_080051F7.bin"

gUnk_08005214:: @ 08005214
	.incbin "code_080043E8/gUnk_08005214.bin"

gUnk_08005231:: @ 08005231
	.incbin "code_080043E8/gUnk_08005231.bin"

gUnk_0800524E:: @ 0800524E
	.incbin "code_080043E8/gUnk_0800524E.bin"

gUnk_08005273:: @ 08005273
	.incbin "code_080043E8/gUnk_08005273.bin"

gUnk_0800528C:: @ 0800528C
	.incbin "code_080043E8/gUnk_0800528C.bin"

gUnk_08005299:: @ 08005299
	.incbin "code_080043E8/gUnk_08005299.bin"

gUnk_080052A6:: @ 080052A6
	.incbin "code_080043E8/gUnk_080052A6.bin"

gUnk_080052B3:: @ 080052B3
	.incbin "code_080043E8/gUnk_080052B3.bin"

gUnk_080052C3:: @ 080052C3
	.incbin "code_080043E8/gUnk_080052C3.bin"

gUnk_080052C8:: @ 080052C8
	.incbin "code_080043E8/gUnk_080052C8.bin"

gUnk_080052D8:: @ 080052D8
	.incbin "code_080043E8/gUnk_080052D8.bin"

gUnk_080052DD:: @ 080052DD
	.incbin "code_080043E8/gUnk_080052DD.bin"

gUnk_080052ED:: @ 080052ED
	.incbin "code_080043E8/gUnk_080052ED.bin"

gUnk_080052F2:: @ 080052F2
	.incbin "code_080043E8/gUnk_080052F2.bin"

gUnk_0800530A:: @ 0800530A
	.incbin "code_080043E8/gUnk_0800530A.bin"

gUnk_08005322:: @ 08005322
	.incbin "code_080043E8/gUnk_08005322.bin"

gUnk_0800533A:: @ 0800533A
	.incbin "code_080043E8/gUnk_0800533A.bin"

gUnk_08005363:: @ 08005363
	.incbin "code_080043E8/gUnk_08005363.bin"

gUnk_0800538C:: @ 0800538C
	.incbin "code_080043E8/gUnk_0800538C.bin"

gUnk_080053B5:: @ 080053B5
	.incbin "code_080043E8/gUnk_080053B5.bin"

gUnk_08005416:: @ 08005416
	.incbin "code_080043E8/gUnk_08005416.bin"

gUnk_08005477:: @ 08005477
	.incbin "code_080043E8/gUnk_08005477.bin"

gUnk_080054D8:: @ 080054D8
	.incbin "code_080043E8/gUnk_080054D8.bin"

gUnk_080054E5:: @ 080054E5
	.incbin "code_080043E8/gUnk_080054E5.bin"

gUnk_080054F5:: @ 080054F5
	.incbin "code_080043E8/gUnk_080054F5.bin"

gUnk_08005556:: @ 08005556
	.incbin "code_080043E8/gUnk_08005556.bin"

gUnk_08005563:: @ 08005563
	.incbin "code_080043E8/gUnk_08005563.bin"

gUnk_08005573:: @ 08005573
	.incbin "code_080043E8/gUnk_08005573.bin"

gUnk_080055D4:: @ 080055D4
	.incbin "code_080043E8/gUnk_080055D4.bin"

gUnk_080055E1:: @ 080055E1
	.incbin "code_080043E8/gUnk_080055E1.bin"

gUnk_080055F1:: @ 080055F1
	.incbin "code_080043E8/gUnk_080055F1.bin"

gUnk_08005652:: @ 08005652
	.incbin "code_080043E8/gUnk_08005652.bin"

gUnk_08005673:: @ 08005673
	.incbin "code_080043E8/gUnk_08005673.bin"

gUnk_08005694:: @ 08005694
	.incbin "code_080043E8/gUnk_08005694.bin"

gUnk_080056B5:: @ 080056B5
	.incbin "code_080043E8/gUnk_080056B5.bin"

gUnk_080056C2:: @ 080056C2
	.incbin "code_080043E8/gUnk_080056C2.bin"

gUnk_080056CF:: @ 080056CF
	.incbin "code_080043E8/gUnk_080056CF.bin"

gUnk_080056DC:: @ 080056DC
	.incbin "code_080043E8/gUnk_080056DC.bin"

gUnk_080056EC:: @ 080056EC
	.incbin "code_080043E8/gUnk_080056EC.bin"

gUnk_080056F9:: @ 080056F9
	.incbin "code_080043E8/gUnk_080056F9.bin"

gUnk_08005716:: @ 08005716
	.incbin "code_080043E8/gUnk_08005716.bin"

gUnk_08005733:: @ 08005733
	.incbin "code_080043E8/gUnk_08005733.bin"

gUnk_08005750:: @ 08005750
	.incbin "code_080043E8/gUnk_08005750.bin"

gUnk_08005758:: @ 08005758
	.incbin "code_080043E8/gUnk_08005758.bin"

gUnk_0800575D:: @ 0800575D
	.incbin "code_080043E8/gUnk_0800575D.bin"

gUnk_08005771:: @ 08005771
	.incbin "code_080043E8/gUnk_08005771.bin"

gUnk_08005779:: @ 08005779
	.incbin "code_080043E8/gUnk_08005779.bin"

gUnk_0800577E:: @ 0800577E
	.incbin "code_080043E8/gUnk_0800577E.bin"

gUnk_08005792:: @ 08005792
	.incbin "code_080043E8/gUnk_08005792.bin"

gUnk_0800579A:: @ 0800579A
	.incbin "code_080043E8/gUnk_0800579A.bin"

gUnk_0800579F:: @ 0800579F
	.incbin "code_080043E8/gUnk_0800579F.bin"

gUnk_080057B3:: @ 080057B3
	.incbin "code_080043E8/gUnk_080057B3.bin"

gUnk_080057D4:: @ 080057D4
	.incbin "code_080043E8/gUnk_080057D4.bin"

gUnk_080057F5:: @ 080057F5
	.incbin "code_080043E8/gUnk_080057F5.bin"

gUnk_08005816:: @ 08005816
	.incbin "code_080043E8/gUnk_08005816.bin"

gUnk_08005826:: @ 08005826
	.incbin "code_080043E8/gUnk_08005826.bin"

gUnk_0800582F:: @ 0800582F
	.incbin "code_080043E8/gUnk_0800582F.bin"

gUnk_0800583F:: @ 0800583F
	.incbin "code_080043E8/gUnk_0800583F.bin"

gUnk_08005848:: @ 08005848
	.incbin "code_080043E8/gUnk_08005848.bin"

gUnk_08005858:: @ 08005858
	.incbin "code_080043E8/gUnk_08005858.bin"

gUnk_08005861:: @ 08005861
	.incbin "code_080043E8/gUnk_08005861.bin"

gUnk_08005882:: @ 08005882
	.incbin "code_080043E8/gUnk_08005882.bin"

gUnk_080058A3:: @ 080058A3
	.incbin "code_080043E8/gUnk_080058A3.bin"

gUnk_080058C4:: @ 080058C4
	.incbin "code_080043E8/gUnk_080058C4.bin"

gUnk_080058DD:: @ 080058DD
	.incbin "code_080043E8/gUnk_080058DD.bin"

gUnk_080058F6:: @ 080058F6
	.incbin "code_080043E8/gUnk_080058F6.bin"

gUnk_0800590F:: @ 0800590F
	.incbin "code_080043E8/gUnk_0800590F.bin"

gUnk_08005920:: @ 08005920
	.incbin "code_080043E8/gUnk_08005920.bin"

gUnk_08005931:: @ 08005931
	.incbin "code_080043E8/gUnk_08005931.bin"

gUnk_08005942:: @ 08005942
	.incbin "code_080043E8/gUnk_08005942.bin"

gUnk_08005953:: @ 08005953
	.incbin "code_080043E8/gUnk_08005953.bin"

gUnk_08005964:: @ 08005964
	.incbin "code_080043E8/gUnk_08005964.bin"

gUnk_08005975:: @ 08005975
	.incbin "code_080043E8/gUnk_08005975.bin"

gUnk_0800597E:: @ 0800597E
	.incbin "code_080043E8/gUnk_0800597E.bin"

gUnk_08005987:: @ 08005987
	.incbin "code_080043E8/gUnk_08005987.bin"

gUnk_08005990:: @ 08005990
	.incbin "code_080043E8/gUnk_08005990.bin"

gUnk_080059A4:: @ 080059A4
	.incbin "code_080043E8/gUnk_080059A4.bin"

gUnk_080059A9:: @ 080059A9
	.incbin "code_080043E8/gUnk_080059A9.bin"

gUnk_08005A41:: @ 08005A41
	.incbin "code_080043E8/gUnk_08005A41.bin"

gUnk_08005A55:: @ 08005A55
	.incbin "code_080043E8/gUnk_08005A55.bin"

gUnk_08005A5A:: @ 08005A5A
	.incbin "code_080043E8/gUnk_08005A5A.bin"

gUnk_08005A86:: @ 08005A86
	.incbin "code_080043E8/gUnk_08005A86.bin"

gUnk_08005A9B:: @ 08005A9B
	.incbin "code_080043E8/gUnk_08005A9B.bin"

gUnk_08005AA0:: @ 08005AA0
	.incbin "code_080043E8/gUnk_08005AA0.bin"

gUnk_08005AB9:: @ 08005AB9
	.incbin "code_080043E8/gUnk_08005AB9.bin"

gUnk_08005AD2:: @ 08005AD2
	.incbin "code_080043E8/gUnk_08005AD2.bin"

gUnk_08005AEB:: @ 08005AEB
	.incbin "code_080043E8/gUnk_08005AEB.bin"

gUnk_08005AF4:: @ 08005AF4
	.incbin "code_080043E8/gUnk_08005AF4.bin"

gUnk_08005B18:: @ 08005B18
	.incbin "code_080043E8/gUnk_08005B18.bin"

gUnk_08005B24:: @ 08005B24
	.incbin "code_080043E8/gUnk_08005B24.bin"

gUnk_08005B4D:: @ 08005B4D
	.incbin "code_080043E8/gUnk_08005B4D.bin"

gUnk_08005B76:: @ 08005B76
	.incbin "code_080043E8/gUnk_08005B76.bin"

gUnk_08005B9F:: @ 08005B9F
	.incbin "code_080043E8/gUnk_08005B9F.bin"

gUnk_08005BA8:: @ 08005BA8
	.incbin "code_080043E8/gUnk_08005BA8.bin"

gUnk_08005BB1:: @ 08005BB1
	.incbin "code_080043E8/gUnk_08005BB1.bin"

gUnk_08005BBA:: @ 08005BBA
	.incbin "code_080043E8/gUnk_08005BBA.bin"

gUnk_08005BC3:: @ 08005BC3
	.incbin "code_080043E8/gUnk_08005BC3.bin"

gUnk_08005BCC:: @ 08005BCC
	.incbin "code_080043E8/gUnk_08005BCC.bin"

gUnk_08005BE5:: @ 08005BE5
	.incbin "code_080043E8/gUnk_08005BE5.bin"

gUnk_08005BFE:: @ 08005BFE
	.incbin "code_080043E8/gUnk_08005BFE.bin"

gUnk_08005C17:: @ 08005C17
	.incbin "code_080043E8/gUnk_08005C17.bin"

gUnk_08005C30:: @ 08005C30
	.incbin "code_080043E8/gUnk_08005C30.bin"

gUnk_08005C49:: @ 08005C49
	.incbin "code_080043E8/gUnk_08005C49.bin"

gUnk_08005C62:: @ 08005C62
	.incbin "code_080043E8/gUnk_08005C62.bin"

gUnk_08005C7B:: @ 08005C7B
	.incbin "code_080043E8/gUnk_08005C7B.bin"

gUnk_08005C88:: @ 08005C88
	.incbin "code_080043E8/gUnk_08005C88.bin"

gUnk_08005C95:: @ 08005C95
	.incbin "code_080043E8/gUnk_08005C95.bin"

gUnk_08005C9A:: @ 08005C9A
	.incbin "code_080043E8/gUnk_08005C9A.bin"

gUnk_08005C9F:: @ 08005C9F
	.incbin "code_080043E8/gUnk_08005C9F.bin"

gUnk_08005CA4:: @ 08005CA4
	.incbin "code_080043E8/gUnk_08005CA4.bin"

gUnk_08005CCD:: @ 08005CCD
	.incbin "code_080043E8/gUnk_08005CCD.bin"

gUnk_08005CF6:: @ 08005CF6
	.incbin "code_080043E8/gUnk_08005CF6.bin"

gUnk_08005D1F:: @ 08005D1F
	.incbin "code_080043E8/gUnk_08005D1F.bin"

gUnk_08005D40:: @ 08005D40
	.incbin "code_080043E8/gUnk_08005D40.bin"

gUnk_08005D50:: @ 08005D50
	.incbin "code_080043E8/gUnk_08005D50.bin"

gUnk_08005D64:: @ 08005D64
	.incbin "code_080043E8/gUnk_08005D64.bin"

gUnk_08005D85:: @ 08005D85
	.incbin "code_080043E8/gUnk_08005D85.bin"

gUnk_08005DA6:: @ 08005DA6
	.incbin "code_080043E8/gUnk_08005DA6.bin"

gUnk_08005DB6:: @ 08005DB6
	.incbin "code_080043E8/gUnk_08005DB6.bin"

gUnk_08005DCA:: @ 08005DCA
	.incbin "code_080043E8/gUnk_08005DCA.bin"

gUnk_08005DEB:: @ 08005DEB
	.incbin "code_080043E8/gUnk_08005DEB.bin"

gUnk_08005E0C:: @ 08005E0C
	.incbin "code_080043E8/gUnk_08005E0C.bin"

gUnk_08005E1D:: @ 08005E1D
	.incbin "code_080043E8/gUnk_08005E1D.bin"

gUnk_08005E31:: @ 08005E31
	.incbin "code_080043E8/gUnk_08005E31.bin"

gUnk_08005E52:: @ 08005E52
	.incbin "code_080043E8/gUnk_08005E52.bin"

gUnk_08005E73:: @ 08005E73
	.incbin "code_080043E8/gUnk_08005E73.bin"

gUnk_08005E88:: @ 08005E88
	.incbin "code_080043E8/gUnk_08005E88.bin"

gUnk_08005E9D:: @ 08005E9D
	.incbin "code_080043E8/gUnk_08005E9D.bin"

gUnk_08005EB2:: @ 08005EB2
	.incbin "code_080043E8/gUnk_08005EB2.bin"

gUnk_08005ED3:: @ 08005ED3
	.incbin "code_080043E8/gUnk_08005ED3.bin"

gUnk_08005EF4:: @ 08005EF4
	.incbin "code_080043E8/gUnk_08005EF4.bin"

gUnk_08005F15:: @ 08005F15
	.incbin "code_080043E8/gUnk_08005F15.bin"

gUnk_08005F22:: @ 08005F22
	.incbin "code_080043E8/gUnk_08005F22.bin"

gUnk_08005F2F:: @ 08005F2F
	.incbin "code_080043E8/gUnk_08005F2F.bin"

gUnk_08005F3C:: @ 08005F3C
	.incbin "code_080043E8/gUnk_08005F3C.bin"

gUnk_08005F49:: @ 08005F49
	.incbin "code_080043E8/gUnk_08005F49.bin"

gUnk_08005F56:: @ 08005F56
	.incbin "code_080043E8/gUnk_08005F56.bin"

gUnk_08005F63:: @ 08005F63
	.incbin "code_080043E8/gUnk_08005F63.bin"

gUnk_08005F6B:: @ 08005F6B
	.incbin "code_080043E8/gUnk_08005F6B.bin"

gUnk_08005F78:: @ 08005F78
	.incbin "code_080043E8/gUnk_08005F78.bin"

gUnk_08005F80:: @ 08005F80
	.incbin "code_080043E8/gUnk_08005F80.bin"

gUnk_08005F8D:: @ 08005F8D
	.incbin "code_080043E8/gUnk_08005F8D.bin"

gUnk_08005F95:: @ 08005F95
	.incbin "code_080043E8/gUnk_08005F95.bin"

gUnk_08005FA2:: @ 08005FA2
	.incbin "code_080043E8/gUnk_08005FA2.bin"

gUnk_08005FAA:: @ 08005FAA
	.incbin "code_080043E8/gUnk_08005FAA.bin"

gUnk_08005FB7:: @ 08005FB7
	.incbin "code_080043E8/gUnk_08005FB7.bin"

gUnk_08005FBF:: @ 08005FBF
	.incbin "code_080043E8/gUnk_08005FBF.bin"

gUnk_08005FCC:: @ 08005FCC
	.incbin "code_080043E8/gUnk_08005FCC.bin"

gUnk_08005FD4:: @ 08005FD4
	.incbin "code_080043E8/gUnk_08005FD4.bin"

gUnk_08005FE1:: @ 08005FE1
	.incbin "code_080043E8/gUnk_08005FE1.bin"

gUnk_08005FE9:: @ 08005FE9
	.incbin "code_080043E8/gUnk_08005FE9.bin"

gUnk_08005FF6:: @ 08005FF6
	.incbin "code_080043E8/gUnk_08005FF6.bin"

gUnk_08005FFE:: @ 08005FFE
	.incbin "code_080043E8/gUnk_08005FFE.bin"

gUnk_0800600B:: @ 0800600B
	.incbin "code_080043E8/gUnk_0800600B.bin"

gUnk_08006013:: @ 08006013
	.incbin "code_080043E8/gUnk_08006013.bin"

gUnk_08006020:: @ 08006020
	.incbin "code_080043E8/gUnk_08006020.bin"

gUnk_08006041:: @ 08006041
	.incbin "code_080043E8/gUnk_08006041.bin"

gUnk_08006062:: @ 08006062
	.incbin "code_080043E8/gUnk_08006062.bin"

gUnk_08006083:: @ 08006083
	.incbin "code_080043E8/gUnk_08006083.bin"

gUnk_080060E3:: @ 080060E3
	.incbin "code_080043E8/gUnk_080060E3.bin"

gUnk_0800611F:: @ 0800611F
	.incbin "code_080043E8/gUnk_0800611F.bin"

gUnk_0800615B:: @ 0800615B
	.incbin "code_080043E8/gUnk_0800615B.bin"

gUnk_08006197:: @ 08006197
	.incbin "code_080043E8/gUnk_08006197.bin"

gUnk_080061D8:: @ 080061D8
	.incbin "code_080043E8/gUnk_080061D8.bin"

gUnk_08006219:: @ 08006219
	.incbin "code_080043E8/gUnk_08006219.bin"

gUnk_0800625A:: @ 0800625A
	.incbin "code_080043E8/gUnk_0800625A.bin"

gUnk_0800627A:: @ 0800627A
	.incbin "code_080043E8/gUnk_0800627A.bin"

gUnk_0800629A:: @ 0800629A
	.incbin "code_080043E8/gUnk_0800629A.bin"

gUnk_080062BA:: @ 080062BA
	.incbin "code_080043E8/gUnk_080062BA.bin"

gUnk_080062C2:: @ 080062C2
	.incbin "code_080043E8/gUnk_080062C2.bin"

gUnk_080062C7:: @ 080062C7
	.incbin "code_080043E8/gUnk_080062C7.bin"

gUnk_080062CF:: @ 080062CF
	.incbin "code_080043E8/gUnk_080062CF.bin"

gUnk_080062D4:: @ 080062D4
	.incbin "code_080043E8/gUnk_080062D4.bin"

gUnk_080062DC:: @ 080062DC
	.incbin "code_080043E8/gUnk_080062DC.bin"

gUnk_080062E1:: @ 080062E1
	.incbin "code_080043E8/gUnk_080062E1.bin"

gUnk_08006305:: @ 08006305
	.incbin "code_080043E8/gUnk_08006305.bin"

gUnk_08006329:: @ 08006329
	.incbin "code_080043E8/gUnk_08006329.bin"

gUnk_0800634D:: @ 0800634D
	.incbin "code_080043E8/gUnk_0800634D.bin"

gUnk_08006361:: @ 08006361
	.incbin "code_080043E8/gUnk_08006361.bin"

gUnk_08006375:: @ 08006375
	.incbin "code_080043E8/gUnk_08006375.bin"

gUnk_08006389:: @ 08006389
	.incbin "code_080043E8/gUnk_08006389.bin"

gUnk_0800639D:: @ 0800639D
	.incbin "code_080043E8/gUnk_0800639D.bin"

gUnk_080063B2:: @ 080063B2
	.incbin "code_080043E8/gUnk_080063B2.bin"

gUnk_080063C6:: @ 080063C6
	.incbin "code_080043E8/gUnk_080063C6.bin"

gUnk_080063DB:: @ 080063DB
	.incbin "code_080043E8/gUnk_080063DB.bin"

gUnk_080063EF:: @ 080063EF
	.incbin "code_080043E8/gUnk_080063EF.bin"

gUnk_08006404:: @ 08006404
	.incbin "code_080043E8/gUnk_08006404.bin"

gUnk_08006418:: @ 08006418
	.incbin "code_080043E8/gUnk_08006418.bin"

gUnk_0800642D:: @ 0800642D
	.incbin "code_080043E8/gUnk_0800642D.bin"

gUnk_08006451:: @ 08006451
	.incbin "code_080043E8/gUnk_08006451.bin"

gUnk_08006475:: @ 08006475
	.incbin "code_080043E8/gUnk_08006475.bin"

gUnk_08006499:: @ 08006499
	.incbin "code_080043E8/gUnk_08006499.bin"

gUnk_080064BD:: @ 080064BD
	.incbin "code_080043E8/gUnk_080064BD.bin"

gUnk_080064E2:: @ 080064E2
	.incbin "code_080043E8/gUnk_080064E2.bin"

gUnk_08006507:: @ 08006507
	.incbin "code_080043E8/gUnk_08006507.bin"

gUnk_0800652C:: @ 0800652C
	.incbin "code_080043E8/gUnk_0800652C.bin"

gUnk_08006551:: @ 08006551
	.incbin "code_080043E8/gUnk_08006551.bin"

gUnk_0800657A:: @ 0800657A
	.incbin "code_080043E8/gUnk_0800657A.bin"

gUnk_080065A3:: @ 080065A3
	.incbin "code_080043E8/gUnk_080065A3.bin"

gUnk_080065CF:: @ 080065CF
	.incbin "code_080043E8/gUnk_080065CF.bin"

gUnk_080065FB:: @ 080065FB
	.incbin "code_080043E8/gUnk_080065FB.bin"

gUnk_08006627:: @ 08006627
	.incbin "code_080043E8/gUnk_08006627.bin"

gUnk_08006653:: @ 08006653
	.incbin "code_080043E8/gUnk_08006653.bin"

gUnk_0800666F:: @ 0800666F
	.incbin "code_080043E8/gUnk_0800666F.bin"

gUnk_0800668B:: @ 0800668B
	.incbin "code_080043E8/gUnk_0800668B.bin"

gUnk_080066A7:: @ 080066A7
	.incbin "code_080043E8/gUnk_080066A7.bin"

gUnk_080066BF:: @ 080066BF
	.incbin "code_080043E8/gUnk_080066BF.bin"

gUnk_080066D7:: @ 080066D7
	.incbin "code_080043E8/gUnk_080066D7.bin"

gUnk_080066EF:: @ 080066EF
	.incbin "code_080043E8/gUnk_080066EF.bin"

gUnk_08006718:: @ 08006718
	.incbin "code_080043E8/gUnk_08006718.bin"

gUnk_08006785:: @ 08006785
	.incbin "code_080043E8/gUnk_08006785.bin"

gUnk_0800679D:: @ 0800679D
	.incbin "code_080043E8/gUnk_0800679D.bin"

gUnk_080067B5:: @ 080067B5
	.incbin "code_080043E8/gUnk_080067B5.bin"

gUnk_080067DE:: @ 080067DE
	.incbin "code_080043E8/gUnk_080067DE.bin"

gUnk_08006807:: @ 08006807
	.incbin "code_080043E8/gUnk_08006807.bin"

gUnk_0800681F:: @ 0800681F
	.incbin "code_080043E8/gUnk_0800681F.bin"

gUnk_08006848:: @ 08006848
	.incbin "code_080043E8/gUnk_08006848.bin"

gUnk_08006871:: @ 08006871
	.incbin "code_080043E8/gUnk_08006871.bin"

gUnk_08006889:: @ 08006889
	.incbin "code_080043E8/gUnk_08006889.bin"

gUnk_0800689E:: @ 0800689E
	.incbin "code_080043E8/gUnk_0800689E.bin"

gUnk_080068CA:: @ 080068CA
	.incbin "code_080043E8/gUnk_080068CA.bin"

gUnk_080068F6:: @ 080068F6
	.incbin "code_080043E8/gUnk_080068F6.bin"

gUnk_08006922:: @ 08006922
	.incbin "code_080043E8/gUnk_08006922.bin"

gUnk_08006956:: @ 08006956
	.incbin "code_080043E8/gUnk_08006956.bin"

gUnk_0800698A:: @ 0800698A
	.incbin "code_080043E8/gUnk_0800698A.bin"

gUnk_080069BE:: @ 080069BE
	.incbin "code_080043E8/gUnk_080069BE.bin"

gUnk_08006A02:: @ 08006A02
	.incbin "code_080043E8/gUnk_08006A02.bin"

gUnk_08006A46:: @ 08006A46
	.incbin "code_080043E8/gUnk_08006A46.bin"

gUnk_08006A8A:: @ 08006A8A
	.incbin "code_080043E8/gUnk_08006A8A.bin"

gUnk_08006A9F:: @ 08006A9F
	.incbin "code_080043E8/gUnk_08006A9F.bin"

gUnk_08006AAF:: @ 08006AAF
	.incbin "code_080043E8/gUnk_08006AAF.bin"

gUnk_08006AC4:: @ 08006AC4
	.incbin "code_080043E8/gUnk_08006AC4.bin"

gUnk_08006AD4:: @ 08006AD4
	.incbin "code_080043E8/gUnk_08006AD4.bin"

gUnk_08006AE9:: @ 08006AE9
	.incbin "code_080043E8/gUnk_08006AE9.bin"

gUnk_08006AF9:: @ 08006AF9
	.incbin "code_080043E8/gUnk_08006AF9.bin"

gUnk_08006B09:: @ 08006B09
	.incbin "code_080043E8/gUnk_08006B09.bin"

gUnk_08006B32:: @ 08006B32
	.incbin "code_080043E8/gUnk_08006B32.bin"

gUnk_08006B4E:: @ 08006B4E
	.incbin "code_080043E8/gUnk_08006B4E.bin"

gUnk_08006B5E:: @ 08006B5E
	.incbin "code_080043E8/gUnk_08006B5E.bin"

gUnk_08006B87:: @ 08006B87
	.incbin "code_080043E8/gUnk_08006B87.bin"

gUnk_08006BA3:: @ 08006BA3
	.incbin "code_080043E8/gUnk_08006BA3.bin"

gUnk_08006BB3:: @ 08006BB3
	.incbin "code_080043E8/gUnk_08006BB3.bin"

gUnk_08006BB8:: @ 08006BB8
	.incbin "code_080043E8/gUnk_08006BB8.bin"

gUnk_08006BD4:: @ 08006BD4
	.incbin "code_080043E8/gUnk_08006BD4.bin"

gUnk_08006BFD:: @ 08006BFD
	.incbin "code_080043E8/gUnk_08006BFD.bin"

gUnk_08006C26:: @ 08006C26
	.incbin "code_080043E8/gUnk_08006C26.bin"

gUnk_08006C4F:: @ 08006C4F
	.incbin "code_080043E8/gUnk_08006C4F.bin"

gUnk_08006C93:: @ 08006C93
	.incbin "code_080043E8/gUnk_08006C93.bin"

gUnk_08006CD7:: @ 08006CD7
	.incbin "code_080043E8/gUnk_08006CD7.bin"

gUnk_08006D1B:: @ 08006D1B
	.incbin "code_080043E8/gUnk_08006D1B.bin"

gUnk_08006D4B:: @ 08006D4B
	.incbin "code_080043E8/gUnk_08006D4B.bin"

gUnk_08006D7B:: @ 08006D7B
	.incbin "code_080043E8/gUnk_08006D7B.bin"

gUnk_08006DAB:: @ 08006DAB
	.incbin "code_080043E8/gUnk_08006DAB.bin"

gUnk_08006DB7:: @ 08006DB7
	.incbin "code_080043E8/gUnk_08006DB7.bin"

gUnk_08006DC3:: @ 08006DC3
	.incbin "code_080043E8/gUnk_08006DC3.bin"

gUnk_08006DCF:: @ 08006DCF
	.incbin "code_080043E8/gUnk_08006DCF.bin"

gUnk_08006E0B:: @ 08006E0B
	.incbin "code_080043E8/gUnk_08006E0B.bin"

gUnk_08006E1B:: @ 08006E1B
	.incbin "code_080043E8/gUnk_08006E1B.bin"

gUnk_08006E1F:: @ 08006E1F
	.incbin "code_080043E8/gUnk_08006E1F.bin"

gUnk_08006E38:: @ 08006E38
	.incbin "code_080043E8/gUnk_08006E38.bin"

gUnk_08006E48:: @ 08006E48
	.incbin "code_080043E8/gUnk_08006E48.bin"

gUnk_08006E4C:: @ 08006E4C
	.incbin "code_080043E8/gUnk_08006E4C.bin"

gUnk_08006E65:: @ 08006E65
	.incbin "code_080043E8/gUnk_08006E65.bin"

gUnk_08006E75:: @ 08006E75
	.incbin "code_080043E8/gUnk_08006E75.bin"

gUnk_08006E79:: @ 08006E79
	.incbin "code_080043E8/gUnk_08006E79.bin"

gUnk_08006E92:: @ 08006E92
	.incbin "code_080043E8/gUnk_08006E92.bin"

gUnk_08006EAE:: @ 08006EAE
	.incbin "code_080043E8/gUnk_08006EAE.bin"

gUnk_08006ECA:: @ 08006ECA
	.incbin "code_080043E8/gUnk_08006ECA.bin"

gUnk_08006EE6:: @ 08006EE6
	.incbin "code_080043E8/gUnk_08006EE6.bin"

gUnk_08006F02:: @ 08006F02
	.incbin "code_080043E8/gUnk_08006F02.bin"

gUnk_08006F12:: @ 08006F12
	.incbin "code_080043E8/gUnk_08006F12.bin"

gUnk_08006F1B:: @ 08006F1B
	.incbin "code_080043E8/gUnk_08006F1B.bin"

gUnk_08006F2B:: @ 08006F2B
	.incbin "code_080043E8/gUnk_08006F2B.bin"

gUnk_08006F34:: @ 08006F34
	.incbin "code_080043E8/gUnk_08006F34.bin"

gUnk_08006F44:: @ 08006F44
	.incbin "code_080043E8/gUnk_08006F44.bin"

gUnk_08006F4D:: @ 08006F4D
	.incbin "code_080043E8/gUnk_08006F4D.bin"

gUnk_08006F62:: @ 08006F62
	.incbin "code_080043E8/gUnk_08006F62.bin"

gUnk_08006F77:: @ 08006F77
	.incbin "code_080043E8/gUnk_08006F77.bin"

gUnk_08006F8C:: @ 08006F8C
	.incbin "code_080043E8/gUnk_08006F8C.bin"

gUnk_08006FA1:: @ 08006FA1
	.incbin "code_080043E8/gUnk_08006FA1.bin"

gUnk_08006FB6:: @ 08006FB6
	.incbin "code_080043E8/gUnk_08006FB6.bin"

gUnk_08006FFA:: @ 08006FFA
	.incbin "code_080043E8/gUnk_08006FFA.bin"

gUnk_0800703B:: @ 0800703B
	.incbin "code_080043E8/gUnk_0800703B.bin"

gUnk_080070AC:: @ 080070AC
	.incbin "code_080043E8/gUnk_080070AC.bin"

gUnk_08007159:: @ 08007159
	.incbin "code_080043E8/gUnk_08007159.bin"

gUnk_08007191:: @ 08007191
	.incbin "code_080043E8/gUnk_08007191.bin"

gUnk_08007199:: @ 08007199
	.incbin "code_080043E8/gUnk_08007199.bin"

gUnk_080071D1:: @ 080071D1
	.incbin "code_080043E8/gUnk_080071D1.bin"

gUnk_080071D9:: @ 080071D9
	.incbin "code_080043E8/gUnk_080071D9.bin"

gUnk_080071F9:: @ 080071F9
	.incbin "code_080043E8/gUnk_080071F9.bin"

gUnk_08007201:: @ 08007201
	.incbin "code_080043E8/gUnk_08007201.bin"

gUnk_0800721E:: @ 0800721E
	.incbin "code_080043E8/gUnk_0800721E.bin"

gUnk_0800723B:: @ 0800723B
	.incbin "code_080043E8/gUnk_0800723B.bin"

gUnk_08007258:: @ 08007258
	.incbin "code_080043E8/gUnk_08007258.bin"

gUnk_08007280:: @ 08007280
	.incbin "code_080043E8/gUnk_08007280.bin"

gUnk_080072A8:: @ 080072A8
	.incbin "code_080043E8/gUnk_080072A8.bin"

gUnk_080072D0:: @ 080072D0
	.incbin "code_080043E8/gUnk_080072D0.bin"

gUnk_080072F5:: @ 080072F5
	.incbin "code_080043E8/gUnk_080072F5.bin"

gUnk_0800730E:: @ 0800730E
	.incbin "code_080043E8/gUnk_0800730E.bin"

gUnk_08007322:: @ 08007322
	.incbin "code_080043E8/gUnk_08007322.bin"

gUnk_08007366:: @ 08007366
	.incbin "code_080043E8/gUnk_08007366.bin"

gUnk_080073AA:: @ 080073AA
	.incbin "code_080043E8/gUnk_080073AA.bin"

gUnk_080073EE:: @ 080073EE
	.incbin "code_080043E8/gUnk_080073EE.bin"

gUnk_080073FE:: @ 080073FE
	.incbin "code_080043E8/gUnk_080073FE.bin"

gUnk_08007402:: @ 08007402
	.incbin "code_080043E8/gUnk_08007402.bin"

gUnk_08007412:: @ 08007412
	.incbin "code_080043E8/gUnk_08007412.bin"

gUnk_08007416:: @ 08007416
	.incbin "code_080043E8/gUnk_08007416.bin"

gUnk_08007426:: @ 08007426
	.incbin "code_080043E8/gUnk_08007426.bin"

gUnk_0800742A:: @ 0800742A
	.incbin "code_080043E8/gUnk_0800742A.bin"

gUnk_0800743B:: @ 0800743B
	.incbin "code_080043E8/gUnk_0800743B.bin"

gUnk_0800744C:: @ 0800744C
	.incbin "code_080043E8/gUnk_0800744C.bin"

gUnk_08007450:: @ 08007450
	.incbin "code_080043E8/gUnk_08007450.bin"

gUnk_0800745D:: @ 0800745D
	.incbin "code_080043E8/gUnk_0800745D.bin"

gSpriteAnimations_1:: @ 08007498
	.4byte gUnk_08004AEC
	.4byte gUnk_08004AF1
	.4byte gUnk_08004B1A
	.4byte gUnk_08004AF1
	.4byte gUnk_08004B95
	.4byte gUnk_08004B6C
	.4byte gUnk_08004B43
	.4byte gUnk_08004B6C
	.4byte gUnk_08004C30
	.4byte gUnk_08004BF7
	.4byte gUnk_08004BBE
	.4byte gUnk_08004BF7
	.4byte gUnk_080051CB
	.4byte gUnk_0800519F
	.4byte gUnk_08005173
	.4byte gUnk_0800519F
	.4byte gUnk_08005231
	.4byte gUnk_08005214
	.4byte gUnk_080051F7
	.4byte gUnk_08005214
	.4byte gUnk_080056CF
	.4byte gUnk_080056C2
	.4byte gUnk_080056B5
	.4byte gUnk_080056C2
	.4byte gUnk_08005733
	.4byte gUnk_08005716
	.4byte gUnk_080056F9
	.4byte gUnk_08005716
	.4byte gUnk_08005792
	.4byte gUnk_08005771
	.4byte gUnk_08005750
	.4byte gUnk_08005771
	.4byte gUnk_080051EF
	.4byte gUnk_080051C3
	.4byte gUnk_08005197
	.4byte gUnk_080051C3
	.4byte gUnk_08004DE5
	.4byte gUnk_08004D27
	.4byte gUnk_08004C69
	.4byte gUnk_08004EA3
	.4byte gUnk_08004FE3
	.4byte gUnk_08004FA2
	.4byte gUnk_08004F61
	.4byte gUnk_08005024
	.4byte gUnk_08004E4E
	.4byte gUnk_08004D90
	.4byte gUnk_08004CD2
	.4byte gUnk_08004F0C
	.4byte gUnk_08006AD4
	.4byte gUnk_08006AAF
	.4byte gUnk_08006A8A
	.4byte gUnk_08006AAF
	.4byte gUnk_08006AE9
	.4byte gUnk_08006AC4
	.4byte gUnk_08006A9F
	.4byte gUnk_08006AC4
	.4byte gUnk_080052DD
	.4byte gUnk_080052C8
	.4byte gUnk_080052B3
	.4byte gUnk_080052C8
	.4byte gUnk_08005477
	.4byte gUnk_08005416
	.4byte gUnk_080053B5
	.4byte gUnk_08005416
	.4byte gUnk_080055E1
	.4byte gUnk_08005563
	.4byte gUnk_080054E5
	.4byte gUnk_08005563
	.4byte gUnk_08005322
	.4byte gUnk_0800530A
	.4byte gUnk_080052F2
	.4byte gUnk_0800530A
	.4byte gUnk_0800538C
	.4byte gUnk_08005363
	.4byte gUnk_0800533A
	.4byte gUnk_08005363
	.4byte gUnk_080055F1
	.4byte gUnk_08005573
	.4byte gUnk_080054F5
	.4byte gUnk_08005573
	.4byte gUnk_080052ED
	.4byte gUnk_080052D8
	.4byte gUnk_080052C3
	.4byte gUnk_080052D8
	.4byte gUnk_08005694
	.4byte gUnk_08005673
	.4byte gUnk_08005652
	.4byte gUnk_08005673
	.4byte gUnk_08005848
	.4byte gUnk_0800582F
	.4byte gUnk_08005816
	.4byte gUnk_0800582F
	.4byte gUnk_080052A6
	.4byte gUnk_08005299
	.4byte gUnk_0800528C
	.4byte gUnk_08005299
	.4byte gUnk_080058A3
	.4byte gUnk_08005882
	.4byte gUnk_08005861
	.4byte gUnk_08005882
	.4byte gUnk_08005858
	.4byte gUnk_0800583F
	.4byte gUnk_08005826
	.4byte gUnk_0800583F
	.4byte gUnk_08004C60
	.4byte gUnk_08004C27
	.4byte gUnk_08004BEE
	.4byte gUnk_08004C27
	.4byte gUnk_0800508F
	.4byte gUnk_0800507A
	.4byte gUnk_08005065
	.4byte gUnk_0800507A
	.4byte gUnk_080050C6
	.4byte gUnk_080050B5
	.4byte gUnk_080050A4
	.4byte gUnk_080050B5
	.4byte gUnk_0800513F
	.4byte gUnk_0800510B
	.4byte gUnk_080050D7
	.4byte gUnk_0800510B
	.4byte gUnk_080055D4
	.4byte gUnk_08005556
	.4byte gUnk_080054D8
	.4byte gUnk_08005556
	.4byte gUnk_0800579F
	.4byte gUnk_0800577E
	.4byte gUnk_0800575D
	.4byte gUnk_0800577E
	.4byte gUnk_0800579A
	.4byte gUnk_08005779
	.4byte gUnk_08005758
	.4byte gUnk_08005779
	.4byte gUnk_080057F5
	.4byte gUnk_080057D4
	.4byte gUnk_080057B3
	.4byte gUnk_080057D4
	.4byte gUnk_080058F6
	.4byte gUnk_080058DD
	.4byte gUnk_080058C4
	.4byte gUnk_080058DD
	.4byte gUnk_08005931
	.4byte gUnk_08005920
	.4byte gUnk_0800590F
	.4byte gUnk_08005920
	.4byte gUnk_08005964
	.4byte gUnk_08005953
	.4byte gUnk_08005942
	.4byte gUnk_08005953
	.4byte gUnk_08005C9F
	.4byte gUnk_08005C9A
	.4byte gUnk_08005C95
	.4byte gUnk_08005C9A
	.4byte gUnk_08005CF6
	.4byte gUnk_08005CCD
	.4byte gUnk_08005CA4
	.4byte gUnk_08005CCD
	.4byte gUnk_08005987
	.4byte gUnk_0800597E
	.4byte gUnk_08005975
	.4byte gUnk_0800597E
	.4byte gUnk_08006627
	.4byte gUnk_080065FB
	.4byte gUnk_080065CF
	.4byte gUnk_080065FB
	.4byte gUnk_0800668B
	.4byte gUnk_0800666F
	.4byte gUnk_08006653
	.4byte gUnk_0800666F
	.4byte gUnk_080066D7
	.4byte gUnk_080066BF
	.4byte gUnk_080066A7
	.4byte gUnk_080066BF
	.4byte gUnk_080068F6
	.4byte gUnk_080068CA
	.4byte gUnk_0800689E
	.4byte gUnk_080068CA
	.4byte gUnk_08006F4D
	.4byte gUnk_08006F62
	.4byte gUnk_08006F77
	.4byte gUnk_08006F8C
	.4byte gUnk_08006FA1
	.4byte gUnk_08006F8C
	.4byte gUnk_08006F77
	.4byte gUnk_08006F62
	.4byte gUnk_080056DC
	.4byte gUnk_0800744C
	.4byte gUnk_080056EC
	.4byte gUnk_08007450
	.4byte gUnk_0800524E
	.4byte gUnk_08005273
	.4byte gUnk_08005C7B
	.4byte gUnk_0800703B
	.4byte gUnk_08005D1F
	.4byte gUnk_08005C88
	.4byte gUnk_08006551
	.4byte gUnk_080065A3
	.4byte gUnk_080066EF
	.4byte gUnk_08006718
	.4byte gUnk_0800679D
	.4byte gUnk_080067B5
	.4byte gUnk_080067DE
	.4byte gUnk_08006785
	.4byte gUnk_08006807
	.4byte gUnk_0800681F
	.4byte gUnk_08006848
	.4byte gUnk_08006871
	.4byte gUnk_08006889
	.4byte gUnk_08006389
	.4byte gUnk_0800639D
	.4byte gUnk_080063DB
	.4byte gUnk_080063EF
	.4byte gUnk_0800642D
	.4byte gUnk_080064BD
	.4byte gUnk_080064E2
	.4byte gUnk_08006451
	.4byte gUnk_080063B2
	.4byte gUnk_080063C6
	.4byte gUnk_08006404
	.4byte gUnk_08006418
	.4byte gUnk_08006475
	.4byte gUnk_08006507
	.4byte gUnk_0800652C
	.4byte gUnk_08006499
	.4byte gUnk_08006DCF
	.4byte gUnk_0800742A
	.4byte gUnk_08006FB6
	.4byte gUnk_0800745D
	.4byte gUnk_080070AC
	.4byte gUnk_08006FFA
	.4byte 00000000

gSpriteAnimations_5:: @ 08007830
	.4byte gUnk_08005E0C
	.4byte gUnk_08005DA6
	.4byte gUnk_08005D40
	.4byte gUnk_08005DA6
	.4byte gUnk_08005E31
	.4byte gUnk_08005DCA
	.4byte gUnk_08005D64
	.4byte gUnk_08005DCA
	.4byte gUnk_0800615B
	.4byte gUnk_0800611F
	.4byte gUnk_080060E3
	.4byte gUnk_0800611F
	.4byte gUnk_08006219
	.4byte gUnk_080061D8
	.4byte gUnk_08006197
	.4byte gUnk_080061D8
	.4byte gUnk_08005E1D
	.4byte gUnk_08005DB6
	.4byte gUnk_08005D50
	.4byte gUnk_08005DB6
	.4byte gUnk_0800629A
	.4byte gUnk_0800627A
	.4byte gUnk_0800625A
	.4byte gUnk_0800627A
	.4byte gUnk_08005E52
	.4byte gUnk_08005DEB
	.4byte gUnk_08005D85
	.4byte gUnk_08005DEB
	.4byte gUnk_08006329
	.4byte gUnk_08006305
	.4byte gUnk_080062E1
	.4byte gUnk_08006305
	.4byte gUnk_08006375
	.4byte gUnk_08006361
	.4byte gUnk_0800634D
	.4byte gUnk_08006361
	.4byte gUnk_08005E9D
	.4byte gUnk_08005E88
	.4byte gUnk_08005E73
	.4byte gUnk_08005E88
	.4byte gUnk_08005EF4
	.4byte gUnk_08005ED3
	.4byte gUnk_08005EB2
	.4byte gUnk_08005ED3
	.4byte gUnk_080062D4
	.4byte gUnk_080062C7
	.4byte gUnk_080062BA
	.4byte gUnk_080062C7
	.4byte gUnk_080062DC
	.4byte gUnk_080062CF
	.4byte gUnk_080062C2
	.4byte gUnk_080062CF
	.4byte 00000000

gSpriteAnimations_6:: @ 08007904
	.4byte gUnk_08006BA3
	.4byte gUnk_08006B4E
	.4byte gUnk_08006AF9
	.4byte gUnk_08006B4E
	.4byte gUnk_08006BB3
	.4byte gUnk_08006B5E
	.4byte gUnk_08006B09
	.4byte gUnk_08006B5E
	.4byte gUnk_08006C26
	.4byte gUnk_08006BFD
	.4byte gUnk_08006BD4
	.4byte gUnk_08006BFD
	.4byte gUnk_08006BB8
	.4byte gUnk_08006B87
	.4byte gUnk_08006B32
	.4byte gUnk_08006B87
	.4byte gUnk_08006CD7
	.4byte gUnk_08006C93
	.4byte gUnk_08006C4F
	.4byte gUnk_08006C93
	.4byte gUnk_08006D7B
	.4byte gUnk_08006D4B
	.4byte gUnk_08006D1B
	.4byte gUnk_08006D4B
	.4byte gUnk_08006DC3
	.4byte gUnk_08006DB7
	.4byte gUnk_08006DAB
	.4byte gUnk_08006DB7
	.4byte gUnk_08006E65
	.4byte gUnk_08006E38
	.4byte gUnk_08006E0B
	.4byte gUnk_08006E38
	.4byte gUnk_08006E75
	.4byte gUnk_08006E48
	.4byte gUnk_08006E1B
	.4byte gUnk_08006E48
	.4byte gUnk_08006E79
	.4byte gUnk_08006E4C
	.4byte gUnk_08006E1F
	.4byte gUnk_08006E4C
	.4byte gUnk_0800698A
	.4byte gUnk_08006956
	.4byte gUnk_08006922
	.4byte gUnk_08006956
	.4byte 00000000

gSpriteAnimations_7:: @ 080079B8
	.4byte gUnk_08005F2F
	.4byte gUnk_08005F22
	.4byte gUnk_08005F15
	.4byte gUnk_08005F22
	.4byte gUnk_08005733
	.4byte gUnk_08005716
	.4byte gUnk_080056F9
	.4byte gUnk_08005716
	.4byte gUnk_08005F56
	.4byte gUnk_08005F49
	.4byte gUnk_08005F3C
	.4byte gUnk_08005F49
	.4byte gUnk_08006F34
	.4byte gUnk_08006F1B
	.4byte gUnk_08006F02
	.4byte gUnk_08006F1B
	.4byte gUnk_08006F44
	.4byte gUnk_08006F2B
	.4byte gUnk_08006F12
	.4byte gUnk_08006F2B
	.4byte gUnk_08005F8D
	.4byte gUnk_08005FF6
	.4byte gUnk_08005F63
	.4byte gUnk_08005F78
	.4byte gUnk_08005FCC
	.4byte gUnk_08005FB7
	.4byte gUnk_08005FA2
	.4byte gUnk_08005FB7
	.4byte gUnk_0800600B
	.4byte gUnk_08005F78
	.4byte gUnk_08005FE1
	.4byte gUnk_08005FF6
	.4byte gUnk_08005F95
	.4byte gUnk_08005FFE
	.4byte gUnk_08005F6B
	.4byte gUnk_08005F80
	.4byte gUnk_08005FD4
	.4byte gUnk_08005FBF
	.4byte gUnk_08005FAA
	.4byte gUnk_08005FBF
	.4byte gUnk_08006013
	.4byte gUnk_08005F80
	.4byte gUnk_08005FE9
	.4byte gUnk_08005FFE
	.4byte gUnk_08006A46
	.4byte gUnk_08006A02
	.4byte gUnk_080069BE
	.4byte gUnk_08006A02
	.4byte gUnk_08006062
	.4byte gUnk_08006041
	.4byte gUnk_08006020
	.4byte gUnk_08006041
	.4byte gUnk_08006083
	.4byte gUnk_08005990
	.4byte gUnk_080059A4
	.4byte gUnk_080059A9
	.4byte gUnk_08005A86
	.4byte gUnk_08005A41
	.4byte gUnk_08005A55
	.4byte gUnk_08005A5A
	.4byte gUnk_0800657A
	.4byte 00000000

gSpriteAnimations_12:: @ 08007AB0
	.4byte gUnk_08005B76
	.4byte gUnk_08005B4D
	.4byte gUnk_08005B24
	.4byte gUnk_08005B4D
	.4byte gUnk_08005AA0
	.4byte gUnk_08005AB9
	.4byte gUnk_08005AA0
	.4byte gUnk_08005AD2
	.4byte gUnk_08006ECA
	.4byte gUnk_08006EAE
	.4byte gUnk_08006E92
	.4byte gUnk_08006EE6
	.4byte gUnk_08005BB1
	.4byte gUnk_08005BBA
	.4byte gUnk_08005B9F
	.4byte gUnk_08005BA8
	.4byte gUnk_08005C30
	.4byte gUnk_08005BFE
	.4byte gUnk_08005BCC
	.4byte gUnk_08005C49
	.4byte gUnk_08005BE5
	.4byte gUnk_08005C17
	.4byte gUnk_08005BE5
	.4byte gUnk_08005C62
	.4byte gUnk_08005A9B
	.4byte gUnk_08005AEB
	.4byte gUnk_08005AF4
	.4byte gUnk_08005B18
	.4byte gUnk_08005BC3
	.4byte 00000000

gSpriteAnimations_4:: @ 08007B28
	.4byte gUnk_08004AEC
	.4byte gUnk_08004AF1
	.4byte gUnk_08004B1A
	.4byte gUnk_08004AF1
	.4byte gUnk_08004B95
	.4byte gUnk_08004B6C
	.4byte gUnk_08004B43
	.4byte gUnk_08004B6C
	.4byte gUnk_08004C30
	.4byte gUnk_08004BF7
	.4byte gUnk_08004BBE
	.4byte gUnk_08004BF7
	.4byte gUnk_08005848
	.4byte gUnk_0800582F
	.4byte gUnk_08005816
	.4byte gUnk_0800582F
	.4byte gUnk_080058A3
	.4byte gUnk_08005882
	.4byte gUnk_08005861
	.4byte gUnk_08005882
	.4byte gUnk_08005858
	.4byte gUnk_0800583F
	.4byte gUnk_08005826
	.4byte gUnk_0800583F
	.4byte gUnk_080056CF
	.4byte gUnk_080056C2
	.4byte gUnk_080056B5
	.4byte gUnk_080056C2
	.4byte gUnk_080071D9
	.4byte gUnk_08007199
	.4byte gUnk_08007159
	.4byte gUnk_08007199
	.4byte gUnk_0800723B
	.4byte gUnk_0800721E
	.4byte gUnk_08007201
	.4byte gUnk_0800721E
	.4byte gUnk_080071F9
	.4byte gUnk_080071D1
	.4byte gUnk_08007191
	.4byte gUnk_080071D1
	.4byte gUnk_080052DD
	.4byte gUnk_080052C8
	.4byte gUnk_080052B3
	.4byte gUnk_080052C8
	.4byte gUnk_080052ED
	.4byte gUnk_080052D8
	.4byte gUnk_080052C3
	.4byte gUnk_080052D8
	.4byte gUnk_08005322
	.4byte gUnk_0800530A
	.4byte gUnk_080052F2
	.4byte gUnk_0800530A
	.4byte gUnk_0800538C
	.4byte gUnk_08005363
	.4byte gUnk_0800533A
	.4byte gUnk_08005363
	.4byte gUnk_080072A8
	.4byte gUnk_08007280
	.4byte gUnk_08007258
	.4byte gUnk_08007280
	.4byte gUnk_08005477
	.4byte gUnk_08005416
	.4byte gUnk_080053B5
	.4byte gUnk_08005416
	.4byte gUnk_080055E1
	.4byte gUnk_08005563
	.4byte gUnk_080054E5
	.4byte gUnk_08005563
	.4byte gUnk_080055F1
	.4byte gUnk_08005573
	.4byte gUnk_080054F5
	.4byte gUnk_08005573
	.4byte gUnk_080055D4
	.4byte gUnk_08005556
	.4byte gUnk_080054D8
	.4byte gUnk_08005556
	.4byte gUnk_080073AA
	.4byte gUnk_08007366
	.4byte gUnk_08007322
	.4byte gUnk_08007366
	.4byte gUnk_08007416
	.4byte gUnk_08007402
	.4byte gUnk_080073EE
	.4byte gUnk_08007402
	.4byte gUnk_08007426
	.4byte gUnk_08007412
	.4byte gUnk_080073FE
	.4byte gUnk_08007412
	.4byte gUnk_080056DC
	.4byte gUnk_080072D0
	.4byte gUnk_080072F5
	.4byte gUnk_0800744C
	.4byte gUnk_08007450
	.4byte gUnk_0800730E
	.4byte gUnk_0800743B
	.4byte gUnk_0800745D
	.4byte 00000000

gUnk_08007CAC:: @ 08007CAC
	.incbin "code_080043E8/gUnk_08007CAC.bin"
.ifdef DEMO_JP
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_1_DEMO_JP.bin"
.else
.ifdef DEMO_USA
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_2_DEMO_USA.bin"
.else
.ifdef JP
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_3_JP.bin"
.else
.ifdef EU
@ TODO only two bytes differ
	.incbin "code_080043E8/gUnk_08007CAC_4_EU.bin"
.else
	.incbin "code_080043E8/gUnk_08007CAC_5_USA.bin"
.endif
.endif
.endif
.endif

	non_word_aligned_thumb_func_start sub_08007DD6
sub_08007DD6: @ 0x08007DD6
	push {lr}
	bl sub_08007DE0
	adds r0, r3, #0
	pop {pc}

	thumb_func_start sub_08007DE0
sub_08007DE0: @ 0x08007DE0
	subs r1, #4
_08007DE2:
	adds r1, #4
	ldrh r3, [r1]
	cmp r3, #0
	beq _08007DF2
	cmp r0, r3
	bne _08007DE2
	ldrh r3, [r1, #2]
	movs r2, #1
_08007DF2:
	bx lr
