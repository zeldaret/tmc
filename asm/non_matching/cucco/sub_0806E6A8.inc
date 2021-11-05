	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_08002632
	ldr r1, _0806E6D4 @ =gSave
	ldr r2, _0806E6D8 @ =0x000001C1
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xf3
	bne _0806E6C2
	movs r5, #1
_0806E6C2:
	ldr r0, _0806E6DC @ =gUnk_081145D0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl MessageNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806E6D4: .4byte gSave
_0806E6D8: .4byte 0x000001C1
_0806E6DC: .4byte gUnk_081145D0
	.syntax divided
