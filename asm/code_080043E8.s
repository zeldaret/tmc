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
	.incbin "baserom.gba", 0x0046A4, 0x0000152

gUnk_080047F6:: @ 080047F6
	.incbin "baserom.gba", 0x0047F6, 0x00001E0

gUnk_080049D6:: @ 080049D6
	.incbin "baserom.gba", 0x0049D6, 0x0000020

gUnk_080049F6:: @ 080049F6
	.incbin "baserom.gba", 0x0049F6, 0x0000008

gUnk_080049FE:: @ gUnk_080049FE
	.incbin "baserom.gba", 0x0049FE, 0x000000E

gUnk_08004A0C:: @ 08004A0C
	.incbin "baserom.gba", 0x004A0C, 0x000000A

gUnk_08004A16:: @ 08004A16
	.incbin "baserom.gba", 0x004A16, 0x000000E

gUnk_08004A24:: @ 08004A24
	.incbin "baserom.gba", 0x004A24, 0x000000E

gUnk_08004A32:: @ 08004A32
	.incbin "baserom.gba", 0x004A32, 0x0000016

gUnk_08004A48:: @ 08004A48
	.incbin "baserom.gba", 0x004A48, 0x000002A

gUnk_08004A72:: @ 08004A72
	.incbin "baserom.gba", 0x004A72, 0x000001A

gUnk_08004A8C:: @ 08004A8C
	.incbin "baserom.gba", 0x004A8C, 0x000001A

gUnk_08004AA6:: @ 08004AA6
	.incbin "baserom.gba", 0x004AA6, 0x0000046

gUnk_08004AEC:: @ 08004AEC
	.incbin "baserom.gba", 0x004AEC, 0x0000005

gUnk_08004AF1:: @ 08004AF1
	.incbin "baserom.gba", 0x004AF1, 0x0000029

gUnk_08004B1A:: @ 08004B1A
	.incbin "baserom.gba", 0x004B1A, 0x0000029

gUnk_08004B43:: @ 08004B43
	.incbin "baserom.gba", 0x004B43, 0x0000029

gUnk_08004B6C:: @ 08004B6C
	.incbin "baserom.gba", 0x004B6C, 0x0000029

gUnk_08004B95:: @ 08004B95
	.incbin "baserom.gba", 0x004B95, 0x0000029

gUnk_08004BBE:: @ 08004BBE
	.incbin "baserom.gba", 0x004BBE, 0x0000030

gUnk_08004BEE:: @ 08004BEE
	.incbin "baserom.gba", 0x004BEE, 0x0000009

gUnk_08004BF7:: @ 08004BF7
	.incbin "baserom.gba", 0x004BF7, 0x0000030

gUnk_08004C27:: @ 08004C27
	.incbin "baserom.gba", 0x004C27, 0x0000009

gUnk_08004C30:: @ 08004C30
	.incbin "baserom.gba", 0x004C30, 0x0000030

gUnk_08004C60:: @ 08004C60
	.incbin "baserom.gba", 0x004C60, 0x0000009

gUnk_08004C69:: @ 08004C69
	.incbin "baserom.gba", 0x004C69, 0x0000069

gUnk_08004CD2:: @ 08004CD2
	.incbin "baserom.gba", 0x004CD2, 0x0000055

gUnk_08004D27:: @ 08004D27
	.incbin "baserom.gba", 0x004D27, 0x0000069

gUnk_08004D90:: @ 08004D90
	.incbin "baserom.gba", 0x004D90, 0x0000055

gUnk_08004DE5:: @ 08004DE5
	.incbin "baserom.gba", 0x004DE5, 0x0000069

gUnk_08004E4E:: @ 08004E4E
	.incbin "baserom.gba", 0x004E4E, 0x0000055

gUnk_08004EA3:: @ 08004EA3
	.incbin "baserom.gba", 0x004EA3, 0x0000069

gUnk_08004F0C:: @ 08004F0C
	.incbin "baserom.gba", 0x004F0C, 0x0000055

gUnk_08004F61:: @ 08004F61
	.incbin "baserom.gba", 0x004F61, 0x0000041

gUnk_08004FA2:: @ 08004FA2
	.incbin "baserom.gba", 0x004FA2, 0x0000041

gUnk_08004FE3:: @ 08004FE3
	.incbin "baserom.gba", 0x004FE3, 0x0000041

gUnk_08005024:: @ 08005024
	.incbin "baserom.gba", 0x005024, 0x0000041

gUnk_08005065:: @ 08005065
	.incbin "baserom.gba", 0x005065, 0x0000015

gUnk_0800507A:: @ 0800507A
	.incbin "baserom.gba", 0x00507A, 0x0000015

gUnk_0800508F:: @ 0800508F
	.incbin "baserom.gba", 0x00508F, 0x0000015

gUnk_080050A4:: @ 080050A4
	.incbin "baserom.gba", 0x0050A4, 0x0000011

gUnk_080050B5:: @ 080050B5
	.incbin "baserom.gba", 0x0050B5, 0x0000011

gUnk_080050C6:: @ 080050C6
	.incbin "baserom.gba", 0x0050C6, 0x0000011

gUnk_080050D7:: @ 080050D7
	.incbin "baserom.gba", 0x0050D7, 0x0000034

gUnk_0800510B:: @ 0800510B
	.incbin "baserom.gba", 0x00510B, 0x0000034

gUnk_0800513F:: @ 0800513F
	.incbin "baserom.gba", 0x00513F, 0x0000034

