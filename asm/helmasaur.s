	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0802BB6C
sub_0802BB6C: @ 0x0802BB6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802BB94
	ldr r1, _0802BB90 @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0802BBA4
	.align 2, 0
_0802BB90: .4byte gUnk_080CD3E4
_0802BB94:
	ldr r0, _0802BBA8 @ =gUnk_080CD3FC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BBA4:
	pop {r4, pc}
	.align 2, 0
_0802BBA8: .4byte gUnk_080CD3FC

	thumb_func_start sub_0802BBAC
sub_0802BBAC: @ 0x0802BBAC
	push {lr}
	ldr r2, _0802BBC0 @ =gUnk_080CD408
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802BBC0: .4byte gUnk_080CD408

	thumb_func_start sub_0802BBC4
sub_0802BBC4: @ 0x0802BBC4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BBFE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _0802BBEA
	cmp r1, #0
	blt _0802BBFE
	cmp r1, #3
	bgt _0802BBFE
	cmp r1, #2
	blt _0802BBFE
_0802BBEA:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0802BBFE
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802C218
_0802BBFE:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC10
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802BC10:
	ldr r1, _0802BC1C @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802BC1C: .4byte gUnk_080CD3E4

	thumb_func_start sub_0802BC20
sub_0802BC20: @ 0x0802BC20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BC4C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
	ldr r0, _0802BC48 @ =gUnk_080CD42C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BC6C
	.align 2, 0
_0802BC48: .4byte gUnk_080CD42C
_0802BC4C:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802BC5C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
_0802BC5C:
	ldr r0, _0802BC70 @ =gUnk_080CD438
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BC6C:
	pop {r4, pc}
	.align 2, 0
_0802BC70: .4byte gUnk_080CD438

	thumb_func_start sub_0802BC74
sub_0802BC74: @ 0x0802BC74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C1C0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	ldr r0, _0802BC9C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0
_0802BC9C: .4byte gLinkEntity

	thumb_func_start sub_0802BCA0
sub_0802BCA0: @ 0x0802BCA0
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BCA8
sub_0802BCA8: @ 0x0802BCA8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0x19
	beq _0802BCFA
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0x19
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	movs r0, #0x20
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0802BCF0
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	adds r0, r4, #0
	bl CopyPosition
_0802BCF0:
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802BCFA:
	pop {r4, pc}

	thumb_func_start sub_0802BCFC
sub_0802BCFC: @ 0x0802BCFC
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD08
sub_0802BD08: @ 0x0802BD08
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802BD10
sub_0802BD10: @ 0x0802BD10
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #2
	bl UpdateSpriteAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_145
nullsub_145: @ 0x0802BD24
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD28
sub_0802BD28: @ 0x0802BD28
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802BD4C
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802BD52
_0802BD4C:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802BD52:
	pop {pc}

	thumb_func_start sub_0802BD54
sub_0802BD54: @ 0x0802BD54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_0802BD8C
sub_0802BD8C: @ 0x0802BD8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BD9C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802BDDE
_0802BD9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802BDCA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802BDCA
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802BDCA
	adds r0, r4, #0
	bl sub_0802C058
	b _0802BDDE
_0802BDCA:
	adds r0, r4, #0
	bl sub_0802C020
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0802BDDE
	adds r0, r4, #0
	bl sub_0802C058
_0802BDDE:
	pop {r4, pc}

	thumb_func_start sub_0802BDE0
sub_0802BDE0: @ 0x0802BDE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C06C
	cmp r0, #0
	beq _0802BDFE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xff
	strb r0, [r1]
	b _0802BE16
_0802BDFE:
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_0802BE16:
	pop {r4, pc}

	thumb_func_start sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl UpdateSpriteAnimation
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BE3E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0802BE44
_0802BE3E:
	adds r0, r4, #0
	bl sub_0802C18C
