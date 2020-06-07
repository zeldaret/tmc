	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08069784
sub_08069784: @ 0x08069784
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806979A
	adds r0, r2, #0
	bl sub_08069838
	b _080697A0
_0806979A:
	adds r0, r2, #0
	bl sub_080697A4
_080697A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080697A4
sub_080697A4: @ 0x080697A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080697C0 @ =gUnk_08111C48
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_080697C0: .4byte gUnk_08111C48

	thumb_func_start sub_080697C4
sub_080697C4: @ 0x080697C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080697E8 @ =gUnk_08111C3C
	bl sub_0806FDEC
	cmp r0, #0
	beq _080697E4
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08078778
_080697E4:
	pop {r4, pc}
	.align 2, 0
_080697E8: .4byte gUnk_08111C3C

	thumb_func_start sub_080697EC
sub_080697EC: @ 0x080697EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	blt _0806981E
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806981A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _0806981E
	adds r0, r4, #0
	bl UpdateSprite
	b _0806981E
_0806981A:
	subs r0, #1
	strb r0, [r4, #0xf]
_0806981E:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08069834
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08069888
_08069834:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069838
sub_08069838: @ 0x08069838
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _08069862
	ldr r1, _08069884 @ =gUnk_08111C3C
	bl sub_0806FDEC
	cmp r0, #0
	beq _08069880
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x68
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0807DD64
_08069862:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08069880
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08069888
_08069880:
	pop {r4, r5, pc}
	.align 2, 0
_08069884: .4byte gUnk_08111C3C

	thumb_func_start sub_08069888
sub_08069888: @ 0x08069888
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x47
	bl GetProgressFlag
	cmp r0, #0
	bne _080698A0
	movs r4, #0
	movs r0, #0x47
	bl sub_0807CD04
	b _08069906
_080698A0:
	movs r0, #0x2b
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r0, #0x2c
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r0, #0x2d
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r4, #1
	b _08069906
_080698C2:
	movs r0, #0x18
	bl GetProgressFlag
	cmp r0, #0
	bne _080698D0
	movs r4, #2
	b _08069906
_080698D0:
	movs r0, #0x48
	bl GetProgressFlag
	cmp r0, #0
	bne _080698E4
	movs r4, #3
	movs r0, #0x48
	bl sub_0807CD04
	b _08069906
_080698E4:
	movs r0, #0x2e
	bl GetProgressFlag
	cmp r0, #0
	bne _08069904
	movs r0, #0x2f
	bl GetProgressFlag
	cmp r0, #0
	bne _08069904
	movs r0, #0x30
	bl GetProgressFlag
	movs r4, #4
	cmp r0, #0
	beq _08069906
_08069904:
	movs r4, #5
_08069906:
	ldr r0, _08069918 @ =gUnk_08111C50
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08069918: .4byte gUnk_08111C50

	thumb_func_start sub_0806991C
sub_0806991C: @ 0x0806991C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x68
	movs r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x69
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _0806999C @ =gUnk_08111C5C
	adds r1, r1, r0
	ldr r2, _080699A0 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r6, [r2, #6]
	adds r0, r0, r6
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #8
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	str r3, [r4, #0x14]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _080699A4 @ =gUnk_08111C74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldr r2, _080699A8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806999C: .4byte gUnk_08111C5C
_080699A0: .4byte gRoomControls
_080699A4: .4byte gUnk_08111C74
_080699A8: .4byte gUnk_02033280

	thumb_func_start sub_080699AC
sub_080699AC: @ 0x080699AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x68
	movs r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x69
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _08069A2C @ =gUnk_08111C84
	adds r1, r1, r0
	ldr r2, _08069A30 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r6, [r2, #6]
	adds r0, r0, r6
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #8
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	str r3, [r4, #0x14]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _08069A34 @ =gUnk_08111C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldr r2, _08069A38 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069A2C: .4byte gUnk_08111C84
_08069A30: .4byte gRoomControls
_08069A34: .4byte gUnk_08111C8C
_08069A38: .4byte gUnk_02033280

	thumb_func_start sub_08069A3C
sub_08069A3C: @ 0x08069A3C
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	ldr r2, _08069A5C @ =gUnk_08111C9C
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069A5C: .4byte gUnk_08111C9C

	thumb_func_start sub_08069A60
sub_08069A60: @ 0x08069A60
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	ldr r2, _08069A80 @ =gUnk_08111CA8
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069A80: .4byte gUnk_08111CA8

	thumb_func_start sub_08069A84
sub_08069A84: @ 0x08069A84
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	ldr r2, _08069AA4 @ =gUnk_08111CB4
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069AA4: .4byte gUnk_08111CB4

	thumb_func_start sub_08069AA8
sub_08069AA8: @ 0x08069AA8
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	ldr r2, _08069AC8 @ =gUnk_08111CB8
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069AC8: .4byte gUnk_08111CB8

	thumb_func_start sub_08069ACC
sub_08069ACC: @ 0x08069ACC
	push {lr}
	adds r2, r1, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bgt _08069AE2
	movs r0, #1
	b _08069AE4
_08069AE2:
	movs r0, #0
_08069AE4:
	str r0, [r2, #0x14]
	pop {pc}

	thumb_func_start sub_08069AE8
sub_08069AE8: @ 0x08069AE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r2, #0xf
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
	.align 2, 0