gUnk_08005173:: @ 08005173
	.incbin "baserom.gba", 0x005173, 0x0000024

gUnk_08005197:: @ 08005197
	.incbin "baserom.gba", 0x005197, 0x0000008

gUnk_0800519F:: @ 0800519F
	.incbin "baserom.gba", 0x00519F, 0x0000024

gUnk_080051C3:: @ 080051C3
	.incbin "baserom.gba", 0x0051C3, 0x0000008

gUnk_080051CB:: @ 080051CB
	.incbin "baserom.gba", 0x0051CB, 0x0000024

gUnk_080051EF:: @ 080051EF
	.incbin "baserom.gba", 0x0051EF, 0x0000008

gUnk_080051F7:: @ 080051F7
	.incbin "baserom.gba", 0x0051F7, 0x000001D

gUnk_08005214:: @ 08005214
	.incbin "baserom.gba", 0x005214, 0x000001D

gUnk_08005231:: @ 08005231
	.incbin "baserom.gba", 0x005231, 0x000001D

gUnk_0800524E:: @ 0800524E
	.incbin "baserom.gba", 0x00524E, 0x0000025

gUnk_08005273:: @ 08005273
	.incbin "baserom.gba", 0x005273, 0x0000019

gUnk_0800528C:: @ 0800528C
	.incbin "baserom.gba", 0x00528C, 0x000000D

gUnk_08005299:: @ 08005299
	.incbin "baserom.gba", 0x005299, 0x000000D

gUnk_080052A6:: @ 080052A6
	.incbin "baserom.gba", 0x0052A6, 0x000000D

gUnk_080052B3:: @ 080052B3
	.incbin "baserom.gba", 0x0052B3, 0x0000010

gUnk_080052C3:: @ 080052C3
	.incbin "baserom.gba", 0x0052C3, 0x0000005

gUnk_080052C8:: @ 080052C8
	.incbin "baserom.gba", 0x0052C8, 0x0000010

gUnk_080052D8:: @ 080052D8
	.incbin "baserom.gba", 0x0052D8, 0x0000005

gUnk_080052DD:: @ 080052DD
	.incbin "baserom.gba", 0x0052DD, 0x0000010

gUnk_080052ED:: @ 080052ED
	.incbin "baserom.gba", 0x0052ED, 0x0000005

gUnk_080052F2:: @ 080052F2
	.incbin "baserom.gba", 0x0052F2, 0x0000018

gUnk_0800530A:: @ 0800530A
	.incbin "baserom.gba", 0x00530A, 0x0000018

gUnk_08005322:: @ 08005322
	.incbin "baserom.gba", 0x005322, 0x0000018

gUnk_0800533A:: @ 0800533A
	.incbin "baserom.gba", 0x00533A, 0x0000029

gUnk_08005363:: @ 08005363
	.incbin "baserom.gba", 0x005363, 0x0000029

gUnk_0800538C:: @ 0800538C
	.incbin "baserom.gba", 0x00538C, 0x0000029

gUnk_080053B5:: @ 080053B5
	.incbin "baserom.gba", 0x0053B5, 0x0000061

gUnk_08005416:: @ 08005416
	.incbin "baserom.gba", 0x005416, 0x0000061

gUnk_08005477:: @ 08005477
	.incbin "baserom.gba", 0x005477, 0x0000061

gUnk_080054D8:: @ 080054D8
	.incbin "baserom.gba", 0x0054D8, 0x000000D

gUnk_080054E5:: @ 080054E5
	.incbin "baserom.gba", 0x0054E5, 0x0000010

gUnk_080054F5:: @ 080054F5
	.incbin "baserom.gba", 0x0054F5, 0x0000061

gUnk_08005556:: @ 08005556
	.incbin "baserom.gba", 0x005556, 0x000000D

gUnk_08005563:: @ 08005563
	.incbin "baserom.gba", 0x005563, 0x0000010

gUnk_08005573:: @ 08005573
	.incbin "baserom.gba", 0x005573, 0x0000061

gUnk_080055D4:: @ 080055D4
	.incbin "baserom.gba", 0x0055D4, 0x000000D

gUnk_080055E1:: @ 080055E1
	.incbin "baserom.gba", 0x0055E1, 0x0000010

gUnk_080055F1:: @ 080055F1
	.incbin "baserom.gba", 0x0055F1, 0x0000061

gUnk_08005652:: @ 08005652
	.incbin "baserom.gba", 0x005652, 0x0000021

gUnk_08005673:: @ 08005673
	.incbin "baserom.gba", 0x005673, 0x0000021

gUnk_08005694:: @ 08005694
	.incbin "baserom.gba", 0x005694, 0x0000021

gUnk_080056B5:: @ 080056B5
	.incbin "baserom.gba", 0x0056B5, 0x000000D

gUnk_080056C2:: @ 080056C2
	.incbin "baserom.gba", 0x0056C2, 0x000000D

gUnk_080056CF:: @ 080056CF
	.incbin "baserom.gba", 0x0056CF, 0x000000D

gUnk_080056DC:: @ 080056DC
	.incbin "baserom.gba", 0x0056DC, 0x0000010

gUnk_080056EC:: @ 080056EC
	.incbin "baserom.gba", 0x0056EC, 0x000000D

gUnk_080056F9:: @ 080056F9
	.incbin "baserom.gba", 0x0056F9, 0x000001D

gUnk_08005716:: @ 08005716
	.incbin "baserom.gba", 0x005716, 0x000001D

