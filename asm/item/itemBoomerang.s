	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemBoomerang
ItemBoomerang: @ 0x08075D14
	push {lr}
	ldr r3, _08075D28 @ =gUnk_0811BD78
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075D28: .4byte gUnk_0811BD78

	thumb_func_start sub_08075D2C
sub_08075D2C: @ 0x08075D2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075D74 @ =gPlayerState
	ldrb r1, [r5, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl sub_08077C94
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075D78 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08077C0C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077D38
	ldrb r1, [r5, #4]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #4]
	b _08075D84
	.align 2, 0
_08075D74: .4byte gPlayerState
_08075D78: .4byte gPlayerEntity
_08075D7C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08075D84:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075D88
sub_08075D88: @ 0x08075D88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075DBC @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075DD0
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _08075DC0
	ldrb r1, [r2, #0xa]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	ldrb r1, [r4, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	bl sub_08078F60
	b _08075DD8
	.align 2, 0
_08075DBC: .4byte gPlayerState
_08075DC0:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075DD8
_08075DD0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075DD8:
	pop {r4, r5, pc}
	.align 2, 0
