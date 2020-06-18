	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Librarians
Librarians: @ 0x0806B9F0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BA18
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r1, _0806BA30 @ =gUnk_08114F30
	ldrb r2, [r4, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
_0806BA18:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0
_0806BA30: .4byte gUnk_08114F30

	thumb_func_start sub_0806BA34
sub_0806BA34: @ 0x0806BA34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	ldr r0, _0806BA58 @ =0x00004912
	mov r8, r0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x73
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806BA60
	ldr r0, _0806BA5C @ =0x00004913
	mov r8, r0
	b _0806BB06
	.align 2, 0
_0806BA58: .4byte 0x00004912
_0806BA5C: .4byte 0x00004913
_0806BA60:
	movs r0, #0x39
	bl GetInventoryValue
	adds r7, r0, #0
	movs r0, #0x3a
	bl GetInventoryValue
	adds r6, r0, #0
	movs r0, #0x3b
	bl GetInventoryValue
	adds r5, r0, #0
	cmp r7, #1
	bne _0806BA88
	ldr r0, _0806BA84 @ =0x00004906
	mov r8, r0
	str r7, [r4, #0x14]
	b _0806BAA2
	.align 2, 0
_0806BA84: .4byte 0x00004906
_0806BA88:
	cmp r6, #1
	bne _0806BA98
	ldr r0, _0806BA94 @ =0x00004907
	mov r8, r0
	str r6, [r4, #0x14]
	b _0806BAA2
	.align 2, 0
_0806BA94: .4byte 0x00004907
_0806BA98:
	cmp r5, #1
	bne _0806BAB4
	ldr r0, _0806BAB0 @ =0x00004908
	mov r8, r0
	str r5, [r4, #0x14]
_0806BAA2:
	movs r0, #0x6b
	bl SetLocalFlag
	movs r0, #0x6a
	bl SetLocalFlag
	b _0806BB06
	.align 2, 0
_0806BAB0: .4byte 0x00004908
_0806BAB4:
	movs r0, #0x6a
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806BB06
	movs r0, #0x6b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806BAD0
	ldr r0, _0806BACC @ =0x00004901
	b _0806BAD6
	.align 2, 0
_0806BACC: .4byte 0x00004901
_0806BAD0:
	cmp r7, #0
	bne _0806BAE4
	ldr r0, _0806BAE0 @ =0x00004902
_0806BAD6:
	mov r8, r0
	movs r0, #0x6b
	bl SetLocalFlag
	b _0806BB06
	.align 2, 0
_0806BAE0: .4byte 0x00004902
_0806BAE4:
	cmp r6, #0
	bne _0806BAF8
	ldr r0, _0806BAF4 @ =0x00004903
	mov r8, r0
	movs r0, #0x6d
	bl SetLocalFlag
	b _0806BB06
	.align 2, 0
_0806BAF4: .4byte 0x00004903
_0806BAF8:
	cmp r5, #0
	bne _0806BB06
	ldr r0, _0806BB18 @ =0x00004904
	mov r8, r0
	movs r0, #0x70
	bl SetLocalFlag
_0806BB06:
	mov r0, r8
	mov r1, sb
	bl TextboxNoOverlap
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806BB18: .4byte 0x00004904

	thumb_func_start sub_0806BB1C
sub_0806BB1C: @ 0x0806BB1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #1
	rsbs r4, r4, #0
	movs r0, #0x39
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB34
	movs r4, #0x39
	b _0806BB52
_0806BB34:
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB42
	movs r4, #0x3a
	b _0806BB52
_0806BB42:
	movs r0, #0x3b
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB4E
	movs r4, #0x3b
_0806BB4E:
	cmp r4, #0
	ble _0806BB78
_0806BB52:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0806BB70
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08095BE0
	adds r0, r5, #0
	movs r1, #0xc
	bl InitializeAnimation
	movs r0, #0xcd
	bl PlaySFX
	b _0806BB78
_0806BB70:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807CAA0
_0806BB78:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806BB7C
sub_0806BB7C: @ 0x0806BB7C
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x39
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x3b
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x73
	bl SetLocalFlag
	movs r0, #1
	str r0, [r4, #0x14]
_0806BBAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BBB0
sub_0806BBB0: @ 0x0806BBB0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806BBCC
	movs r0, #0x29
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _0806BBCE
_0806BBCC:
	movs r1, #2
_0806BBCE:
	ldr r0, _0806BBE0 @ =gUnk_08113078
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806BBE0: .4byte gUnk_08113078