gUnk_08005733:: @ 08005733
	.incbin "baserom.gba", 0x005733, 0x000001D

gUnk_08005750:: @ 08005750
	.incbin "baserom.gba", 0x005750, 0x0000008

gUnk_08005758:: @ 08005758
	.incbin "baserom.gba", 0x005758, 0x0000005

gUnk_0800575D:: @ 0800575D
	.incbin "baserom.gba", 0x00575D, 0x0000014

gUnk_08005771:: @ 08005771
	.incbin "baserom.gba", 0x005771, 0x0000008

gUnk_08005779:: @ 08005779
	.incbin "baserom.gba", 0x005779, 0x0000005

gUnk_0800577E:: @ 0800577E
	.incbin "baserom.gba", 0x00577E, 0x0000014

gUnk_08005792:: @ 08005792
	.incbin "baserom.gba", 0x005792, 0x0000008

gUnk_0800579A:: @ 0800579A
	.incbin "baserom.gba", 0x00579A, 0x0000005

gUnk_0800579F:: @ 0800579F
	.incbin "baserom.gba", 0x00579F, 0x0000014

gUnk_080057B3:: @ 080057B3
	.incbin "baserom.gba", 0x0057B3, 0x0000021

gUnk_080057D4:: @ 080057D4
	.incbin "baserom.gba", 0x0057D4, 0x0000021

gUnk_080057F5:: @ 080057F5
	.incbin "baserom.gba", 0x0057F5, 0x0000021

gUnk_08005816:: @ 08005816
	.incbin "baserom.gba", 0x005816, 0x0000010

gUnk_08005826:: @ 08005826
	.incbin "baserom.gba", 0x005826, 0x0000009

gUnk_0800582F:: @ 0800582F
	.incbin "baserom.gba", 0x00582F, 0x0000010

gUnk_0800583F:: @ 0800583F
	.incbin "baserom.gba", 0x00583F, 0x0000009

gUnk_08005848:: @ 08005848
	.incbin "baserom.gba", 0x005848, 0x0000010

gUnk_08005858:: @ 08005858
	.incbin "baserom.gba", 0x005858, 0x0000009

gUnk_08005861:: @ 08005861
	.incbin "baserom.gba", 0x005861, 0x0000021

gUnk_08005882:: @ 08005882
	.incbin "baserom.gba", 0x005882, 0x0000021

gUnk_080058A3:: @ 080058A3
	.incbin "baserom.gba", 0x0058A3, 0x0000021

gUnk_080058C4:: @ 080058C4
	.incbin "baserom.gba", 0x0058C4, 0x0000019

gUnk_080058DD:: @ 080058DD
	.incbin "baserom.gba", 0x0058DD, 0x0000019

gUnk_080058F6:: @ 080058F6
	.incbin "baserom.gba", 0x0058F6, 0x0000019

gUnk_0800590F:: @ 0800590F
	.incbin "baserom.gba", 0x00590F, 0x0000011

gUnk_08005920:: @ 08005920
	.incbin "baserom.gba", 0x005920, 0x0000011

gUnk_08005931:: @ 08005931
	.incbin "baserom.gba", 0x005931, 0x0000011

gUnk_08005942:: @ 08005942
	.incbin "baserom.gba", 0x005942, 0x0000011

gUnk_08005953:: @ 08005953
	.incbin "baserom.gba", 0x005953, 0x0000011

gUnk_08005964:: @ 08005964
	.incbin "baserom.gba", 0x005964, 0x0000011

gUnk_08005975:: @ 08005975
	.incbin "baserom.gba", 0x005975, 0x0000009

gUnk_0800597E:: @ 0800597E
	.incbin "baserom.gba", 0x00597E, 0x0000009

gUnk_08005987:: @ 08005987
	.incbin "baserom.gba", 0x005987, 0x0000009

gUnk_08005990:: @ 08005990
	.incbin "baserom.gba", 0x005990, 0x0000014

gUnk_080059A4:: @ 080059A4
	.incbin "baserom.gba", 0x0059A4, 0x0000005

gUnk_080059A9:: @ 080059A9
	.incbin "baserom.gba", 0x0059A9, 0x0000098

gUnk_08005A41:: @ 08005A41
	.incbin "baserom.gba", 0x005A41, 0x0000014

gUnk_08005A55:: @ 08005A55
	.incbin "baserom.gba", 0x005A55, 0x0000005

gUnk_08005A5A:: @ 08005A5A
	.incbin "baserom.gba", 0x005A5A, 0x000002C

gUnk_08005A86:: @ 08005A86
	.incbin "baserom.gba", 0x005A86, 0x0000015

gUnk_08005A9B:: @ 08005A9B
	.incbin "baserom.gba", 0x005A9B, 0x0000005

gUnk_08005AA0:: @ 08005AA0
	.incbin "baserom.gba", 0x005AA0, 0x0000019

gUnk_08005AB9:: @ 08005AB9
	.incbin "baserom.gba", 0x005AB9, 0x0000019

gUnk_08005AD2:: @ 08005AD2
	.incbin "baserom.gba", 0x005AD2, 0x0000019

gUnk_08005AEB:: @ 08005AEB
	.incbin "baserom.gba", 0x005AEB, 0x0000009

gUnk_08005AF4:: @ 08005AF4
	.incbin "baserom.gba", 0x005AF4, 0x0000024

gUnk_08005B18:: @ 08005B18
	.incbin "baserom.gba", 0x005B18, 0x000000C