_0802BE44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BE48
sub_0802BE48: @ 0x0802BE48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _0802BE64
	adds r0, r4, #0
	bl sub_0802C218
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	b _0802BE7E
_0802BE64:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802C1CC
	adds r0, r4, #0
	bl sub_0802C0E8
	cmp r0, #0
	beq _0802BE7E
	movs r0, #5
	strb r0, [r4, #0xc]
_0802BE7E:
	pop {r4, pc}

	thumb_func_start sub_0802BE80
sub_0802BE80: @ 0x0802BE80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	subs r0, #0x20
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0802BE98
	adds r0, r4, #0
	bl sub_0802C1CC
_0802BE98:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802BEAE
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_0802C18C
	b _0802BEBA
_0802BEAE:
	adds r0, r4, #0
	bl sub_0802C1C0
	ldrb r0, [r4, #0xe]
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_0802BEBA:
	pop {r4, pc}

	thumb_func_start sub_0802BEBC
sub_0802BEBC: @ 0x0802BEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	movs r4, #0x10
	eors r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEFE0
	ldrb r0, [r5, #0x15]
	eors r0, r4
	strb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802BEE8
	adds r0, r5, #0
	bl sub_0802C1C0
_0802BEE8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BF1E
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802BF3A
	ldrb r0, [r4, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _0802BF3A
_0802BF1E:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802BF3A
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0802BF3A:
	pop {r4, pc}

	thumb_func_start sub_0802BF3C
sub_0802BF3C: @ 0x0802BF3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BF76
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802C020
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _0802BF76
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802BF76:
	pop {r4, pc}

	thumb_func_start sub_0802BF78
sub_0802BF78: @ 0x0802BF78
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3b
	movs r1, #4
	strb r1, [r3]
	strb r2, [r0, #0x1c]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #8
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0802BF98
sub_0802BF98: @ 0x0802BF98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BFBC
	ldr r0, _0802BFB8 @ =gUnk_080CD450
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BFCC
	.align 2, 0
_0802BFB8: .4byte gUnk_080CD450
_0802BFBC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0802BFCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BFD0
sub_0802BFD0: @ 0x0802BFD0
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BFD8
sub_0802BFD8: @ 0x0802BFD8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BFE0
sub_0802BFE0: @ 0x0802BFE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802BFF2
	adds r0, r4, #0
	bl DeleteEntity
_0802BFF2:
	pop {r4, pc}

	thumb_func_start sub_0802BFF4
sub_0802BFF4: @ 0x0802BFF4
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C01C
	adds r0, r3, #0
	bl DeleteEntity
_0802C01C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802C020
sub_0802C020: @ 0x0802C020
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Random
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C03E
	movs r6, #1
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0802C044
_0802C03E:
	movs r0, #0x18
	ands r0, r4
	b _0802C056
_0802C044:
	adds r0, r5, #0
	bl sub_08049EE4
	lsrs r1, r4, #0x10
	ands r1, r6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_0802C056:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	movs r2, #2
	strb r2, [r0, #0xc]
	strb r1, [r0, #0x15]
	lsrs r1, r1, #3
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0802C06C
sub_0802C06C: @ 0x0802C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, [r0, #0x48]
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r6, r2, r1
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	movs r1, #1
	ldrsb r1, [r3, r1]
	adds r5, r2, r1
	ldr r3, _0802C0CC @ =gUnk_080CD45C
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #2
	adds r2, r1, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov sb, r2
	adds r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C0D0 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C0B2
	ldr r7, _0802C0D4 @ =gUnk_0200D654
_0802C0B2:
	movs r4, #0
_0802C0B4:
	add r6, sb
	add r5, r8
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0802C0D8
	movs r0, #0
	b _0802C0E0
	.align 2, 0
_0802C0CC: .4byte gUnk_080CD45C
_0802C0D0: .4byte gUnk_02027EB4
_0802C0D4: .4byte gUnk_0200D654
_0802C0D8:
	adds r4, #1
	cmp r4, #7
	bls _0802C0B4
	movs r0, #1
_0802C0E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802C0E8
sub_0802C0E8: @ 0x0802C0E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C0FC
	movs r0, #1
	b _0802C178
_0802C0FC:
	ldrb r3, [r5, #0x15]
	lsrs r3, r3, #2
	ldr r0, _0802C17C @ =gUnk_080CD45C
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r4, [r5, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #1
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r2, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C180 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C140
	ldr r7, _0802C184 @ =gUnk_0200D654
_0802C140:
	movs r5, #0
	ldr r1, _0802C188 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r0, r6, r0
	asrs r0, r0, #4
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #8]
	subs r1, r4, r1
	asrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #9
	bl sub_0806FC24
	cmp r0, #0
	bne _0802C176
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_0802C176:
	adds r0, r5, #0
_0802C178:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802C17C: .4byte gUnk_080CD45C
_0802C180: .4byte gUnk_02027EB4
_0802C184: .4byte gUnk_0200D654
_0802C188: .4byte gRoomControls

	thumb_func_start sub_0802C18C
sub_0802C18C: @ 0x0802C18C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802C1BC
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0802C1BC
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_0802C1BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C1CC
sub_0802C1CC: @ 0x0802C1CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0x14]
	lsls r4, r4, #2
	ldr r0, _0802C214 @ =gUnk_080CD464
	adds r4, r4, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	pop {r4, r5, pc}
	.align 2, 0
_0802C214: .4byte gUnk_080CD464

	thumb_func_start sub_0802C218
sub_0802C218: @ 0x0802C218
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xe0
	strh r1, [r0, #0x24]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr
