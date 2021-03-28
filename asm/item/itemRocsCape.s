	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemRocsCape
ItemRocsCape: @ 0x08076640
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08076654
	adds r0, r3, #0
	bl sub_08076758
	b _08076754
_08076654:
	ldr r0, _080766BC @ =gPlayerState
	ldr r1, [r0, #0x2c]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807674C
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080766C4
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r0, [r2, #0x12]
	cmp r0, #0x12
	beq _08076678
	cmp r0, #1
	bne _08076686
_08076678:
	ldr r0, _080766C0 @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076686
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076686:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076694
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08076710
_08076694:
	ldr r5, _080766C0 @ =gPlayerEntity
	ldr r0, [r5, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r1, #0
	strb r1, [r2, #1]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	strb r1, [r2, #0xb]
	movs r0, #1
	strb r0, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #0xe]
	str r1, [r2, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	b _0807673C
	.align 2, 0
_080766BC: .4byte gPlayerState
_080766C0: .4byte gPlayerEntity
_080766C4:
	ldrb r0, [r2, #0x1b]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	ldrb r1, [r2, #4]
	orrs r0, r1
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #0x1c]
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r1, [r2, #0x12]
	adds r0, r1, #0
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080766F4
	cmp r1, #1
	bne _08076702
_080766F4:
	ldr r0, _0807671C @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076702
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076702:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076720
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08076720
_08076710:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08076758
	b _08076754
	.align 2, 0
_0807671C: .4byte gPlayerEntity
_08076720:
	ldr r1, _08076748 @ =gPlayerEntity
	ldr r0, [r1, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #2]
	str r1, [r2, #0x2c]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
_0807673C:
	bl sub_08077F84
	movs r0, #0x78
	bl SoundReq
	b _08076754
	.align 2, 0
_08076748: .4byte gPlayerEntity
_0807674C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
_08076754:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08076758
sub_08076758: @ 0x08076758
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080767C0 @ =gPlayerState
	movs r0, #0
	strb r0, [r5, #0xe]
	ldrb r2, [r5, #2]
	movs r0, #0x28
	ands r0, r2
	cmp r0, #0
	bne _080767F8
	cmp r2, #0
	beq _080767F8
	movs r0, #7
	ands r0, r2
	cmp r0, #3
	beq _080767F8
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080767D8
	ldrb r0, [r4, #4]
	cmp r0, #1
	bhi _080767C8
	ldr r2, _080767C4 @ =gPlayerEntity
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bgt _080767FE
	ldrb r3, [r5, #2]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	bne _080767FE
	movs r0, #2
	strb r0, [r4, #4]
	adds r1, r2, #0
	adds r1, #0x7a
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r5, #2]
	movs r0, #0xa2
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0xb9
	lsls r0, r0, #1
	bl SoundReq
	b _080767FE
	.align 2, 0
_080767C0: .4byte gPlayerState
_080767C4: .4byte gPlayerEntity
_080767C8:
	ldr r1, _080767D4 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080767FE
	.align 2, 0
_080767D4: .4byte gPlayerEntity
_080767D8:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bls _080767FE
	ldr r1, _080767F4 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5, #2]
	b _080767FE
	.align 2, 0
_080767F4: .4byte gPlayerEntity
_080767F8:
	adds r0, r4, #0
	bl sub_08077E78
_080767FE:
	pop {r4, r5, pc}
