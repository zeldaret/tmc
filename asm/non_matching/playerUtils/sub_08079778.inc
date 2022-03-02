	.syntax unified
	push {lr}
	ldr r0, _08079790 @ =gPlayerState
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807979C
	ldr r2, _08079794 @ =gUnk_0811C108
	ldr r1, _08079798 @ =gPlayerEntity
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	b _080797A4
	.align 2, 0
_08079790: .4byte gPlayerState
_08079794: .4byte gUnk_0811C108
_08079798: .4byte gPlayerEntity
_0807979C:
	ldr r2, _080797BC @ =gUnk_0811C108
	ldr r1, _080797C0 @ =gPlayerEntity
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #2
_080797A4:
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0
	ldrh r0, [r1, #0x2a]
	ands r0, r2
	cmp r2, r0
	bne _080797B6
	movs r3, #1
_080797B6:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797BC: .4byte gUnk_0811C108
_080797C0: .4byte gPlayerEntity
	.syntax divided
