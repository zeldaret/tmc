	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start DeathFx
DeathFx: @ 0x0808161C
	push {lr}
	ldr r2, _08081630 @ =gUnk_0811EBFC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08081630: .4byte gUnk_0811EBFC

	thumb_func_start sub_08081634
DeathFx_Action0: @ 0x08081634
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808169C
	movs r5, #0
	movs r0, #0x65
	strh r0, [r4, #0x12]
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r5, [r4, #0x15]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xe]
	movs r2, #0x80
	cmp r0, #0
	beq _08081674
	adds r2, r0, #0
	strb r5, [r4, #0xe]
_08081674:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl LoadSwapGFX
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	ldr r0, _08081698 @ =0x00000129
	bl SoundReq
	b _0808170C
	.align 2, 0
_08081698: .4byte 0x00000129
_0808169C:
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080816B2
	adds r0, r4, #0
	bl sub_08081790
	adds r0, r4, #0
	bl sub_0808180C
	b _08081702
_080816B2:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080816C4
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08081702
_080816C4:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08081718 @ =gUnk_0811EC08
	ldrb r0, [r4, #0xa]
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r0, [r4, #0xa]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	asrs r2, r0
	ands r2, r1
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080816FA
	ldr r0, _0808171C @ =gUnk_0811EC20
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xe]
_080816FA:
	adds r0, r4, #0
	adds r1, r2, #0
	bl InitializeAnimation
_08081702:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	bl EnqueueSFX
_0808170C:
	adds r0, r4, #0
	movs r1, #3
	bl SetDefaultPriority
	pop {r4, r5, pc}
	.align 2, 0
_08081718: .4byte gUnk_0811EC08
_0808171C: .4byte gUnk_0811EC20

	thumb_func_start sub_08081720
DeathFx_Action1: @ 0x08081720
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08081744
	adds r0, r4, #0
	bl sub_08081790
	adds r0, r4, #0
	bl sub_0808180C
	b _0808175E
_08081744:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808175E
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0808175E:
	pop {r4, pc}

	thumb_func_start sub_08081760
DeathFx_Action2: @ 0x08081760
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808177E
	adds r0, r4, #0
	bl sub_0808180C
	b _0808178C
_0808177E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808178C
	adds r0, r4, #0
	bl LinearMoveUpdate
_0808178C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081790
sub_08081790: @ 0x08081790
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0xef
	bhi _080817B4
	ldr r0, _080817B0 @ =gUnk_0811EC64
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r2, #0
	bl CreateRandomItemDrop
	b _080817C6
	.align 2, 0
_080817B0: .4byte gUnk_0811EC64
_080817B4:
	ldr r0, _080817C8 @ =gUnk_0811EC24
	ldrb r1, [r1]
	subs r1, #0xf0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080817C6:
	pop {pc}
	.align 2, 0
_080817C8: .4byte gUnk_0811EC24

	thumb_func_start sub_080817CC
DeathFx_DropRandom9: @ 0x080817CC
	push {lr}
	movs r1, #9
	bl CreateRandomItemDrop
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817D8
DeathFx_DropRandom13: @ 0x080817D8
	push {lr}
	movs r1, #0xd
	bl CreateRandomItemDrop
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817E4
DeathFx_DropRandom14: @ 0x080817E4
	push {lr}
	movs r1, #0xe
	bl CreateRandomItemDrop
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817F0
DeathFx_DropRandom1: @ 0x080817F0
	push {lr}
	movs r1, #1
	bl CreateRandomItemDrop
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080817FC
DeathFx_DropFixedItem: @ 0x080817FC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	movs r2, #0
	bl CreateItemDrop
	pop {pc}

	thumb_func_start sub_0808180C
DeathFx_Delete: @ 0x0808180C
	push {lr}
	bl DeleteThisEntity
	pop {pc}
