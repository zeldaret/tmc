	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809EE44
sub_0809EE44: @ 0x0809EE44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r1
	strh r0, [r5, #0x24]
	cmp r1, #0
	bne _0809EE60
	b _0809EF74
_0809EE60:
	ldr r4, _0809EEA4 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809EF78
	cmp r0, #0
	beq _0809EE80
	bl sub_08079F8C
	cmp r0, #0
	beq _0809EE80
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	ldrb r1, [r5, #0x15]
	bl sub_08079E58
_0809EE80:
	ldr r6, _0809EEA8 @ =gUnk_03003D80
	ldr r4, [r6, #4]
	cmp r6, r4
	beq _0809EF74
_0809EE88:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _0809EF6E
	movs r3, #0
	ldrb r0, [r4, #9]
	subs r0, #2
	cmp r0, #0x17
	bhi _0809EF52
	lsls r0, r0, #2
	ldr r1, _0809EEAC @ =_0809EEB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EEA4: .4byte gPlayerEntity
_0809EEA8: .4byte gUnk_03003D80
_0809EEAC: .4byte _0809EEB0
_0809EEB0: @ jump table
	.4byte _0809EF1E @ case 0
	.4byte _0809EF26 @ case 1
	.4byte _0809EF48 @ case 2
	.4byte _0809EF52 @ case 3
	.4byte _0809EF52 @ case 4
	.4byte _0809EF52 @ case 5
	.4byte _0809EF52 @ case 6
	.4byte _0809EF52 @ case 7
	.4byte _0809EF52 @ case 8
	.4byte _0809EF52 @ case 9
	.4byte _0809EF52 @ case 10
	.4byte _0809EF52 @ case 11
	.4byte _0809EF52 @ case 12
	.4byte _0809EF52 @ case 13
	.4byte _0809EF52 @ case 14
	.4byte _0809EF50 @ case 15
	.4byte _0809EF52 @ case 16
	.4byte _0809EF10 @ case 17
	.4byte _0809EF52 @ case 18
	.4byte _0809EF52 @ case 19
	.4byte _0809EF52 @ case 20
	.4byte _0809EF52 @ case 21
	.4byte _0809EF52 @ case 22
	.4byte _0809EF50 @ case 23
_0809EF10:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _0809EF56
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bls _0809EF52
	b _0809EF56
_0809EF1E:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _0809EF52
	b _0809EF56
_0809EF26:
	ldr r2, _0809EF44 @ =gPlayerEntity
	movs r7, #0x2e
	ldrsh r1, [r4, r7]
	movs r7, #0x2e
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bne _0809EF56
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r1, r0
	beq _0809EF52
	b _0809EF56
	.align 2, 0
_0809EF44: .4byte gPlayerEntity
_0809EF48:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0809EF52
	b _0809EF56
_0809EF50:
	movs r3, #1
_0809EF52:
	cmp r3, #0
	beq _0809EF6E
_0809EF56:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809EF78
	cmp r0, #0
	beq _0809EF6E
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r4, #0
	bl sub_080044AE
_0809EF6E:
	ldr r4, [r4, #4]
	cmp r6, r4
	bne _0809EE88
_0809EF74:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0809EF78
sub_0809EF78: @ 0x0809EF78
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r5, #0
	adds r0, #0x70
	ldrh r2, [r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0809EFAC
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r2, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x6e
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0809EFAC
	movs r5, #1
_0809EFAC:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0809EFB0
sub_0809EFB0: @ 0x0809EFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _0809F010 @ =gUnk_081243E4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r2, r1, r0
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov sb, r2
	adds r1, #1
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	movs r0, #0x32
	ldrsh r5, [r4, r0]
	ldr r0, _0809F014 @ =gUnk_02027EB4
	mov sl, r0
	movs r7, #0
_0809EFE6:
	adds r7, #1
	add r6, sb
	add r5, r8
	mov r0, sl
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #9
	bl sub_080AE4CC
	cmp r0, #0
	beq _0809EFE6
	subs r0, r7, #1
	lsls r7, r0, #4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809F034
	cmp r0, #1
	bgt _0809F018
	cmp r0, #0
	beq _0809F022
	b _0809F082
	.align 2, 0
_0809F010: .4byte gUnk_081243E4
_0809F014: .4byte gUnk_02027EB4
_0809F018:
	cmp r0, #2
	beq _0809F03E
	cmp r0, #3
	beq _0809F064
	b _0809F082
_0809F022:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #8
	adds r1, #2
	b _0809F054
_0809F034:
	adds r1, r7, #0
	adds r1, #8
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
	b _0809F068
_0809F03E:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #8
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x6e
_0809F054:
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x72
	strh r7, [r0]
	b _0809F082
_0809F064:
	ldrh r0, [r4, #0x2e]
	adds r0, #8
_0809F068:
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r0]
	adds r1, #4
	movs r0, #0x20
	strh r0, [r1]
_0809F082:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0809F08C
sub_0809F08C: @ 0x0809F08C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0809F09A
	subs r0, #1
	strb r0, [r4, #0xf]
_0809F09A:
	adds r0, r4, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809F0C0
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0809F0E4
	b _0809F0E0
_0809F0C0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809F0E0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0809F0E0
	movs r0, #0x14
	strb r0, [r4, #0xf]
	ldrb r0, [r2]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0809F0E4
_0809F0E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809F0E4
sub_0809F0E4: @ 0x0809F0E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0809F124 @ =0x00000183
	bl EnqueueSFX
	ldrb r0, [r5, #0xa]
	movs r1, #2
	eors r1, r0
	movs r0, #0xb2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F120
	str r5, [r4, #0x50]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _0809F128 @ =gUnk_081243EC
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_0809F120:
	pop {r4, r5, pc}
	.align 2, 0
_0809F124: .4byte 0x00000183
_0809F128: .4byte gUnk_081243EC