gUnk_08005B24:: @ 08005B24
	.incbin "baserom.gba", 0x005B24, 0x0000029

gUnk_08005B4D:: @ 08005B4D
	.incbin "baserom.gba", 0x005B4D, 0x0000029

gUnk_08005B76:: @ 08005B76
	.incbin "baserom.gba", 0x005B76, 0x0000029

gUnk_08005B9F:: @ 08005B9F
	.incbin "baserom.gba", 0x005B9F, 0x0000009

gUnk_08005BA8:: @ 08005BA8
	.incbin "baserom.gba", 0x005BA8, 0x0000009

gUnk_08005BB1:: @ 08005BB1
	.incbin "baserom.gba", 0x005BB1, 0x0000009

gUnk_08005BBA:: @ 08005BBA
	.incbin "baserom.gba", 0x005BBA, 0x0000009

gUnk_08005BC3:: @ 08005BC3
	.incbin "baserom.gba", 0x005BC3, 0x0000009

gUnk_08005BCC:: @ 08005BCC
	.incbin "baserom.gba", 0x005BCC, 0x0000019

gUnk_08005BE5:: @ 08005BE5
	.incbin "baserom.gba", 0x005BE5, 0x0000019

gUnk_08005BFE:: @ 08005BFE
	.incbin "baserom.gba", 0x005BFE, 0x0000019

gUnk_08005C17:: @ 08005C17
	.incbin "baserom.gba", 0x005C17, 0x0000019

gUnk_08005C30:: @ 08005C30
	.incbin "baserom.gba", 0x005C30, 0x0000019

gUnk_08005C49:: @ 08005C49
	.incbin "baserom.gba", 0x005C49, 0x0000019

gUnk_08005C62:: @ 08005C62
	.incbin "baserom.gba", 0x005C62, 0x0000019

gUnk_08005C7B:: @ 08005C7B
	.incbin "baserom.gba", 0x005C7B, 0x000000D

gUnk_08005C88:: @ 08005C88
	.incbin "baserom.gba", 0x005C88, 0x000000D

gUnk_08005C95:: @ 08005C95
	.incbin "baserom.gba", 0x005C95, 0x0000005

gUnk_08005C9A:: @ 08005C9A
	.incbin "baserom.gba", 0x005C9A, 0x0000005

gUnk_08005C9F:: @ 08005C9F
	.incbin "baserom.gba", 0x005C9F, 0x0000005

gUnk_08005CA4:: @ 08005CA4
	.incbin "baserom.gba", 0x005CA4, 0x0000029

gUnk_08005CCD:: @ 08005CCD
	.incbin "baserom.gba", 0x005CCD, 0x0000029

gUnk_08005CF6:: @ 08005CF6
	.incbin "baserom.gba", 0x005CF6, 0x0000029

gUnk_08005D1F:: @ 08005D1F
	.incbin "baserom.gba", 0x005D1F, 0x0000021

gUnk_08005D40:: @ 08005D40
	.incbin "baserom.gba", 0x005D40, 0x0000010

gUnk_08005D50:: @ 08005D50
	.incbin "baserom.gba", 0x005D50, 0x0000014

gUnk_08005D64:: @ 08005D64
	.incbin "baserom.gba", 0x005D64, 0x0000021

gUnk_08005D85:: @ 08005D85
	.incbin "baserom.gba", 0x005D85, 0x0000021

gUnk_08005DA6:: @ 08005DA6
	.incbin "baserom.gba", 0x005DA6, 0x0000010

gUnk_08005DB6:: @ 08005DB6
	.incbin "baserom.gba", 0x005DB6, 0x0000014

gUnk_08005DCA:: @ 08005DCA
	.incbin "baserom.gba", 0x005DCA, 0x0000021

gUnk_08005DEB:: @ 08005DEB
	.incbin "baserom.gba", 0x005DEB, 0x0000021

gUnk_08005E0C:: @ 08005E0C
	.incbin "baserom.gba", 0x005E0C, 0x0000011

gUnk_08005E1D:: @ 08005E1D
	.incbin "baserom.gba", 0x005E1D, 0x0000014

gUnk_08005E31:: @ 08005E31
	.incbin "baserom.gba", 0x005E31, 0x0000021

gUnk_08005E52:: @ 08005E52
	.incbin "baserom.gba", 0x005E52, 0x0000021

gUnk_08005E73:: @ 08005E73
	.incbin "baserom.gba", 0x005E73, 0x0000015

gUnk_08005E88:: @ 08005E88
	.incbin "baserom.gba", 0x005E88, 0x0000015

gUnk_08005E9D:: @ 08005E9D
	.incbin "baserom.gba", 0x005E9D, 0x0000015

gUnk_08005EB2:: @ 08005EB2
	.incbin "baserom.gba", 0x005EB2, 0x0000021

gUnk_08005ED3:: @ 08005ED3
	.incbin "baserom.gba", 0x005ED3, 0x0000021

gUnk_08005EF4:: @ 08005EF4
	.incbin "baserom.gba", 0x005EF4, 0x0000021

gUnk_08005F15:: @ 08005F15
	.incbin "baserom.gba", 0x005F15, 0x000000D

gUnk_08005F22:: @ 08005F22
	.incbin "baserom.gba", 0x005F22, 0x000000D

gUnk_08005F2F:: @ 08005F2F
	.incbin "baserom.gba", 0x005F2F, 0x000000D

