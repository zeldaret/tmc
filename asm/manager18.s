	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805ADD8
sub_0805ADD8: @ 0x0805ADD8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AE04
	ldr r0, _0805ADF8 @ =gArea
	ldr r1, _0805ADFC @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805AE00 @ =sub_0805AEDC
	cmp r0, r1
	beq _0805AEC4
	movs r0, #0
	bl _call_via_r1
	b _0805AEC4
	.align 2, 0
_0805ADF8: .4byte gArea
_0805ADFC: .4byte 0x0000088C
_0805AE00: .4byte sub_0805AEDC
_0805AE04:
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	bne _0805AE5E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r2, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldr r0, _0805AE44 @ =gUnk_0810865C
	ldrh r0, [r0]
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805AE48 @ =gArea
	ldr r2, _0805AE4C @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805AE58
	ldr r1, _0805AE50 @ =sub_0805AEDC
	ldr r2, _0805AE54 @ =sub_0805AF3C
	adds r0, r4, #0
	bl sub_08052D74
	b _0805AEC4
	.align 2, 0
_0805AE44: .4byte gUnk_0810865C
_0805AE48: .4byte gArea
_0805AE4C: .4byte 0x0000088C
_0805AE50: .4byte sub_0805AEDC
_0805AE54: .4byte sub_0805AF3C
_0805AE58:
	bl DeleteThisEntity
	b _0805AEC4
_0805AE5E:
	ldr r2, _0805AEC8 @ =gUnk_0810865C
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r3, _0805AECC @ =gScreen
	cmp r0, #0
	beq _0805AEA2
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805AEA2
	movs r0, #4
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805AEA2
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #0x20]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
_0805AEA2:
	ldr r1, _0805AED0 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r2, _0805AED4 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x2c]
	ldr r2, _0805AED8 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldrh r0, [r1, #0x2a]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x30]
_0805AEC4:
	pop {r4, pc}
	.align 2, 0
_0805AEC8: .4byte gUnk_0810865C
_0805AECC: .4byte gScreen
_0805AED0: .4byte gRoomControls
_0805AED4: .4byte 0xFFFFE000
_0805AED8: .4byte 0xFFFFF000

	thumb_func_start sub_0805AEDC
sub_0805AEDC: @ 0x0805AEDC
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0805AF2C @ =gScreen
	ldr r0, _0805AF30 @ =0x00001E05
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _0805AF34 @ =0x00003648
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	cmp r3, #0
	beq _0805AF06
	ldrh r1, [r3, #0x20]
_0805AF06:
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldr r1, _0805AF38 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r4, [r1, #0xa]
	adds r0, r0, r4
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	cmp r3, #0
	beq _0805AF28
	adds r0, r3, #0
	bl sub_0805ADD8
_0805AF28:
	pop {r4, pc}
	.align 2, 0
_0805AF2C: .4byte gScreen
_0805AF30: .4byte 0x00001E05
_0805AF34: .4byte 0x00003648
_0805AF38: .4byte gRoomControls

	thumb_func_start sub_0805AF3C
sub_0805AF3C: @ 0x0805AF3C
	ldrb r2, [r0, #0x10]
	movs r1, #0xdf
	ands r1, r2
	movs r3, #0
	strb r1, [r0, #0x10]
	ldr r1, _0805AF58 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _0805AF5C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x66
	strh r3, [r1]
	bx lr
	.align 2, 0
_0805AF58: .4byte gScreen
_0805AF5C: .4byte 0x0000F7FF
