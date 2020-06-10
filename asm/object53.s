	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08091108
sub_08091108: @ 0x08091108
	push {lr}
	ldr r2, _0809111C @ =gUnk_08122280
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809111C: .4byte gUnk_08122280

	thumb_func_start sub_08091120
sub_08091120: @ 0x08091120
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r3, _08091194 @ =gUnk_08122288
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #3]
	strh r0, [r4, #0x12]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08004168
	pop {r4, pc}
	.align 2, 0
_08091194: .4byte gUnk_08122288

	thumb_func_start sub_08091198
sub_08091198: @ 0x08091198
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080911AA
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080911AA:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080911E8
	ldrb r1, [r4, #0xb]
	cmp r1, #0xf
	beq _080911CE
	cmp r1, #0xf
	bgt _080911C8
	cmp r1, #0
	beq _080911E4
	b _080911DA
_080911C8:
	cmp r1, #0xff
	bne _080911DA
	b _080911E4
_080911CE:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFx
	b _080911E4
_080911DA:
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
_080911E4:
	bl sub_0805E780
_080911E8:
	pop {r4, pc}
	.align 2, 0