gUnk_08005F3C:: @ 08005F3C
	.incbin "baserom.gba", 0x005F3C, 0x000000D

gUnk_08005F49:: @ 08005F49
	.incbin "baserom.gba", 0x005F49, 0x000000D

gUnk_08005F56:: @ 08005F56
	.incbin "baserom.gba", 0x005F56, 0x000000D

gUnk_08005F63:: @ 08005F63
	.incbin "baserom.gba", 0x005F63, 0x0000008

gUnk_08005F6B:: @ 08005F6B
	.incbin "baserom.gba", 0x005F6B, 0x000000D

gUnk_08005F78:: @ 08005F78
	.incbin "baserom.gba", 0x005F78, 0x0000008

gUnk_08005F80:: @ 08005F80
	.incbin "baserom.gba", 0x005F80, 0x000000D

gUnk_08005F8D:: @ 08005F8D
	.incbin "baserom.gba", 0x005F8D, 0x0000008

gUnk_08005F95:: @ 08005F95
	.incbin "baserom.gba", 0x005F95, 0x000000D

gUnk_08005FA2:: @ 08005FA2
	.incbin "baserom.gba", 0x005FA2, 0x0000008

gUnk_08005FAA:: @ 08005FAA
	.incbin "baserom.gba", 0x005FAA, 0x000000D

gUnk_08005FB7:: @ 08005FB7
	.incbin "baserom.gba", 0x005FB7, 0x0000008

gUnk_08005FBF:: @ 08005FBF
	.incbin "baserom.gba", 0x005FBF, 0x000000D

gUnk_08005FCC:: @ 08005FCC
	.incbin "baserom.gba", 0x005FCC, 0x0000008

gUnk_08005FD4:: @ 08005FD4
	.incbin "baserom.gba", 0x005FD4, 0x000000D

gUnk_08005FE1:: @ 08005FE1
	.incbin "baserom.gba", 0x005FE1, 0x0000008

gUnk_08005FE9:: @ 08005FE9
	.incbin "baserom.gba", 0x005FE9, 0x000000D

gUnk_08005FF6:: @ 08005FF6
	.incbin "baserom.gba", 0x005FF6, 0x0000008

gUnk_08005FFE:: @ 08005FFE
	.incbin "baserom.gba", 0x005FFE, 0x000000D

gUnk_0800600B:: @ 0800600B
	.incbin "baserom.gba", 0x00600B, 0x0000008

gUnk_08006013:: @ 08006013
	.incbin "baserom.gba", 0x006013, 0x000000D

gUnk_08006020:: @ 08006020
	.incbin "baserom.gba", 0x006020, 0x0000021

gUnk_08006041:: @ 08006041
	.incbin "baserom.gba", 0x006041, 0x0000021

gUnk_08006062:: @ 08006062
	.incbin "baserom.gba", 0x006062, 0x0000021

gUnk_08006083:: @ 08006083
	.incbin "baserom.gba", 0x006083, 0x0000060

gUnk_080060E3:: @ 080060E3
	.incbin "baserom.gba", 0x0060E3, 0x000003C

gUnk_0800611F:: @ 0800611F
	.incbin "baserom.gba", 0x00611F, 0x000003C

gUnk_0800615B:: @ 0800615B
	.incbin "baserom.gba", 0x00615B, 0x000003C

gUnk_08006197:: @ 08006197
	.incbin "baserom.gba", 0x006197, 0x0000041

gUnk_080061D8:: @ 080061D8
	.incbin "baserom.gba", 0x0061D8, 0x0000041

gUnk_08006219:: @ 08006219
	.incbin "baserom.gba", 0x006219, 0x0000041

gUnk_0800625A:: @ 0800625A
	.incbin "baserom.gba", 0x00625A, 0x0000020

gUnk_0800627A:: @ 0800627A
	.incbin "baserom.gba", 0x00627A, 0x0000020

gUnk_0800629A:: @ 0800629A
	.incbin "baserom.gba", 0x00629A, 0x0000020

gUnk_080062BA:: @ 080062BA
	.incbin "baserom.gba", 0x0062BA, 0x0000008

gUnk_080062C2:: @ 080062C2
	.incbin "baserom.gba", 0x0062C2, 0x0000005

gUnk_080062C7:: @ 080062C7
	.incbin "baserom.gba", 0x0062C7, 0x0000008

gUnk_080062CF:: @ 080062CF
	.incbin "baserom.gba", 0x0062CF, 0x0000005

gUnk_080062D4:: @ 080062D4
	.incbin "baserom.gba", 0x0062D4, 0x0000008

gUnk_080062DC:: @ 080062DC
	.incbin "baserom.gba", 0x0062DC, 0x0000005

gUnk_080062E1:: @ 080062E1
	.incbin "baserom.gba", 0x0062E1, 0x0000024

gUnk_08006305:: @ 08006305
	.incbin "baserom.gba", 0x006305, 0x0000024

gUnk_08006329:: @ 08006329
	.incbin "baserom.gba", 0x006329, 0x0000024

gUnk_0800634D:: @ 0800634D
	.incbin "baserom.gba", 0x00634D, 0x0000014

gUnk_08006361:: @ 08006361
	.incbin "baserom.gba", 0x006361, 0x0000014

gUnk_08006375:: @ 08006375
	.incbin "baserom.gba", 0x006375, 0x0000014

gUnk_08006389:: @ 08006389
	.incbin "baserom.gba", 0x006389, 0x0000014

