	.syntax unified
	push {lr}
	ldr r2, _08077920 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08077924 @ =0x000400A0
	ands r0, r1
	cmp r0, #0
	bne _0807791C
	ldr r0, _08077928 @ =gPlayerEntity
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080778FA
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _080778FA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807791C
_080778FA:
	bl sub_080789A8
	cmp r0, #0
	bne _08077910
	ldr r0, _08077920 @ =gPlayerState
	adds r0, #0x90
	ldrh r1, [r0]
	ldr r0, _0807792C @ =0x00000F03
	ands r0, r1
	cmp r0, #0
	bne _0807791C
_08077910:
	movs r0, #0x1b
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	bne _08077930
_0807791C:
	movs r0, #0
	b _08077940
	.align 2, 0
_08077920: .4byte gPlayerState
_08077924: .4byte 0x000400A0
_08077928: .4byte gPlayerEntity
_0807792C: .4byte 0x00000F03
_08077930:
	movs r0, #0x1b
	strb r0, [r1, #1]
	ldr r0, _08077944 @ =gUnk_0811BE48
	ldr r2, _08077948 @ =0x00000145
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #9]
	movs r0, #1
_08077940:
	pop {pc}
	.align 2, 0
_08077944: .4byte gUnk_0811BE48
_08077948: .4byte 0x00000145
	.syntax divided
