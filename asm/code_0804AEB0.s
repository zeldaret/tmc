	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0804AEB0
sub_0804AEB0: @ 0x0804AEB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r6, #1]
	movs r1, #0xf
	adds r2, r1, #0
	ands r2, r0
	ldrb r0, [r6]
	adds r4, r1, #0
	ands r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _0804AEF6
	cmp r2, #0xf
	bne _0804AEE0
	ldr r0, _0804AEDC @ =gUnk_081091E4
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl AppendEntityToList
	b _0804AEF6
	.align 2, 0
_0804AEDC: .4byte gUnk_081091E4
_0804AEE0:
	cmp r2, #8
	bne _0804AEEE
	adds r0, r5, #0
	movs r1, #8
	bl AppendEntityToList
	b _0804AEF6
_0804AEEE:
	adds r0, r5, #0
	adds r1, r2, #0
	bl AppendEntityToList
_0804AEF6:
	adds r1, r5, #0
	adds r1, #0x78
	cmp r4, #9
	bne _0804AF00
	subs r1, #0x48
_0804AF00:
	adds r0, r6, #0
	movs r2, #0x10
	bl sub_0801D66C
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804AF0C
sub_0804AF0C: @ 0x0804AF0C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #1]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x20
	beq _0804AF40
	cmp r1, #0x20
	bgt _0804AF26
	cmp r1, #0
	beq _0804AF2C
	b _0804AF88
_0804AF26:
	cmp r1, #0x40
	beq _0804AF64
	b _0804AF88
_0804AF2C:
	ldr r0, _0804AF3C @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r3, [r2, #8]
	adds r1, r1, r3
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #8]
	b _0804AF58
	.align 2, 0
_0804AF3C: .4byte gRoomControls
_0804AF40:
	adds r3, r4, #0
	adds r3, #0x6d
	ldrb r1, [r3]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0804AF60 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r2, #8]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
_0804AF58:
	ldrh r2, [r2, #0xa]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	b _0804AF88
	.align 2, 0
_0804AF60: .4byte gRoomControls
_0804AF64:
	ldr r1, _0804AF8C @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r2, #8]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r1, [r2, #0xc]
	adds r0, r4, #0
	bl StartCutscene
	cmp r0, #0
	bne _0804AF88
	adds r0, r4, #0
	bl DeleteEntity
_0804AF88:
	pop {r4, pc}
	.align 2, 0
_0804AF8C: .4byte gRoomControls

	thumb_func_start sub_0804AF90
sub_0804AF90: @ 0x0804AF90
	push {lr}
	ldr r0, _0804AFA8 @ =gArea
	ldr r1, _0804AFAC @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl sub_0804AFB0
	bl sub_080A7C7C
	pop {pc}
	.align 2, 0
_0804AFA8: .4byte gArea
_0804AFAC: .4byte 0x0000085C

	thumb_func_start sub_0804AFB0
sub_0804AFB0: @ 0x0804AFB0
	push {r4, lr}
	ldr r1, _0804AFD4 @ =gUnk_02017654
	str r0, [r1]
	movs r2, #0
	ldr r0, _0804AFD8 @ =gRoomVars
	adds r3, r1, #0
	adds r4, r0, #0
	adds r4, #0x6c
_0804AFC0:
	lsls r0, r2, #2
	ldr r1, [r3]
	adds r0, r0, r1
	ldr r0, [r0]
	stm r4!, {r0}
	adds r2, #1
	cmp r2, #7
	bls _0804AFC0
	pop {r4, pc}
	.align 2, 0
_0804AFD4: .4byte gUnk_02017654
_0804AFD8: .4byte gRoomVars

	thumb_func_start sub_0804AFDC
sub_0804AFDC: @ 0x0804AFDC
	push {r4, lr}
	movs r4, #1
	movs r0, #6
	bl GetCurrentRoomProperty
	cmp r0, #0
	beq _0804AFF0
	bl _call_via_r0
	adds r4, r0, #0
_0804AFF0:
	adds r0, r4, #0
	pop {r4, pc}
