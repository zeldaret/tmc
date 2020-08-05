	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B8EC
sub_0805B8EC: @ 0x0805B8EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0805B964 @ =gArea
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B90A
	bl sub_0801E104
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B96C @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805B90A:
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	bne _0805B934
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x11
	strb r0, [r5, #0xe]
	str r2, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	bl sub_0801E120
	ldrb r0, [r5, #0xe]
	bl sub_0801E154
_0805B934:
	ldr r0, _0805B970 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0805B952
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805B952:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _0805B978
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B974 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	b _0805BA6C
	.align 2, 0
_0805B964: .4byte gArea
_0805B968: .4byte gScreen
_0805B96C: .4byte 0x0000D7FF
_0805B970: .4byte gUnk_03001000
_0805B974: .4byte 0x0000DFFF
_0805B978:
	ldr r3, _0805B9A8 @ =gLinkEntity
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	ldr r2, _0805B9AC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0
	movs r3, #0
	bl CheckRectOnScreen
	cmp r0, #0
	beq _0805B9B4
	ldr r2, _0805B9B0 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	b _0805B9BC
	.align 2, 0
_0805B9A8: .4byte gLinkEntity
_0805B9AC: .4byte gRoomControls
_0805B9B0: .4byte gScreen
_0805B9B4:
	ldr r2, _0805B9E8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B9EC @ =0x0000DFFF
	ands r0, r1
_0805B9BC:
	strh r0, [r2]
	ldrb r4, [r5, #0xe]
	ldr r0, _0805B9F0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805BA2C
	ldr r0, _0805B9F4 @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0805BA2C
	cmp r4, #0x47
	bhi _0805B9F8
	adds r4, #4
	adds r0, r4, #0
	bl sub_0801E154
	movs r0, #0
	str r0, [r5, #0x20]
	b _0805BA42
	.align 2, 0
_0805B9E8: .4byte gScreen
_0805B9EC: .4byte 0x0000DFFF
_0805B9F0: .4byte gLinkState
_0805B9F4: .4byte gArea
_0805B9F8:
	ldr r0, _0805BA24 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805BA42
	ldrb r0, [r5, #0xf]
	adds r0, #0x10
	strb r0, [r5, #0xf]
	ldr r1, _0805BA28 @ =gSineTable
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #7
	str r0, [r5, #0x20]
	adds r0, r4, r0
	bl sub_0801E154
	b _0805BA42
	.align 2, 0
_0805BA24: .4byte gScreenTransition
_0805BA28: .4byte gSineTable
_0805BA2C:
	movs r0, #0
	str r0, [r5, #0x20]
	cmp r4, #0x11
	bls _0805BA42
	subs r4, #4
	cmp r4, #0x10
	bhi _0805BA3C
	movs r4, #0x11
_0805BA3C:
	adds r0, r4, #0
	bl sub_0801E154
_0805BA42:
	strb r4, [r5, #0xe]
	ldr r3, _0805BA70 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _0805BA74 @ =gRoomControls
	movs r6, #0xa
	ldrsh r1, [r2, r6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	movs r6, #0xc
	ldrsh r2, [r2, r6]
	subs r1, r1, r2
	movs r6, #0x36
	ldrsh r2, [r3, r6]
	subs r2, #9
	adds r1, r1, r2
	ldr r2, [r5, #0x20]
	adds r2, r4, r2
	bl sub_0801E160
_0805BA6C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805BA70: .4byte gLinkEntity
_0805BA74: .4byte gRoomControls

	thumb_func_start sub_0805BA78
sub_0805BA78: @ 0x0805BA78
	push {r4, lr}
	ldr r1, _0805BAA8 @ =gArea
	movs r0, #0xa
	ldrsh r3, [r1, r0]
	ldr r0, _0805BAAC @ =gRoomVars
	movs r4, #0xc
	ldrsh r2, [r0, r4]
	cmp r2, #0
	bge _0805BA8C
	movs r2, #0
_0805BA8C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0805BA96
	adds r2, r0, #0
_0805BA96:
	cmp r3, r2
	beq _0805BACE
	subs r0, r2, r3
	cmp r0, #0
	blt _0805BAB0
	cmp r0, #4
	bls _0805BAB6
	b _0805BABA
	.align 2, 0
_0805BAA8: .4byte gArea
_0805BAAC: .4byte gRoomVars
_0805BAB0:
	subs r0, r3, r2
	cmp r0, #4
	bhi _0805BABA
_0805BAB6:
	adds r3, r2, #0
	b _0805BAC8
_0805BABA:
	cmp r2, r3
	bge _0805BAC2
	subs r3, #4
	b _0805BAC8
_0805BAC2:
	cmp r2, r3
	ble _0805BAC8
	adds r3, #4
_0805BAC8:
	strh r3, [r1, #0xa]
	movs r0, #1
	b _0805BAD0
_0805BACE:
	movs r0, #0
_0805BAD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BAD4
sub_0805BAD4: @ 0x0805BAD4
	push {lr}
	ldr r3, _0805BAF4 @ =gArea
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _0805BAF2
	ldr r1, _0805BAF8 @ =gScreen
	ldr r2, _0805BAFC @ =gUnk_08108CA8
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_0805BAF2:
	pop {pc}
	.align 2, 0
_0805BAF4: .4byte gArea
_0805BAF8: .4byte gScreen
_0805BAFC: .4byte gUnk_08108CA8

	thumb_func_start sub_0805BB00
sub_0805BB00: @ 0x0805BB00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805BB50 @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0805BB28
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0805BB28
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x22
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #0
	bl sub_0805EA2C
_0805BB28:
	ldr r1, _0805BB54 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0xf
	bl _DmaFill16
	ldr r0, _0805BB58 @ =gScreen
	ldr r1, _0805BB5C @ =0x00001E0C
	strh r1, [r0, #0x2c]
	adds r0, #0x66
	ldr r1, _0805BB60 @ =0x00003E48
	strh r1, [r0]
	ldr r0, _0805BB64 @ =gRoomVars
	strh r4, [r0, #0xc]
	cmp r5, #0
	beq _0805BB68
	ldr r1, _0805BB50 @ =gArea
	movs r0, #1
	b _0805BB6C
	.align 2, 0
_0805BB50: .4byte gArea
_0805BB54: .4byte 0x0600F000
_0805BB58: .4byte gScreen
_0805BB5C: .4byte 0x00001E0C
_0805BB60: .4byte 0x00003E48
_0805BB64: .4byte gRoomVars
_0805BB68:
	ldr r1, _0805BB70 @ =gArea
	movs r0, #2
_0805BB6C:
	strb r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_0805BB70: .4byte gArea

	thumb_func_start sub_0805BB74
sub_0805BB74: @ 0x0805BB74
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805BBB0 @ =gRoomVars
	cmp r1, #0
	bge _0805BB82
	movs r0, #0xc
	ldrsh r1, [r2, r0]
_0805BB82:
	ldr r0, _0805BBB4 @ =gArea
	strh r1, [r0, #0xa]
	strh r1, [r2, #0xc]
	movs r0, #9
	movs r1, #0x22
	bl sub_0805EB9C
	cmp r0, #0
	beq _0805BBAE
	bl sub_0805B8EC
	ldr r0, _0805BBB8 @ =gScreen
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805BBAE:
	pop {pc}
	.align 2, 0
_0805BBB0: .4byte gRoomVars
_0805BBB4: .4byte gArea
_0805BBB8: .4byte gScreen

	thumb_func_start sub_0805BBBC
sub_0805BBBC: @ 0x0805BBBC
	push {r4, lr}
	movs r4, #0
	ldr r2, _0805BBF8 @ =gArea
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0805BBF2
	ldr r0, _0805BBFC @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _0805BBF2
	ldr r2, _0805BC00 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BBF2
	bl sub_0805BAD4
_0805BBF2:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0805BBF8: .4byte gArea
_0805BBFC: .4byte gRoomVars
_0805BC00: .4byte gScreen

	thumb_func_start sub_0805BC04
sub_0805BC04: @ 0x0805BC04
	push {r4, lr}
	movs r4, #0
	ldr r2, _0805BC40 @ =gArea
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0805BC3A
	ldr r0, _0805BC44 @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _0805BC3A
	ldr r2, _0805BC48 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BC3A
	bl sub_0805BAD4
_0805BC3A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0805BC40: .4byte gArea
_0805BC44: .4byte gRoomVars
_0805BC48: .4byte gScreen

	thumb_func_start sub_0805BC4C
sub_0805BC4C: @ 0x0805BC4C
	push {lr}
	ldr r1, _0805BC68 @ =gArea
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0805BC64
	movs r0, #0
	strb r0, [r1, #0xc]
	ldr r2, _0805BC6C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805BC70 @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
_0805BC64:
	pop {pc}
	.align 2, 0
_0805BC68: .4byte gArea
_0805BC6C: .4byte gScreen
_0805BC70: .4byte 0x0000D7FF
