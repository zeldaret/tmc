	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08048D98
sub_08048D98: @ 0x08048D98
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08048DA8
	bl sub_0805E780
_08048DA8:
	ldr r4, _08048E00 @ =gUnk_080D22D8
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrb r2, [r6, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r6, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r5, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048E00: .4byte gUnk_080D22D8

	thumb_func_start sub_08048E04
sub_08048E04: @ 0x08048E04
	push {lr}
	ldr r2, _08048E18 @ =gUnk_080D22F0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08048E18: .4byte gUnk_080D22F0

	thumb_func_start sub_08048E1C
sub_08048E1C: @ 0x08048E1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0xff
	subs r0, r0, r1
	cmp r0, #0
	beq _08048E96
	ldr r4, [r5, #0x50]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r2, [r1]
	cmp r2, r0
	bls _08048E48
	subs r0, r2, r0
	strb r0, [r1]
	ldr r0, _08048E44 @ =0x00000127
	bl PlaySFX
	b _08048E5C
	.align 2, 0
_08048E44: .4byte 0x00000127
_08048E48:
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x28
	movs r1, #0
	bl sub_08080964
_08048E5C:
	adds r2, r5, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08048E8E
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r4, [r4, #0x54]
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r4, [r4, #0x54]
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r4, [r4, #0x54]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
_08048E8E:
	adds r1, r5, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08048E96:
	ldr r1, _08048EA0 @ =gUnk_080D22D8
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08048EA0: .4byte gUnk_080D22D8

	thumb_func_start sub_08048EA4
sub_08048EA4: @ 0x08048EA4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x14]
	movs r0, #0xe0
	ands r0, r1
	lsrs r0, r0, #3
	ldrb r1, [r4, #0xa]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08048F74
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048ED0
sub_08048ED0: @ 0x08048ED0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048EFC
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
_08048EFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048F00
sub_08048F00: @ 0x08048F00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048F2E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_08048F2E:
	pop {r4, pc}

	thumb_func_start sub_08048F30
sub_08048F30: @ 0x08048F30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048F4E
	bl sub_0805E780
_08048F4E:
	pop {r4, pc}

	thumb_func_start sub_08048F50
sub_08048F50: @ 0x08048F50
	push {lr}
	adds r1, r0, #0
	adds r0, #0x78
	ldrb r3, [r0]
	lsls r3, r3, #1
	ldr r0, _08048F70 @ =gUnk_080D2300
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	bl sub_0806FA90
	pop {pc}
	.align 2, 0
_08048F70: .4byte gUnk_080D2300

	thumb_func_start sub_08048F74
sub_08048F74: @ 0x08048F74
	push {lr}
	ldr r2, _08048F88 @ =gUnk_080D2348
	adds r1, r0, #0
	adds r1, #0x78
	ldrb r1, [r1]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_08048F88: .4byte gUnk_080D2348
