	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805DB94
sub_0805DB94: @ 0x0805DB94
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805DBB0 @ =gUnk_08108D8C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805DBF0
	pop {r4, pc}
	.align 2, 0
_0805DBB0: .4byte gUnk_08108D8C

	thumb_func_start sub_0805DBB4
sub_0805DBB4: @ 0x0805DBB4
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805DBC8 @ =gScreenTransition
	adds r1, #0x3d
	ldrb r2, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0805DBC8: .4byte gScreenTransition

	thumb_func_start sub_0805DBCC
sub_0805DBCC: @ 0x0805DBCC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0805DBE6
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x20]
	ldr r2, _0805DBE8 @ =0x0000012D
	cmp r0, r2
	bls _0805DBE6
	strh r2, [r1, #0x20]
_0805DBE6:
	pop {pc}
	.align 2, 0
_0805DBE8: .4byte 0x0000012D

	thumb_func_start nullsub_498
nullsub_498: @ 0x0805DBEC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805DBF0
sub_0805DBF0: @ 0x0805DBF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	subs r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0805DC06
	bl sub_0805DC70
	b _0805DC6C
_0805DC06:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _0805DC18
	movs r0, #0x78
	movs r1, #2
	bl sub_08080964
	b _0805DC36
_0805DC18:
	cmp r1, #0xd2
	bne _0805DC26
	movs r0, #0x5a
	movs r1, #1
	bl sub_08080964
	b _0805DC36
_0805DC26:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DC36
	movs r0, #0x5a
	movs r1, #0
	bl sub_08080964
_0805DC36:
	ldrh r1, [r4, #0x20]
	adds r0, r1, #0
	cmp r0, #0x77
	bhi _0805DC42
	movs r0, #0xf
	b _0805DC48
_0805DC42:
	cmp r0, #0xd1
	bhi _0805DC58
	movs r0, #0x1f
_0805DC48:
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
	b _0805DC6C
_0805DC58:
	cmp r0, #0xc7
	bhi _0805DC6C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
_0805DC6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805DC70
sub_0805DC70: @ 0x0805DC70
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805DC80 @ =gUnk_0813AC48
	bl DoExitTransition
	pop {pc}
	.align 2, 0
_0805DC80: .4byte gUnk_0813AC48
