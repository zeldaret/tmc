	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #3
.ifdef JP
	movs r0, #0xd7
.else
.ifdef EU
	movs r0, #0xd7
.else
	movs r0, #0xda
.endif
.endif
	bl CheckLocalFlag
	cmp r0, #0
	bne _08063896
	movs r4, #0
.ifdef JP
	movs r0, #0xd7
.else
.ifdef EU
	movs r0, #0xd7
.else
	movs r0, #0xda
.endif
.endif
	bl SetLocalFlag
	b _080638D6
_08063896:
.ifdef JP
	movs r0, #0xce
.else
.ifdef EU
	movs r0, #0xce
.else
	movs r0, #0xd1
.endif
.endif
	bl CheckLocalFlag
	cmp r0, #0
	bne _080638D6
	movs r5, #0
	movs r4, #1
_080638A4:
	ldr r0, _080638F8 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl ReadBit
	cmp r0, #0
	beq _080638B2
	adds r5, #1
_080638B2:
	adds r4, #1
	cmp r4, #0x82
	ble _080638A4
	movs r4, #1
	cmp r5, #0x81
	ble _080638D6
	movs r4, #2
.ifdef JP
	movs r0, #0xce
.else
.ifdef EU
	movs r0, #0xce
.else
	movs r0, #0xd1
.endif
.endif
	bl SetLocalFlag
	ldr r0, _080638FC @ =0x00000A17
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08063900 @ =0x00000A57
	movs r1, #1
	bl sub_0807BA8C
_080638D6:
	ldr r0, _08063904 @ =gSave
	ldrb r0, [r0, #8]
	subs r1, r0, #6
	cmp r1, #0
	bge _080638E2
	movs r1, #0
_080638E2:
	ldr r2, _08063908 @ =gUnk_0810CBE4
	lsls r0, r4, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_080638F8: .4byte gUnk_02002B0E
_080638FC: .4byte 0x00000A17
_08063900: .4byte 0x00000A57
_08063904: .4byte gSave
_08063908: .4byte gUnk_0810CBE4
	.syntax divided
