	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text



	thumb_func_start PlayerItem3
PlayerItem3: @ 0x0801B45C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B48C @ =gUnk_080B77FC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801B4AC
	ldrb r0, [r4, #0x14]
	cmp r0, #6
	bne _0801B490
	adds r1, r4, #0
	adds r1, #0x86
	movs r2, #0x80
	lsls r2, r2, #6
	b _0801B496
	.align 2, 0
_0801B48C: .4byte gUnk_080B77FC
_0801B490:
	adds r1, r4, #0
	adds r1, #0x86
	ldr r2, _0801B4C4 @ =0xFFFFE000
_0801B496:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	ldrh r3, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_0801B4AC:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801B4C0
	movs r0, #0xfb
	bl EnqueueSFX
_0801B4C0:
	pop {r4, pc}
	.align 2, 0
_0801B4C4: .4byte 0xFFFFE000

	thumb_func_start sub_0801B4C8
sub_0801B4C8: @ 0x0801B4C8
.ifdef EU
	.incbin "baserom_eu.gba", 0x01B4F4, 0xc8 @ TODO disassemble
.else
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0801B52C @ =gPlayerState
	str r4, [r3, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0801B530 @ =gUnk_081271CC
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0xb
	strb r0, [r1]
	ldr r5, _0801B534 @ =gPlayerEntity
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x86
	strh r2, [r0]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B518
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0801B518:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B538
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	b _0801B540
	.align 2, 0
_0801B52C: .4byte gPlayerState
_0801B530: .4byte gUnk_081271CC
_0801B534: .4byte gPlayerEntity
_0801B538:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x1e
_0801B540:
	strb r0, [r4, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0xd
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801B550
	strb r1, [r4, #0x15]
	b _0801B556
_0801B550:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0801B556:
	ldrb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801B56C
	movs r0, #1
	strb r0, [r4, #0xb]
_0801B56C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B584
	pop {r4, r5, pc}
.endif

	thumb_func_start sub_0801B584
sub_0801B584: @ 0x0801B584
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0801B804
	ldr r1, _0801B5F8 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801B5A8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _0801B5A8
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	ldr r0, _0801B5FC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0801B5B8
_0801B5A8:
	ldr r1, _0801B5F8 @ =gPlayerState
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	movs r0, #0
	str r0, [r1, #0x2c]
_0801B5B4:
	bl DeleteThisEntity
_0801B5B8:
	ldr r7, _0801B5FC @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B600
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0xc
	bne _0801B5D8
	movs r2, #6
_0801B5D8:
	lsrs r0, r1, #4
	adds r1, r0, r2
	ldrb r0, [r6, #0x1e]
	cmp r0, r1
	beq _0801B5EE
	strb r1, [r6, #0x1e]
	ldrb r1, [r6, #0x1e]
	ldrh r2, [r6, #0x12]
	adds r0, r6, #0
	bl sub_080042D0
_0801B5EE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08078E84
	b _0801B674
	.align 2, 0
_0801B5F8: .4byte gPlayerState
_0801B5FC: .4byte gPlayerEntity
_0801B600:
	movs r5, #0
	movs r0, #2
	strb r0, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0xd5
	strh r0, [r1]
	ldrb r0, [r6, #0x10]
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r6, #0x10]
	subs r1, #0x24
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x3b
	strb r0, [r2]
	movs r0, #0xa6
	strh r0, [r6, #0x12]
	ldrb r1, [r6, #0x18]
	subs r0, #0xe7
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ldr r2, _0801B678 @ =gUnk_080B7826
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	adds r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _0801B67C @ =gPlayerState
	str r5, [r0, #0x2c]
	ldrb r1, [r0, #4]
	orrs r4, r1
	strb r4, [r0, #4]
_0801B674:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B678: .4byte gUnk_080B7826
_0801B67C: .4byte gPlayerState

	thumb_func_start sub_0801B680
sub_0801B680: @ 0x0801B680
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801B804
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B6DC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B6DC
	ldr r3, _0801B6C4 @ =gPlayerState
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801B6DC
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #0x10
	ble _0801B6C8
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, #0x40
	b _0801B6D0
	.align 2, 0
_0801B6C4: .4byte gPlayerState
_0801B6C8:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #0x40
_0801B6D0:
	strh r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	strb r0, [r4, #0x15]
_0801B6DC:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r5, #0
	adds r0, r4, #0
	bl sub_0801B864
	cmp r0, #0
	beq _0801B6FE
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #0xc
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0801B6FE:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801B780 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801B784 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0801B73C
	cmp r5, #0
	bne _0801B790
	ldr r1, _0801B788 @ =gUnk_08003E44
	adds r0, r4, #0
	bl sub_080040E2
	adds r5, r0, #0
_0801B73C:
	cmp r5, #0
	bne _0801B790
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801B754
	ldrh r0, [r4, #0x24]
	subs r0, #0x10
	strh r0, [r4, #0x24]
_0801B754:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0801B75C
	movs r5, #1
_0801B75C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B76C
	movs r5, #1
_0801B76C:
	cmp r5, #0
	beq _0801B7A4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B78C
	movs r0, #0x1e
	b _0801B792
	.align 2, 0
_0801B780: .4byte gRoomControls
_0801B784: .4byte gPlayerEntity
_0801B788: .4byte gUnk_08003E44
_0801B78C:
	movs r0, #0xc
	b _0801B792
_0801B790:
	movs r0, #1
_0801B792:
	strb r0, [r4, #0xe]
	cmp r5, #0
	beq _0801B7A4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0801B7A4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801B7A8
sub_0801B7A8: @ 0x0801B7A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0801B804
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0801B7BC
	subs r0, #1
	strb r0, [r5, #0xe]
	b _0801B7FA
_0801B7BC:
	adds r0, r5, #0
	bl sub_0801B864
	ldrh r2, [r5, #0x24]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _0801B7FC @ =0x0000027F
	cmp r1, r0
	bgt _0801B7D4
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r5, #0x24]
_0801B7D4:
	ldr r4, _0801B800 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl sub_0800419C
	cmp r0, #0
	beq _0801B7FA
	bl DeleteThisEntity
_0801B7FA:
	pop {r4, r5, pc}
	.align 2, 0
_0801B7FC: .4byte 0x0000027F
_0801B800: .4byte gPlayerEntity

	thumb_func_start sub_0801B804
sub_0801B804: @ 0x0801B804
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B820
	cmp r0, #1
	blo _0801B81C
	cmp r0, #2
	beq _0801B824
	b _0801B826
_0801B81C:
	movs r4, #1
	b _0801B826
_0801B820:
	movs r4, #2
	b _0801B826
_0801B824:
	movs r4, #0
_0801B826:
	ldr r3, _0801B850 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _0801B854
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r3, #0xa]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r1, r0
	strb r1, [r3, #0xb]
	b _0801B862
	.align 2, 0
_0801B850: .4byte gPlayerState
_0801B854:
	ldrb r1, [r3, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	orrs r0, r1
	strb r0, [r3, #0xb]
_0801B862:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B864
sub_0801B864: @ 0x0801B864
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0801B874
	adds r0, r4, #0
	bl sub_0800451C
_0801B874:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	lsls r0, r0, #1
	ldr r3, _0801B894 @ =gUnk_080B782E
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08008782
	pop {r4, pc}
	.align 2, 0
_0801B894: .4byte gUnk_080B782E
