	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08058DD0
sub_08058DD0: @ 0x08058DD0
	push {lr}
	ldr r2, _08058DE4 @ =gUnk_08108308
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058DE4: .4byte gUnk_08108308

	thumb_func_start sub_08058DE8
sub_08058DE8: @ 0x08058DE8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058DFC
	bl DeleteThisEntity
	b _08058E14
_08058DFC:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3a]
	bl GetLayerByIndex
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
_08058E14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058E18
sub_08058E18: @ 0x08058E18
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x30]
	ldrh r0, [r2, #0x28]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08058E30
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
_08058E30:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08058E34
sub_08058E34: @ 0x08058E34
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058E5E
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08058E58
	bl GetCurrentRoomProperty
	bl LoadRoomEntityList
_08058E58:
	adds r0, r4, #0
	bl DeleteManager
_08058E5E:
	pop {r4, pc}
