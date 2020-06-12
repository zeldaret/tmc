	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A2164
sub_080A2164: @ 0x080A2164
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A21DC
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _080A2180
	bl CheckFlags
	cmp r0, #0
	beq _080A224E
_080A2180:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	subs r0, #0xe
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #3
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, _080A21D4 @ =gRoomControls
	ldrb r0, [r0, #5]
	strb r0, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x68
	ldr r0, _080A21D8 @ =0x0000FFFE
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0
	bl sub_0805EC9C
	b _080A221E
	.align 2, 0
_080A21D4: .4byte gRoomControls
_080A21D8: .4byte 0x0000FFFE
_080A21DC:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A221E
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x6a
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bhi _080A2208
	movs r0, #1
	strh r0, [r2]
_080A2208:
	ldrh r0, [r1]
	cmp r0, #0x88
	bls _080A2212
	ldr r0, _080A2250 @ =0x0000FFFF
	strh r0, [r2]
_080A2212:
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_080A221E:
	ldr r2, _080A2254 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x62
	ldrb r0, [r2]
	movs r3, #0xdc
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A2258 @ =gRoomControls
	ldrb r0, [r1, #5]
	ldrb r4, [r4, #0xf]
	cmp r0, r4
	beq _080A224E
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A224E
	bl sub_0805E780
_080A224E:
	pop {r4, pc}
	.align 2, 0
_080A2250: .4byte 0x0000FFFF
_080A2254: .4byte gScreen
_080A2258: .4byte gRoomControls
