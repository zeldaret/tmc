	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	
	.text

	thumb_func_start sub_08018E68
sub_08018E68: @ 0x08018E68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08018E82
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	movs r1, #5
	bl sub_08008790
	b _08018EA8
_08018E82:
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08018E92
	bl DeleteThisEntity
_08018E92:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018EA8
	adds r0, r4, #0
	bl sub_08018F6C
	b _08018F62
_08018EA8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08018F46
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08018EEA
	cmp r0, #8
	bgt _08018ECC
	cmp r0, #0
	beq _08018ED6
	b _08018EEE
_08018ECC:
	cmp r0, #0x10
	beq _08018EDE
	cmp r0, #0x18
	beq _08018EE4
	b _08018EEE
_08018ED6:
	movs r6, #0
	movs r5, #4
	rsbs r5, r5, #0
	b _08018EEE
_08018EDE:
	movs r6, #0
	movs r5, #4
	b _08018EEE
_08018EE4:
	movs r6, #4
	rsbs r6, r6, #0
	b _08018EEC
_08018EEA:
	movs r6, #4
_08018EEC:
	movs r5, #0
_08018EEE:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08018F00
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_08018F00:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08018F0C
	adds r0, r4, #0
	bl sub_0800451C
_08018F0C:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800029C
	ldr r1, _08018F64 @ =gUnk_080B3DF4
	bl sub_08007DD6
	cmp r0, #0
	bne _08018F62
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080002B4
	cmp r0, #0x74
	beq _08018F62
	ldr r1, _08018F68 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _08018F62
_08018F46:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08018F56
	ldrb r1, [r4, #0xa]
	adds r1, #0xd
	adds r0, r4, #0
	bl InitializeAnimation
_08018F56:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08018F6C
_08018F62:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08018F64: .4byte gUnk_080B3DF4
_08018F68: .4byte gUnk_08003E44

	thumb_func_start sub_08018F6C
sub_08018F6C: @ 0x08018F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08018F8A
	movs r0, #5
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	b _08018F9A
_08018F8A:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018F9E
_08018F9A:
	bl DeleteThisEntity
_08018F9E:
	pop {r4, pc}

	thumb_func_start sub_08018FA0
sub_08018FA0: @ 0x08018FA0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08018FC8 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08018FBC
	movs r0, #1
	strb r0, [r2, #0xb]
_08018FBC:
	ldrb r0, [r2, #0xa]
	adds r0, #0xea
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08018FC8: .4byte gPlayerEntity