gUnk_0800639D:: @ 0800639D
	.incbin "baserom.gba", 0x00639D, 0x0000015

gUnk_080063B2:: @ 080063B2
	.incbin "baserom.gba", 0x0063B2, 0x0000014

gUnk_080063C6:: @ 080063C6
	.incbin "baserom.gba", 0x0063C6, 0x0000015

gUnk_080063DB:: @ 080063DB
	.incbin "baserom.gba", 0x0063DB, 0x0000014

gUnk_080063EF:: @ 080063EF
	.incbin "baserom.gba", 0x0063EF, 0x0000015

gUnk_08006404:: @ 08006404
	.incbin "baserom.gba", 0x006404, 0x0000014

gUnk_08006418:: @ 08006418
	.incbin "baserom.gba", 0x006418, 0x0000015

gUnk_0800642D:: @ 0800642D
	.incbin "baserom.gba", 0x00642D, 0x0000024

gUnk_08006451:: @ 08006451
	.incbin "baserom.gba", 0x006451, 0x0000024

gUnk_08006475:: @ 08006475
	.incbin "baserom.gba", 0x006475, 0x0000024

gUnk_08006499:: @ 08006499
	.incbin "baserom.gba", 0x006499, 0x0000024

gUnk_080064BD:: @ 080064BD
	.incbin "baserom.gba", 0x0064BD, 0x0000025

gUnk_080064E2:: @ 080064E2
	.incbin "baserom.gba", 0x0064E2, 0x0000025

gUnk_08006507:: @ 08006507
	.incbin "baserom.gba", 0x006507, 0x0000025

gUnk_0800652C:: @ 0800652C
	.incbin "baserom.gba", 0x00652C, 0x0000025

gUnk_08006551:: @ 08006551
	.incbin "baserom.gba", 0x006551, 0x0000029

gUnk_0800657A:: @ 0800657A
	.incbin "baserom.gba", 0x00657A, 0x0000029

gUnk_080065A3:: @ 080065A3
	.incbin "baserom.gba", 0x0065A3, 0x000002C

gUnk_080065CF:: @ 080065CF
	.incbin "baserom.gba", 0x0065CF, 0x000002C

gUnk_080065FB:: @ 080065FB
	.incbin "baserom.gba", 0x0065FB, 0x000002C

gUnk_08006627:: @ 08006627
	.incbin "baserom.gba", 0x006627, 0x000002C

gUnk_08006653:: @ 08006653
	.incbin "baserom.gba", 0x006653, 0x000001C

gUnk_0800666F:: @ 0800666F
	.incbin "baserom.gba", 0x00666F, 0x000001C

gUnk_0800668B:: @ 0800668B
	.incbin "baserom.gba", 0x00668B, 0x000001C

gUnk_080066A7:: @ 080066A7
	.incbin "baserom.gba", 0x0066A7, 0x0000018

gUnk_080066BF:: @ 080066BF
	.incbin "baserom.gba", 0x0066BF, 0x0000018

gUnk_080066D7:: @ 080066D7
	.incbin "baserom.gba", 0x0066D7, 0x0000018

gUnk_080066EF:: @ 080066EF
	.incbin "baserom.gba", 0x0066EF, 0x0000029

gUnk_08006718:: @ 08006718
	.incbin "baserom.gba", 0x006718, 0x000006D

gUnk_08006785:: @ 08006785
	.incbin "baserom.gba", 0x006785, 0x0000018

gUnk_0800679D:: @ 0800679D
	.incbin "baserom.gba", 0x00679D, 0x0000018

gUnk_080067B5:: @ 080067B5
	.incbin "baserom.gba", 0x0067B5, 0x0000029

gUnk_080067DE:: @ 080067DE
	.incbin "baserom.gba", 0x0067DE, 0x0000029

gUnk_08006807:: @ 08006807
	.incbin "baserom.gba", 0x006807, 0x0000018

gUnk_0800681F:: @ 0800681F
	.incbin "baserom.gba", 0x00681F, 0x0000029

gUnk_08006848:: @ 08006848
	.incbin "baserom.gba", 0x006848, 0x0000029

gUnk_08006871:: @ 08006871
	.incbin "baserom.gba", 0x006871, 0x0000018

gUnk_08006889:: @ 08006889
	.incbin "baserom.gba", 0x006889, 0x0000015

gUnk_0800689E:: @ 0800689E
	.incbin "baserom.gba", 0x00689E, 0x000002C

gUnk_080068CA:: @ 080068CA
	.incbin "baserom.gba", 0x0068CA, 0x000002C

gUnk_080068F6:: @ 080068F6
	.incbin "baserom.gba", 0x0068F6, 0x000002C

gUnk_08006922:: @ 08006922
	.incbin "baserom.gba", 0x006922, 0x0000034

gUnk_08006956:: @ 08006956
	.incbin "baserom.gba", 0x006956, 0x0000034

gUnk_0800698A:: @ 0800698A
	.incbin "baserom.gba", 0x00698A, 0x0000034

gUnk_080069BE:: @ 080069BE
	.incbin "baserom.gba", 0x0069BE, 0x0000044

gUnk_08006A02:: @ 08006A02
	.incbin "baserom.gba", 0x006A02, 0x0000044

gUnk_08006A46:: @ 08006A46
	.incbin "baserom.gba", 0x006A46, 0x0000044

gUnk_08006A8A:: @ 08006A8A
	.incbin "baserom.gba", 0x006A8A, 0x0000015

