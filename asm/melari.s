	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Melari
Melari: @ 0x080686D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068700
	ldr r0, _080686FC @ =gUnk_08111530
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _08068706
	.align 2, 0
_080686FC: .4byte gUnk_08111530
_08068700:
	adds r0, r4, #0
	bl sub_08068780
_08068706:
	pop {r4, pc}

	thumb_func_start sub_08068708
sub_08068708: @ 0x08068708
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806872C @ =gUnk_08111520
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08068728
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08078778
_08068728:
	pop {r4, pc}
	.align 2, 0
_0806872C: .4byte gUnk_08111520

	thumb_func_start sub_08068730
sub_08068730: @ 0x08068730
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	blt _08068762
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806875E
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08068762
	adds r0, r4, #0
	bl InitializeAnimation
	b _08068762
_0806875E:
	subs r0, #1
	strb r0, [r4, #0xf]
_08068762:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806877E
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
_0806877E:
	pop {r4, pc}

	thumb_func_start sub_08068780
sub_08068780: @ 0x08068780
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080687D0
	cmp r0, #1
	bgt _08068794
	cmp r0, #0
	beq _0806879A
	b _0806880E
_08068794:
	cmp r0, #2
	beq _08068800
	b _0806880E
_0806879A:
	ldr r1, _080687CC @ =gUnk_08111520
	adds r0, r5, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806887A
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	b _0806880E
	.align 2, 0
_080687CC: .4byte gUnk_08111520
_080687D0:
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080687EA
	movs r0, #0
	strb r1, [r5, #0xc]
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806F118
	b _0806880E
_080687EA:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	adds r0, r5, #0
	bl GetNextFrame
	b _0806880E
_08068800:
	adds r0, r5, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806880E
	movs r0, #1
	strb r0, [r5, #0xc]
_0806880E:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806887A
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08068848
	ldr r4, _08068844 @ =gUnk_0811153E
	bl Random
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl PlaySFX
	b _0806885E
	.align 2, 0
_08068844: .4byte gUnk_0811153E
_08068848:
	ldr r4, _0806887C @ =gUnk_08111538
	bl Random
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08004488
_0806885E:
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0806887A
	movs r2, #0xc0
	lsls r2, r2, #0xd
	ldr r3, _08068880 @ =0xFFF60000
	adds r0, r5, #0
	bl PositionRelative
_0806887A:
	pop {r4, r5, pc}
	.align 2, 0
_0806887C: .4byte gUnk_08111538
_08068880: .4byte 0xFFF60000

	thumb_func_start sub_08068884
sub_08068884: @ 0x08068884
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start Melari_Head
Melari_Head: @ 0x0806889C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r4, r0
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080688E2
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	b _08068906
_080688E2:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetExtraSpriteFrame
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl SetSpriteSubEntryOffsetData2
_08068906:
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08068910
sub_08068910: @ 0x08068910
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08068920
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08068960
_08068920:
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068960
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x30
	bl sub_0806EDD8
	adds r2, r0, #0
	cmp r2, #0
	bge _08068944
	movs r2, #0x10
_08068944:
	adds r0, r2, #0
	bl sub_0806F5A4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r1, r1, r2
	adds r0, r4, #0
	bl InitializeAnimation
_08068960:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068964
sub_08068964: @ 0x08068964
	push {lr}
	movs r0, #0x35
	movs r1, #0
	movs r2, #3
	bl sub_080A7C18
	movs r0, #0x35
	movs r1, #2
	bl sub_0807CAA0
	pop {pc}
	.align 2, 0

	thumb_func_start Melari_Fusion
Melari_Fusion: @ 0x0806897C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080689B4
	ldr r1, _080689B0 @ =gUnk_08111520
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _080689BA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _080689BA
	.align 2, 0
_080689B0: .4byte gUnk_08111520
_080689B4:
	adds r0, r4, #0
	bl GetNextFrame
_080689BA:
	pop {r4, pc}

	thumb_func_start nullsub_502
nullsub_502: @ 0x080689BC
	bx lr
	.align 2, 0
