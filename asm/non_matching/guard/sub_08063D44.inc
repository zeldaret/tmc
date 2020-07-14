	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08063DA0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _08063DC6
	ldrb r0, [r4, #9]
	movs r1, #0x15
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	ldr r0, _08063DA4 @ =gUnk_0810F524
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08063DC6
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	ldr r0, _08063DA8 @ =gUnk_0810F6BC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806EE04
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _08063DB6
	cmp r0, #3
	bgt _08063DAC
	movs r0, #0xc
	bl sub_080A7EE0
	str r4, [r0, #0x50]
	movs r1, #0x3c
	strb r1, [r0, #0xf]
	b _08063DB6
	.align 2, 0
_08063DA0: .4byte gUnk_03003DBC
_08063DA4: .4byte gUnk_0810F524
_08063DA8: .4byte gUnk_0810F6BC
_08063DAC:
	cmp r0, #5
	bgt _08063DB6
	adds r0, r4, #0
	bl sub_08078778
_08063DB6:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08063DC8
_08063DC6:
	pop {r4, pc}
	.syntax divided