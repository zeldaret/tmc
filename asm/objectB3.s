	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectB3
ObjectB3: @ 0x080A0A34
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A0A44
	cmp r0, #1
	beq _080A0A5C
	b _080A0A5E
_080A0A44:
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	ldr r1, _080A0A54 @ =gUnk_08124A18
	cmp r0, #0
	beq _080A0A5E
	ldr r1, _080A0A58 @ =gUnk_08124A10
	b _080A0A5E
	.align 2, 0
_080A0A54: .4byte gUnk_08124A18
_080A0A58: .4byte gUnk_08124A10
_080A0A5C:
	ldr r1, _080A0AB8 @ =gUnk_08124A20
_080A0A5E:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A0AB0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r4, #0x19]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x1b]
	ldr r1, _080A0ABC @ =gUnk_080C9CBC
	ldr r0, _080A0AC0 @ =gUnk_02022740
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl ChangeObjPalette
_080A0AB0:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0
_080A0AB8: .4byte gUnk_08124A20
_080A0ABC: .4byte gUnk_080C9CBC
_080A0AC0: .4byte gUnk_02022740

	thumb_func_start sub_080A0AC4
sub_080A0AC4: @ 0x080A0AC4
	push {lr}
	ldrb r1, [r0, #0xa]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0AD0
sub_080A0AD0: @ 0x080A0AD0
	push {lr}
	movs r1, #0x80
	bl sub_08003FC4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0ADC
sub_080A0ADC: @ 0x080A0ADC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl ExecuteScriptForEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0AF0
sub_080A0AF0: @ 0x080A0AF0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl ExecuteScriptForEntity
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	bne _080A0B1C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A0B1C
	bl DeleteThisEntity
_080A0B1C:
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_08003FC4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0B28
sub_080A0B28: @ 0x080A0B28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r0, r4, #0
	bl sub_0807DEDC
	ldrh r0, [r4, #0x32]
	subs r0, #0xb0
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}

	thumb_func_start sub_080A0B4C
sub_080A0B4C: @ 0x080A0B4C
	push {lr}
	movs r1, #0x78
	strh r1, [r0, #0x2e]
	movs r1, #0x50
	strh r1, [r0, #0x32]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0B60
sub_080A0B60: @ 0x080A0B60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0B7C
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0x9b
	lsls r0, r0, #1
	bl SoundReq
_080A0B7C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0B80
sub_080A0B80: @ 0x080A0B80
	ldr r1, [r0, #0x30]
	ldr r2, _080A0B8C @ =0xFFFD8000
	adds r1, r1, r2
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
_080A0B8C: .4byte 0xFFFD8000
