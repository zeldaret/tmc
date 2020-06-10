	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08021758
sub_08021758: @ 0x08021758
	push {lr}
	ldr r1, _08021764 @ =gUnk_080CB590
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08021764: .4byte gUnk_080CB590

	thumb_func_start sub_08021768
sub_08021768: @ 0x08021768
	push {lr}
	ldr r2, _0802177C @ =gUnk_080CB5A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802177C: .4byte gUnk_080CB5A8

	thumb_func_start sub_08021780
sub_08021780: @ 0x08021780
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _08021792
	cmp r0, #0x93
	beq _080217F4
	b _080217FA
_08021792:
	ldr r0, _080217A4 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _080217A8
	adds r0, r4, #0
	bl sub_08021768
	b _080217FA
	.align 2, 0
_080217A4: .4byte gLinkState
_080217A8:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080217EC @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r0, _080217F0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl UpdateSprite
	b _080217FA
	.align 2, 0
_080217EC: .4byte gLinkEntity
_080217F0: .4byte 0x0000FFFF
_080217F4:
	adds r0, r4, #0
	bl sub_08021768
_080217FA:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _08021808
	subs r0, #3
	strb r1, [r0]
_08021808:
	ldr r1, _08021814 @ =gUnk_080CB590
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08021814: .4byte gUnk_080CB590

	thumb_func_start sub_08021818
sub_08021818: @ 0x08021818
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0802182A
	adds r0, r3, #0
	bl sub_0804A7D4
	b _08021844
_0802182A:
	ldr r2, [r3, #0x50]
	cmp r2, #0
	beq _0802183A
	ldrb r0, [r2, #0xf]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xf]
	str r1, [r3, #0x50]
_0802183A:
	adds r0, r3, #0
	movs r1, #0xf0
	movs r2, #0
	bl CreateDeathFx
_08021844:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021848
sub_08021848: @ 0x08021848
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	beq _0802186C
	ldr r0, _08021868 @ =gUnk_080CB5C8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802187A
	.align 2, 0
_08021868: .4byte gUnk_080CB5C8
_0802186C:
	movs r0, #3
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_0802187A:
	pop {r4, pc}

	thumb_func_start sub_0802187C
sub_0802187C: @ 0x0802187C
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08021884
	bx lr
	.align 2, 0

	thumb_func_start sub_08021888
sub_08021888: @ 0x08021888
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802189A
	adds r0, r4, #0
	bl sub_08021818
_0802189A:
	pop {r4, pc}

	thumb_func_start sub_0802189C
sub_0802189C: @ 0x0802189C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_080218B4
sub_080218B4: @ 0x080218B4
	push {lr}
	ldr r2, _080218C8 @ =gUnk_080CB5D4
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080218C8: .4byte gUnk_080CB5D4

	thumb_func_start sub_080218CC
sub_080218CC: @ 0x080218CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08021916
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r4, r0, #0
	bl Random
	movs r1, #0x10
	eors r4, r1
	ldr r2, _08021980 @ =gUnk_080CB5DC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r5, #0x20]
_08021916:
	adds r0, r5, #0
	bl sub_08004274
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08021948
	adds r0, r5, #0
	bl sub_080AEFE0
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08021948
	adds r0, r5, #0
	adds r0, #0x59
	strb r6, [r0]
_08021948:
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802197C
	movs r0, #2
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	movs r1, #0
	bl UpdateSprite
_0802197C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021980: .4byte gUnk_080CB5DC

	thumb_func_start sub_08021984
sub_08021984: @ 0x08021984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080219C2
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _08021A08 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08021A0C @ =0x0000012D
	bl sub_08004488
_080219C2:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021A04
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08021A04:
	pop {r4, pc}
	.align 2, 0
_08021A08: .4byte 0x0000FF80
_08021A0C: .4byte 0x0000012D

	thumb_func_start sub_08021A10
sub_08021A10: @ 0x08021A10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r1, _08021A60 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x78
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _08021A5E
	adds r0, r4, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021A5E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A5E
	movs r0, #3
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08021D44
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_08021A5E:
	pop {r4, pc}
	.align 2, 0
_08021A60: .4byte gLinkEntity

	thumb_func_start sub_08021A64
sub_08021A64: @ 0x08021A64
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021AD4
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A96
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08021A96:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08021AC8
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08021AC2
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	b _08021AD4
_08021AC2:
	adds r0, r4, #0
	bl sub_08021D44
_08021AC8:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_08021AD4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021AD8
sub_08021AD8: @ 0x08021AD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B3A
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021B1E
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	bne _08021B16
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	b _08021B60
_08021B16:
	strb r0, [r4, #0x15]
	movs r0, #0x7c
	bl sub_08004488
_08021B1E:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021B3A
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
_08021B3A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021B60
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08021B60:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021B64
sub_08021B64: @ 0x08021B64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08021B88 @ =gLinkState
	ldr r1, [r0, #0x30]
	movs r2, #4
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08021B8C
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	b _08021C4E
	.align 2, 0
_08021B88: .4byte gLinkState
_08021B8C:
	movs r5, #1
	adds r0, r6, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08021BBA
	cmp r0, #0x14
	beq _08021BBA
	bl sub_0807953C
	cmp r0, #0
	beq _08021BAE
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, #0
	adds r5, #8
_08021BAE:
	ldrb r0, [r4, #0xe]
	subs r5, r0, r5
	cmp r5, #0
	bge _08021BB8
	movs r5, #0
_08021BB8:
	strb r5, [r4, #0xe]
_08021BBA:
	ldr r0, [r6, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021BC8
	movs r5, #0
_08021BC8:
	cmp r5, #0
	bne _08021C04
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
	ldr r2, _08021BEC @ =gLinkEntity
	ldrb r1, [r2, #0x15]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08021BF0
	movs r0, #0x10
	b _08021BF6
	.align 2, 0
_08021BEC: .4byte gLinkEntity
_08021BF0:
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
_08021BF6:
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
	b _08021C4E
_08021C04:
	ldrb r1, [r6, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08021C50 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r2, _08021C54 @ =gUnk_080CB5E4
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0xe
	ands r0, r1
	lsrs r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
_08021C4E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021C50: .4byte gLinkEntity
_08021C54: .4byte gUnk_080CB5E4

	thumb_func_start sub_08021C58
sub_08021C58: @ 0x08021C58
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08021C8A
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021C8A
	adds r0, r4, #0
	adds r0, #0x59
	strb r5, [r0]
_08021C8A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021CCC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r2, #0x3c
	strb r2, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08021CCC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021CD0
sub_08021CD0: @ 0x08021CD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021CE6
	adds r0, r4, #0
	bl sub_08004274
_08021CE6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08021CFE
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_08021CFE:
	pop {r4, pc}

	thumb_func_start sub_08021D00
sub_08021D00: @ 0x08021D00
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021D16
	subs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08021D40
_08021D16:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_08049F64
	cmp r0, #0
	bne _08021D28
	movs r0, #0
	b _08021D40
_08021D28:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	movs r0, #1
_08021D40:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021D44
sub_08021D44: @ 0x08021D44
	push {lr}
	adds r2, r0, #0
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	strb r1, [r2, #0x15]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08021D5E
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08021D60
_08021D5E:
	movs r0, #0xc0
_08021D60:
	strh r0, [r2, #0x24]
	pop {pc}