gUnk_08006A9F:: @ 08006A9F
	.incbin "baserom.gba", 0x006A9F, 0x0000010

gUnk_08006AAF:: @ 08006AAF
	.incbin "baserom.gba", 0x006AAF, 0x0000015

gUnk_08006AC4:: @ 08006AC4
	.incbin "baserom.gba", 0x006AC4, 0x0000010

gUnk_08006AD4:: @ 08006AD4
	.incbin "baserom.gba", 0x006AD4, 0x0000015

gUnk_08006AE9:: @ 08006AE9
	.incbin "baserom.gba", 0x006AE9, 0x0000010

gUnk_08006AF9:: @ 08006AF9
	.incbin "baserom.gba", 0x006AF9, 0x0000010

gUnk_08006B09:: @ 08006B09
	.incbin "baserom.gba", 0x006B09, 0x0000029

gUnk_08006B32:: @ 08006B32
	.incbin "baserom.gba", 0x006B32, 0x000001C

gUnk_08006B4E:: @ 08006B4E
	.incbin "baserom.gba", 0x006B4E, 0x0000010

gUnk_08006B5E:: @ 08006B5E
	.incbin "baserom.gba", 0x006B5E, 0x0000029

gUnk_08006B87:: @ 08006B87
	.incbin "baserom.gba", 0x006B87, 0x000001C

gUnk_08006BA3:: @ 08006BA3
	.incbin "baserom.gba", 0x006BA3, 0x0000010

gUnk_08006BB3:: @ 08006BB3
	.incbin "baserom.gba", 0x006BB3, 0x0000005

gUnk_08006BB8:: @ 08006BB8
	.incbin "baserom.gba", 0x006BB8, 0x000001C

gUnk_08006BD4:: @ 08006BD4
	.incbin "baserom.gba", 0x006BD4, 0x0000029

gUnk_08006BFD:: @ 08006BFD
	.incbin "baserom.gba", 0x006BFD, 0x0000029

gUnk_08006C26:: @ 08006C26
	.incbin "baserom.gba", 0x006C26, 0x0000029

gUnk_08006C4F:: @ 08006C4F
	.incbin "baserom.gba", 0x006C4F, 0x0000044

gUnk_08006C93:: @ 08006C93
	.incbin "baserom.gba", 0x006C93, 0x0000044

gUnk_08006CD7:: @ 08006CD7
	.incbin "baserom.gba", 0x006CD7, 0x0000044

gUnk_08006D1B:: @ 08006D1B
	.incbin "baserom.gba", 0x006D1B, 0x0000030

gUnk_08006D4B:: @ 08006D4B
	.incbin "baserom.gba", 0x006D4B, 0x0000030

gUnk_08006D7B:: @ 08006D7B
	.incbin "baserom.gba", 0x006D7B, 0x0000030

gUnk_08006DAB:: @ 08006DAB
	.incbin "baserom.gba", 0x006DAB, 0x000000C

gUnk_08006DB7:: @ 08006DB7
	.incbin "baserom.gba", 0x006DB7, 0x000000C

gUnk_08006DC3:: @ 08006DC3
	.incbin "baserom.gba", 0x006DC3, 0x000000C

gUnk_08006DCF:: @ 08006DCF
	.incbin "baserom.gba", 0x006DCF, 0x000003C

gUnk_08006E0B:: @ 08006E0B
	.incbin "baserom.gba", 0x006E0B, 0x0000010

gUnk_08006E1B:: @ 08006E1B
	.incbin "baserom.gba", 0x006E1B, 0x0000004

gUnk_08006E1F:: @ 08006E1F
	.incbin "baserom.gba", 0x006E1F, 0x0000019

gUnk_08006E38:: @ 08006E38
	.incbin "baserom.gba", 0x006E38, 0x0000010

gUnk_08006E48:: @ 08006E48
	.incbin "baserom.gba", 0x006E48, 0x0000004

gUnk_08006E4C:: @ 08006E4C
	.incbin "baserom.gba", 0x006E4C, 0x0000019

gUnk_08006E65:: @ 08006E65
	.incbin "baserom.gba", 0x006E65, 0x0000010

gUnk_08006E75:: @ 08006E75
	.incbin "baserom.gba", 0x006E75, 0x0000004

gUnk_08006E79:: @ 08006E79
	.incbin "baserom.gba", 0x006E79, 0x0000019

gUnk_08006E92:: @ 08006E92
	.incbin "baserom.gba", 0x006E92, 0x000001C

gUnk_08006EAE:: @ 08006EAE
	.incbin "baserom.gba", 0x006EAE, 0x000001C

gUnk_08006ECA:: @ 08006ECA
	.incbin "baserom.gba", 0x006ECA, 0x000001C

gUnk_08006EE6:: @ 08006EE6
	.incbin "baserom.gba", 0x006EE6, 0x000001C

gUnk_08006F02:: @ 08006F02
	.incbin "baserom.gba", 0x006F02, 0x0000010

gUnk_08006F12:: @ 08006F12
	.incbin "baserom.gba", 0x006F12, 0x0000009

gUnk_08006F1B:: @ 08006F1B
	.incbin "baserom.gba", 0x006F1B, 0x0000010

gUnk_08006F2B:: @ 08006F2B
	.incbin "baserom.gba", 0x006F2B, 0x0000009

gUnk_08006F34:: @ 08006F34
	.incbin "baserom.gba", 0x006F34, 0x0000010

