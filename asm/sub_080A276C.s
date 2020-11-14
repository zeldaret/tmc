	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A276C
sub_080A276C: @ 0x080A276C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl sub_0805E744
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2820
	movs r0, #0xc1
	strb r0, [r6, #9]
	movs r0, #6
	mov r8, r0
	mov r1, r8
	strb r1, [r6, #8]
	strb r4, [r6, #0xa]
	strb r7, [r6, #0xb]
	str r5, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #6
	bl AppendEntityToList
	adds r0, r6, #0
	movs r1, #6
	bl PrependEntityToList
	ldr r4, _080A2828 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r6, #0
	bl CopyPosition
	ldr r0, _080A282C @ =gUnk_03003DC0
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080A2830 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	adds r1, r6, #0
	adds r1, #0x69
	strb r0, [r1]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	subs r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, #2
	strb r0, [r1]
	ldr r1, _080A2834 @ =gPlayerState
	ldrb r0, [r1, #7]
	adds r2, r6, #0
	adds r2, #0x6b
	strb r0, [r2]
	ldrb r2, [r1, #0xb]
	adds r0, r6, #0
	adds r0, #0x6c
	strb r2, [r0]
	ldrb r0, [r1, #0xa]
	adds r2, r6, #0
	adds r2, #0x6d
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	ldrb r0, [r1, #0x1a]
	adds r2, #1
	strb r0, [r2]
	ldr r0, [r1, #0x30]
	str r0, [r6, #0x70]
	adds r1, #0x8a
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0x74
	strb r1, [r0]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A2820:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2828: .4byte gPlayerEntity
_080A282C: .4byte gUnk_03003DC0
_080A2830: .4byte gUnk_02034490
_080A2834: .4byte gPlayerState
