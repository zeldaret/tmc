	.syntax unified
	push {r4, lr}
	bl FlushSprites
	ldr r1, _080A652C @ =gUnk_08128E70
	ldr r4, _080A6530 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r4, #0x2c
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A6522
	bl sub_080A6438
_080A6522:
	bl sub_080A6498
	bl CopyOAM
	pop {r4, pc}
	.align 2, 0
_080A652C: .4byte gUnk_08128E70
_080A6530: .4byte gMenu
	.syntax divided
