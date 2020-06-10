	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08098CF4
sub_08098CF4: @ 0x08098CF4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08098D14
	ldr r0, _08098D10 @ =gUnk_0812367C
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08098D1A
	.align 2, 0
_08098D10: .4byte gUnk_0812367C
_08098D14:
	adds r0, r2, #0
	bl sub_08098E3C
_08098D1A:
	pop {pc}

	thumb_func_start sub_08098D1C
sub_08098D1C: @ 0x08098D1C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	ldr r0, _08098D40 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	beq _08098D44
	bl sub_0807CBE4
	cmp r0, #0
	bne _08098D44
	strb r5, [r4, #0xc]
	b _08098D5A
	.align 2, 0
_08098D40: .4byte 0x0000FFF0
_08098D44:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08098E88
_08098D5A:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	pop {r4, r5, pc}

	thumb_func_start sub_08098D6C
sub_08098D6C: @ 0x08098D6C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08098D9A
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x43
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08098D9A
	ldrh r0, [r1, #0x32]
	adds r0, #8
	strh r0, [r1, #0x32]
_08098D9A:
	pop {r4, pc}

	thumb_func_start sub_08098D9C
sub_08098D9C: @ 0x08098D9C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08098DC2
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_08098E88
_08098DC2:
	pop {pc}

	thumb_func_start sub_08098DC4
sub_08098DC4: @ 0x08098DC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08098E2C @ =gLinkEntity
	adds r1, r6, #0
	movs r2, #8
	movs r3, #8
	bl sub_0800419C
	cmp r0, #0
	beq _08098E24
	adds r0, r5, #0
	adds r1, r6, #0
	bl CopyPosition
	adds r0, r5, #0
	bl sub_08004542
	adds r0, r6, #0
	bl sub_08004542
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #1
	strb r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806FAB0
	ldr r1, _08098E30 @ =gLinkState
	movs r0, #0x1f
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	adds r0, #0x38
	strb r4, [r0]
	ldrb r0, [r5, #0xb]
	adds r1, #0x39
	strb r0, [r1]
	movs r1, #4
	strb r1, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098E20
	movs r0, #0x23
	bl sub_0807CD04
_08098E20:
	bl sub_08077B20
_08098E24:
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, r6, pc}
	.align 2, 0
_08098E2C: .4byte gLinkEntity
_08098E30: .4byte gLinkState

	thumb_func_start sub_08098E34
sub_08098E34: @ 0x08098E34
	push {lr}
	bl sub_080042B8
	pop {pc}

	thumb_func_start sub_08098E3C
sub_08098E3C: @ 0x08098E3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08098E5E
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl LoadAnimation
_08098E5E:
	ldrb r1, [r4, #0xa]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r1, _08098E84 @ =gUnk_08123690
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08098E84: .4byte gUnk_08123690

	thumb_func_start sub_08098E88
sub_08098E88: @ 0x08098E88
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x82
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08098EB0
	ldr r3, _08098ED8 @ =0xFFFF0000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
_08098EB0:
	movs r0, #0x82
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08098ED4
	ldr r3, _08098EDC @ =0xFFFE0000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0x10
	strb r0, [r1]
_08098ED4:
	pop {r4, r5, pc}
	.align 2, 0
_08098ED8: .4byte 0xFFFF0000
_08098EDC: .4byte 0xFFFE0000
