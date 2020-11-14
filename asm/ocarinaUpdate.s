	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start OcarinaUpdate
OcarinaUpdate: @ 0x08076C2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076C6E
	ldr r0, _08076C70 @ =gPlayerEntity
	ldrb r2, [r0, #0x10]
	movs r4, #0
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08076C74 @ =gPlayerState
	ldr r1, [r2, #0x30]
	ldr r3, _08076C78 @ =0xEFFFFFFF
	ands r1, r3
	str r1, [r2, #0x30]
	adds r2, #0x27
	strb r4, [r2]
	ldr r1, _08076C7C @ =gUnk_02034490
	strb r4, [r1]
	bl CreateBird
	bl UnfreezeTime
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076C6E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076C70: .4byte gPlayerEntity
_08076C74: .4byte gPlayerState
_08076C78: .4byte 0xEFFFFFFF
_08076C7C: .4byte gUnk_02034490
