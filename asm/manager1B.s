	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B3B4
sub_0805B3B4: @ 0x0805B3B4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl EntityHasDuplicateID
	cmp r0, #0
	beq _0805B3C4
	bl DeleteThisEntity
_0805B3C4:
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	ldr r1, _0805B438 @ =gUnk_08108C28
	adds r5, r0, r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B41E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0805B3F6
	ldr r1, _0805B43C @ =sub_0805B4B4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805B3F6:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r1, [r0, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r1, r0, r1
	cmp r1, #0
	bge _0805B406
	movs r1, #0
_0805B406:
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	str r0, [r4, #0x20]
	ldr r1, _0805B444 @ =gUnk_08108C54
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0805B41E:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805B436
	ldr r0, _0805B444 @ =gUnk_08108C54
	ldrb r1, [r5, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805B436:
	pop {r4, r5, pc}
	.align 2, 0
_0805B438: .4byte gUnk_08108C28
_0805B43C: .4byte sub_0805B4B4
_0805B440: .4byte gRoomControls
_0805B444: .4byte gUnk_08108C54

	thumb_func_start sub_0805B448
sub_0805B448: @ 0x0805B448
	push {r4, lr}
	ldr r4, _0805B46C @ =gScreen
	ldr r3, _0805B470 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #2
	strh r1, [r4, #0x2e]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #1
	ldr r0, [r0, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
_0805B46C: .4byte gScreen
_0805B470: .4byte gRoomControls

	thumb_func_start sub_0805B474
sub_0805B474: @ 0x0805B474
	push {r4, r5, lr}
	ldr r5, _0805B4A8 @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldrh r4, [r5, #8]
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	ldrh r1, [r5, #0x20]
	subs r1, #0xa0
	bl __divsi3
	ldr r2, _0805B4AC @ =gScreen
	adds r4, r4, r0
	strh r4, [r2, #0x30]
	ldrh r0, [r5, #0x1e]
	ldr r1, _0805B4B0 @ =0xFFFFFF00
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	strh r1, [r2, #0x2e]
	pop {r4, r5, pc}
	.align 2, 0
_0805B4A8: .4byte gRoomControls
_0805B4AC: .4byte gScreen
_0805B4B0: .4byte 0xFFFFFF00

	thumb_func_start sub_0805B4B4
sub_0805B4B4: @ 0x0805B4B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_0805B4D0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0805B4C8
	bl sub_0806D0F8
_0805B4C8:
	adds r0, r4, #0
	bl sub_0805B3B4
	pop {r4, pc}

	thumb_func_start sub_0805B4D0
sub_0805B4D0: @ 0x0805B4D0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805B528 @ =gUnk_08108C5C
	adds r0, r5, r0
	ldrb r0, [r0]
	bl LoadGfxGroup
	ldr r4, _0805B52C @ =gScreen
	ldr r0, _0805B530 @ =0x00001E07
	strh r0, [r4, #0x2c]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _0805B534 @ =gRoomControls
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r3, r0, #1
	ldrh r1, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r2, r0, r1
	cmp r2, #0
	bge _0805B516
	movs r2, #0
_0805B516:
	ldr r0, _0805B538 @ =gUnk_08108C44
	lsls r1, r5, #1
	adds r1, r1, r0
	adds r0, r3, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_0805B528: .4byte gUnk_08108C5C
_0805B52C: .4byte gScreen
_0805B530: .4byte 0x00001E07
_0805B534: .4byte gRoomControls
_0805B538: .4byte gUnk_08108C44
