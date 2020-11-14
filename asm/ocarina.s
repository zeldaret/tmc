	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Ocarina    
Ocarina: @ 0x08076B78
	push {lr}
    
	ldr r3, _08076B94 @ =gOcarinaStates

	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2

	ldr r1, _08076B98 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]

	pop {pc}
	.align 2, 0
_08076B94: .4byte gOcarinaStates
_08076B98: .4byte gPlayerEntity

	thumb_func_start OcarinaUse
OcarinaUse: @ 0x08076B9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08076BB4 @ =gPlayerState
	ldrb r0, [r3, #0xc]
	cmp r0, #0x18
	bne _08076BB8
	adds r0, r4, #0
	bl sub_08077E78
	b _08076C1C
	.align 2, 0
_08076BB4: .4byte gPlayerState
_08076BB8:
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r1, _08076C20 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x18]
	subs r0, #0x45
	ands r0, r2
	strb r0, [r1, #0x18]
    
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]

	adds r1, #0x7a
	movs r0, #2
	strh r0, [r1]

	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r3, #0x30]

	adds r1, r3, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]

	ldr r1, _08076C24 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]

	movs r1, #8
	asrs r1, r5
    
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]

	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]

	bl sub_08078F60

	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38

	ldr r0, _08076C28 @ =0x00000216
	bl PlaySFX

	bl sub_0805E544

_08076C1C:
	pop {r4, r5, pc}
	.align 2, 0
_08076C20: .4byte gPlayerEntity
_08076C24: .4byte gUnk_02034490
_08076C28: .4byte 0x00000216

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
