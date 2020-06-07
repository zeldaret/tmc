	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802AE24
sub_0802AE24: @ 0x0802AE24
	push {lr}
	mov ip, r0
	movs r2, #0
	movs r3, #1
	strb r3, [r0, #0xc]
	movs r0, #0xf0
	mov r1, ip
	strb r0, [r1, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x20]
	ldr r0, _0802AE64 @ =gUnk_080CD174
	str r0, [r1, #0x48]
	adds r1, #0x3c
	movs r0, #3
	strb r0, [r1]
	mov r0, ip
	strb r2, [r0, #0x16]
	movs r0, #2
	mov r1, ip
	strb r0, [r1, #0x1c]
	mov r0, ip
	adds r0, #0x81
	strb r2, [r0]
	subs r0, #6
	strb r3, [r0]
	mov r0, ip
	movs r1, #3
	bl UpdateSprite
	pop {pc}
	.align 2, 0
_0802AE64: .4byte gUnk_080CD174

	thumb_func_start sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802AE8A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802AEBA
_0802AE8A:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AEA8
	adds r0, r1, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802AEBA
_0802AEA8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
_0802AEBA:
	pop {r4, pc}

	thumb_func_start sub_0802AEBC
sub_0802AEBC: @ 0x0802AEBC
	push {lr}
	ldr r2, _0802AED0 @ =gUnk_080CD158
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802AED0: .4byte gUnk_080CD158

	thumb_func_start sub_0802AED4
sub_0802AED4: @ 0x0802AED4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	cmp r0, #1
	bhi _0802AEFC
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802AF0C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0802AF0C
_0802AEFC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802AF0C
	adds r0, r4, #0
	bl sub_08078930
_0802AF0C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802AF24
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AF24
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0802AF24:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AF28
sub_0802AF28: @ 0x0802AF28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802AF50
sub_0802AF50: @ 0x0802AF50
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0802AF58
sub_0802AF58: @ 0x0802AF58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AF74
sub_0802AF74: @ 0x0802AF74
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	movs r1, #3
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0802AF8A
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0802AF8A:
	adds r0, r2, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802AF94
sub_0802AF94: @ 0x0802AF94
	push {lr}
	bl sub_0805E7BC
	pop {pc}

	thumb_func_start sub_0802AF9C
sub_0802AF9C: @ 0x0802AF9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AFC6
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802AFC0
	subs r0, #1
	strb r0, [r1]
_0802AFC0:
	adds r0, r4, #0
	bl sub_0805E7BC
_0802AFC6:
	pop {r4, pc}

	thumb_func_start sub_0802AFC8
sub_0802AFC8: @ 0x0802AFC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r7, #8
	cmp r0, #0x28
	bhi _0802B022
	movs r7, #4
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802AFEC
	adds r0, r2, #0
	subs r0, #0x10
	b _0802AFF0
_0802AFEC:
	adds r0, r2, #0
	adds r0, #0x10
_0802AFF0:
	strh r0, [r1]
	adds r5, r1, #0
	ldrh r2, [r5]
	movs r6, #0xf0
	adds r3, r6, #0
	ands r3, r2
	subs r0, r3, #1
	cmp r0, #0x7f
	bls _0802B00C
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	eors r0, r2
	strh r0, [r5]
_0802B00C:
	ldrh r0, [r1]
	adds r3, r6, #0
	ands r3, r0
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r3
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0802B022:
	ldrb r0, [r4, #0xf]
	ands r0, r7
	cmp r0, #0
	beq _0802B03A
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
	b _0802B044
_0802B03A:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
_0802B044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802B048
sub_0802B048: @ 0x0802B048
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B080
	ldr r0, _0802B074 @ =gRoomControls
	ldrh r1, [r0, #8]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	cmp r1, r2
	bgt _0802B06A
	ldrh r0, [r0, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r2
	bge _0802B078
_0802B06A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802B07E
	.align 2, 0
_0802B074: .4byte gRoomControls
_0802B078:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802B07E:
	strb r0, [r4, #0x10]
_0802B080:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _0802B0CA
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0802B0CA
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	ldrb r3, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
_0802B0CA:
	ldrb r2, [r4, #0xc]
	cmp r2, #4
	beq _0802B19E
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B19E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B10E
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B19E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0802B19E
_0802B10E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802B19E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B198
	cmp r2, #2
	bne _0802B12E
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0802B12E
	ldr r0, _0802B188 @ =gLinkState
	strb r1, [r0, #5]
_0802B12E:
	adds r0, r4, #0
	bl sub_0805EC60
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, _0802B18C @ =gUnk_080CD17C
	str r0, [r4, #0x48]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_08078954
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802B16C
	adds r0, r1, #0
	adds r0, #0x81
	strb r5, [r0]
_0802B16C:
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r5, r0, #0
	cmp r5, #0
	beq _0802B190
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	b _0802B19E
	.align 2, 0
_0802B188: .4byte gLinkState
_0802B18C: .4byte gUnk_080CD17C
_0802B190:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0802B19E
_0802B198:
	adds r0, r4, #0
	bl sub_0802AFC8
_0802B19E:
	pop {r4, r5, pc}

	thumb_func_start sub_0802B1A0
sub_0802B1A0: @ 0x0802B1A0
	push {lr}
	movs r1, #0
	movs r2, #1
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #0x4f
	strb r1, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x81
	strb r2, [r1]
	movs r1, #0
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0802B1BC
sub_0802B1BC: @ 0x0802B1BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B1CA
	subs r0, #1
	strb r0, [r4, #0xe]
_0802B1CA:
	adds r0, r4, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802B1E2
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802B200
_0802B1E2:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B1F6
	adds r0, r1, #0
	adds r1, r4, #0
	bl CopyPosition
	b _0802B200
_0802B1F6:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
_0802B200:
	pop {r4, pc}
	.align 2, 0
