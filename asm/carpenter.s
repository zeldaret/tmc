	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08067158
sub_08067158: @ 0x08067158
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _08067168
	bl DeleteThisEntity
_08067168:
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080671A8
	cmp r5, #1
	bgt _08067178
	cmp r5, #0
	beq _0806717E
	b _08067224
_08067178:
	cmp r5, #2
	beq _0806720A
	b _08067224
_0806717E:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _080671EC @ =gUnk_08110CA8
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08067224
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_080671A8:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080671F4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _080671F0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _08067224
	.align 2, 0
_080671EC: .4byte gUnk_08110CA8
_080671F0: .4byte gLinkEntity
_080671F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	b _08067224
_0806720A:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08067224
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_08067224:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08067228
sub_08067228: @ 0x08067228
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _0806727E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_0806FFD8
	adds r0, r4, #0
	bl sub_0807000C
	b _080672AC
_0806727E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
_080672AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080672B0
sub_080672B0: @ 0x080672B0
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #3
	adds r1, r1, r2
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080672C8
sub_080672C8: @ 0x080672C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _080672E4
	movs r0, #0x15
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080672E4:
	ldr r3, _08067300 @ =gUnk_08110CE8
	lsls r1, r4, #1
	ldrb r2, [r5, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08067300: .4byte gUnk_08110CE8

	thumb_func_start sub_08067304
sub_08067304: @ 0x08067304
	push {lr}
	ldr r1, _08067310 @ =gUnk_08110D00
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_08067310: .4byte gUnk_08110D00

	thumb_func_start sub_08067314
sub_08067314: @ 0x08067314
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806732C
sub_0806732C: @ 0x0806732C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067378
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _08067374 @ =gUnk_08110CA8
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806737E
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
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
	b _0806737E
	.align 2, 0
_08067374: .4byte gUnk_08110CA8
_08067378:
	adds r0, r4, #0
	bl sub_08004274
_0806737E:
	pop {r4, pc}