gUnk_08006F44:: @ 08006F44
	.incbin "baserom.gba", 0x006F44, 0x0000009

gUnk_08006F4D:: @ 08006F4D
	.incbin "baserom.gba", 0x006F4D, 0x0000015

gUnk_08006F62:: @ 08006F62
	.incbin "baserom.gba", 0x006F62, 0x0000015

gUnk_08006F77:: @ 08006F77
	.incbin "baserom.gba", 0x006F77, 0x0000015

gUnk_08006F8C:: @ 08006F8C
	.incbin "baserom.gba", 0x006F8C, 0x0000015

gUnk_08006FA1:: @ 08006FA1
	.incbin "baserom.gba", 0x006FA1, 0x0000015

gUnk_08006FB6:: @ 08006FB6
	.incbin "baserom.gba", 0x006FB6, 0x0000044

gUnk_08006FFA:: @ 08006FFA
	.incbin "baserom.gba", 0x006FFA, 0x0000041

gUnk_0800703B:: @ 0800703B
	.incbin "baserom.gba", 0x00703B, 0x0000071

gUnk_080070AC:: @ 080070AC
	.incbin "baserom.gba", 0x0070AC, 0x00000AD

gUnk_08007159:: @ 08007159
	.incbin "baserom.gba", 0x007159, 0x0000038

gUnk_08007191:: @ 08007191
	.incbin "baserom.gba", 0x007191, 0x0000008

gUnk_08007199:: @ 08007199
	.incbin "baserom.gba", 0x007199, 0x0000038

gUnk_080071D1:: @ 080071D1
	.incbin "baserom.gba", 0x0071D1, 0x0000008

gUnk_080071D9:: @ 080071D9
	.incbin "baserom.gba", 0x0071D9, 0x0000020

gUnk_080071F9:: @ 080071F9
	.incbin "baserom.gba", 0x0071F9, 0x0000008

gUnk_08007201:: @ 08007201
	.incbin "baserom.gba", 0x007201, 0x000001D

gUnk_0800721E:: @ 0800721E
	.incbin "baserom.gba", 0x00721E, 0x000001D

gUnk_0800723B:: @ 0800723B
	.incbin "baserom.gba", 0x00723B, 0x000001D

gUnk_08007258:: @ 08007258
	.incbin "baserom.gba", 0x007258, 0x0000028

gUnk_08007280:: @ 08007280
	.incbin "baserom.gba", 0x007280, 0x0000028

gUnk_080072A8:: @ 080072A8
	.incbin "baserom.gba", 0x0072A8, 0x0000028

gUnk_080072D0:: @ 080072D0
	.incbin "baserom.gba", 0x0072D0, 0x0000025

gUnk_080072F5:: @ 080072F5
	.incbin "baserom.gba", 0x0072F5, 0x0000019

gUnk_0800730E:: @ 0800730E
	.incbin "baserom.gba", 0x00730E, 0x0000014

gUnk_08007322:: @ 08007322
	.incbin "baserom.gba", 0x007322, 0x0000044

gUnk_08007366:: @ 08007366
	.incbin "baserom.gba", 0x007366, 0x0000044

gUnk_080073AA:: @ 080073AA
	.incbin "baserom.gba", 0x0073AA, 0x0000044

gUnk_080073EE:: @ 080073EE
	.incbin "baserom.gba", 0x0073EE, 0x0000010

gUnk_080073FE:: @ 080073FE
	.incbin "baserom.gba", 0x0073FE, 0x0000004

gUnk_08007402:: @ 08007402
	.incbin "baserom.gba", 0x007402, 0x0000010

gUnk_08007412:: @ 08007412
	.incbin "baserom.gba", 0x007412, 0x0000004

gUnk_08007416:: @ 08007416
	.incbin "baserom.gba", 0x007416, 0x0000010

gUnk_08007426:: @ 08007426
	.incbin "baserom.gba", 0x007426, 0x0000004

gUnk_0800742A:: @ 0800742A
	.incbin "baserom.gba", 0x00742A, 0x0000011

gUnk_0800743B:: @ 0800743B
	.incbin "baserom.gba", 0x00743B, 0x0000011

gUnk_0800744C:: @ 0800744C
	.incbin "baserom.gba", 0x00744C, 0x0000004

gUnk_08007450:: @ 08007450
	.incbin "baserom.gba", 0x007450, 0x000000D

gUnk_0800745D:: @ 0800745D
	.incbin "baserom.gba", 0x00745D, 0x000003B

gUnk_08007498:: @ 08007498
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

gUnk_08007830:: @ 08007830
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

gUnk_08007904:: @ 08007904
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

gUnk_080079B8:: @ 080079B8
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

gUnk_08007AB0:: @ 08007AB0
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

gUnk_08007B28:: @ 08007B28
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
	.incbin "baserom.gba", 0x007CAC, 0x000005B
.ifdef DEMO_JP
@ TODO only one byte differs
	.incbin "baserom_demo_jp.gba", 0x007D4F, 0x00000CF
.else
.ifdef DEMO_USA
@ TODO only one byte differs
	.incbin "baserom_demo.gba", 0x007D07, 0x00000CF
.else
.ifdef JP
@ TODO only one byte differs
	.incbin "baserom_jp.gba", 0x007D07, 0x00000CF
.else
.ifdef EU
@ TODO only two bytes differ
	.incbin "baserom_eu.gba", 0x007D9F, 0x00000CF
.else
	.incbin "baserom.gba", 0x007D07, 0x00000CF
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
