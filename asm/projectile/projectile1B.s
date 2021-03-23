	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile1B
Projectile1B: @ 0x080AB510
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB528 @ =gUnk_0812A58C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB528: .4byte gUnk_0812A58C

	thumb_func_start sub_080AB52C
sub_080AB52C: @ 0x080AB52C
	push {lr}
	ldr r2, _080AB540 @ =gUnk_0812A5A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB540: .4byte gUnk_0812A5A0

	thumb_func_start sub_080AB544
sub_080AB544: @ 0x080AB544
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB57C
	movs r1, #2
	movs r0, #2
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0xa]
	eors r1, r0
	lsls r1, r1, #3
	ldrb r0, [r2, #0x15]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bhi _080AB576
	strb r1, [r2, #0x15]
_080AB576:
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
_080AB57C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB580
sub_080AB580: @ 0x080AB580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldr r1, _080AB598 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	ldrb r1, [r0, #0xa]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_080AB598: .4byte 0x0000FFFC

	thumb_func_start sub_080AB59C
sub_080AB59C: @ 0x080AB59C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AB5BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080AB5BC:
	adds r0, r4, #0
	bl sub_080AB5F4
	pop {r4, pc}

	thumb_func_start sub_080AB5C4
sub_080AB5C4: @ 0x080AB5C4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_080AB634
	cmp r0, #0
	bne _080AB5F0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AB5F0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080AB5F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB5F4
sub_080AB5F4: @ 0x080AB5F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _080AB61A
	cmp r0, #2
	bhi _080AB60A
	cmp r0, #1
	beq _080AB610
	b _080AB62E
_080AB60A:
	cmp r0, #3
	beq _080AB624
	b _080AB62E
_080AB610:
	adds r0, r4, #0
	bl CreateItemOnGround
	movs r0, #1
	b _080AB630
_080AB61A:
	adds r0, r4, #0
	bl sub_080043A8
	movs r0, #1
	b _080AB630
_080AB624:
	adds r0, r4, #0
	bl CreateChestSpawner
	movs r0, #1
	b _080AB630
_080AB62E:
	movs r0, #0
_080AB630:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB634
sub_080AB634: @ 0x080AB634
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	movs r5, #0
	adds r4, r0, #0
	adds r4, #0x20
_080AB640:
	ldr r1, [r4]
	cmp r1, #0
	beq _080AB684
	adds r0, r6, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080AB684
	ldr r1, [r4]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bhi _080AB67A
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r2, [r4]
	ldrb r0, [r2, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4]
	movs r1, #0x45
	movs r2, #0
	bl CreateFx
_080AB67A:
	adds r0, r6, #0
	bl DeleteEntity
	movs r0, #1
	b _080AB68E
_080AB684:
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _080AB640
	movs r0, #0
_080AB68E:
	pop {r4, r5, r6, pc}
