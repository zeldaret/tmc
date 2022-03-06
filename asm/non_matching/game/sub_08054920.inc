	.syntax unified
	push {lr}
	bl MessageInitialize
	bl sub_0806F38C
	ldr r1, _08054948 @ =gUnk_080C9CBC
	ldr r0, _0805494C @ =gFuseInfo
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08054954
	ldr r0, _08054950 @ =gUI
	ldrb r1, [r0, #3]
	movs r0, #0xa
	bl MenuFadeIn
	b _08054962
	.align 2, 0
_08054948: .4byte gUnk_080C9CBC
_0805494C: .4byte gFuseInfo
_08054950: .4byte gUI
_08054954:
	ldr r1, _08054964 @ =gUI
	movs r0, #3
	strb r0, [r1]
	movs r0, #7
	movs r1, #0x10
	bl SetFade
_08054962:
	pop {pc}
	.align 2, 0
_08054964: .4byte gUI
	.syntax divided
