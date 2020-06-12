	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08092B74
sub_08092B74: @ 0x08092B74
	push {lr}
	ldr r2, _08092B88 @ =gUnk_081227C0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08092B88: .4byte gUnk_081227C0

	thumb_func_start sub_08092B8C
sub_08092B8C: @ 0x08092B8C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08092BA6
	bl CheckFlags
	cmp r0, #0
	beq _08092BA6
	bl DeleteThisEntity
_08092BA6:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08092BE8 @ =gUnk_081227EC
	str r0, [r4, #0x48]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	ldr r1, _08092BEC @ =gUnk_081227B4
	adds r2, r0, r1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08092BF0
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	b _08092BF6
	.align 2, 0
_08092BE8: .4byte gUnk_081227EC
_08092BEC: .4byte gUnk_081227B4
_08092BF0:
	strb r1, [r4, #0x1e]
	ldrb r0, [r2, #1]
	strb r0, [r4, #0xb]
_08092BF6:
	pop {r4, pc}

	thumb_func_start sub_08092BF8
sub_08092BF8: @ 0x08092BF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08092C20
	bl CheckFlags
	cmp r0, #0
	beq _08092C20
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, _08092C1C @ =0x00000111
	bl PlaySFX
	b _08092C92
	.align 2, 0
_08092C1C: .4byte 0x00000111
_08092C20:
	adds r0, r4, #0
	bl sub_0800445C
	cmp r0, #0
	beq _08092C74
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08092C74
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	ldr r1, _08092C68 @ =gUnk_081227CC
	adds r5, r0, r1
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	adds r0, r4, #0
	bl sub_0806ED9C
	cmp r0, #0
	blt _08092C78
	ldr r1, _08092C6C @ =gLinkEntity
	ldrh r0, [r5]
	ldrb r1, [r1, #0x14]
	cmp r0, r1
	bne _08092C78
	ldr r0, _08092C70 @ =gLinkState
	adds r0, #0x90
	ldrh r1, [r0]
	ldrh r0, [r5, #2]
	ands r0, r1
	cmp r0, #0
	beq _08092C78
	ldrb r0, [r4, #0xe]
	subs r0, #1
	b _08092C76
	.align 2, 0
_08092C68: .4byte gUnk_081227CC
_08092C6C: .4byte gLinkEntity
_08092C70: .4byte gLinkState
_08092C74:
	movs r0, #8
_08092C76:
	strb r0, [r4, #0xe]
_08092C78:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08092C92
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	ldr r0, _08092C94 @ =0x00000111
	bl PlaySFX
_08092C92:
	pop {r4, r5, pc}
	.align 2, 0
_08092C94: .4byte 0x00000111

	thumb_func_start sub_08092C98
sub_08092C98: @ 0x08092C98
	push {lr}
	bl DeleteThisEntity
	pop {pc}
