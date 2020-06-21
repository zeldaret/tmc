	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B668
sub_0805B668: @ 0x0805B668
	push {lr}
	ldr r2, _0805B67C @ =gUnk_08108C8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B67C: .4byte gUnk_08108C8C

	thumb_func_start sub_0805B680
sub_0805B680: @ 0x0805B680
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x34]
	lsrs r1, r1, #1
	strh r1, [r4, #0x34]
	ldrh r0, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	ldrh r1, [r4, #0x36]
	lsrs r1, r1, #1
	strh r1, [r4, #0x36]
	ldrh r0, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r4, #0x3a]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805B6B8
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B6B8
	adds r0, r4, #0
	bl sub_0805E900
	b _0805B6BE
_0805B6B8:
	adds r0, r4, #0
	bl sub_0805B6C0
_0805B6BE:
	pop {r4, pc}

	thumb_func_start sub_0805B6C0
sub_0805B6C0: @ 0x0805B6C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrh r2, [r4, #0x34]
	ldrh r3, [r4, #0x36]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805B6EC
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805B6F2
	adds r0, r4, #0
	bl sub_0805E900
	b _0805B6F2
_0805B6EC:
	ldrh r0, [r4, #0x3e]
	bl ClearFlag
_0805B6F2:
	pop {r4, pc}
