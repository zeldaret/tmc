	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0x1f
	bhi _080A5F5C
	cmp r4, #0x1c
	blo _080A5F5C
	ldr r0, _080A5F9C @ =gSave
	adds r0, r0, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_080A5F5C:
	lsls r0, r1, #5
	ldr r1, _080A5FA0 @ =0x06010000
	adds r5, r0, r1
	ldr r1, _080A5FA4 @ =gSpriteAnimations_322
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r3, _080A5FA8 @ =gMoreSpritePtrs
	lsls r1, r1, #2
	ldr r0, [r3, #4]
	adds r0, r0, r1
	ldr r2, _080A5FAC @ =0x040000D4
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldr r0, _080A5FB0 @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #7
	blo _080A5FBE
	cmp r4, #8
	bhi _080A5FB4
	ldr r0, _080A5F9C @ =gSave
	adds r0, #0xac
	b _080A5FBC
	.align 2, 0
_080A5F9C: .4byte gSave
_080A5FA0: .4byte 0x06010000
_080A5FA4: .4byte gSpriteAnimations_322
_080A5FA8: .4byte gMoreSpritePtrs
_080A5FAC: .4byte 0x040000D4
_080A5FB0: .4byte 0x84000040
_080A5FB4:
	cmp r4, #0xa
	bhi _080A5FBE
	ldr r0, _080A5FF8 @ =gSave
	adds r0, #0xad
_080A5FBC:
	ldrb r0, [r0]
_080A5FBE:
	cmp r0, #0
	blt _080A5FF6
	movs r1, #0xa
	bl Div
	adds r4, r1, #0
	cmp r0, #9
	ble _080A5FD0
	movs r0, #9
_080A5FD0:
	ldr r1, _080A5FFC @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _080A6000 @ =gUnk_085C4620
	adds r0, r0, r2
	str r0, [r1]
	str r5, [r1, #4]
	ldr r3, _080A6004 @ =0x84000008
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0xa
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
_080A5FF6:
	pop {r4, r5, pc}
	.align 2, 0
_080A5FF8: .4byte gSave
_080A5FFC: .4byte 0x040000D4
_080A6000: .4byte gUnk_085C4620
_080A6004: .4byte 0x84000008
	.syntax divided
