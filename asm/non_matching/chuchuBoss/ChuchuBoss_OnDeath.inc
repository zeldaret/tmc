	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	bne _08025DA4
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	beq _08025CFE
	movs r0, #0xc
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r3, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl InitAnimationForceUpdate
	b _08025D9C
_08025CFE:
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08025D10
	cmp r0, #1
	beq _08025D28
	b _08025D9C
_08025D10:
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	ldr r0, [r5]
	movs r1, #1
	strb r1, [r0, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x78
	strb r0, [r1]
	b _08025D9C
_08025D28:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08025D84
	ldr r1, [r4, #0x54]
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x68]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x68]
	adds r0, #0x45
	strb r3, [r0]
	adds r1, #0x45
	strb r3, [r1]
	adds r2, #0x45
	strb r3, [r2]
	ldr r0, _08025D80 @ =gPauseMenuOptions
	strb r3, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	adds r0, r4, #0
	bl GenericDeath
	b _08025D9C
	.align 2, 0
_08025D80: .4byte gPauseMenuOptions
_08025D84:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x3f
	cmp r0, #0x50
	bhi _08025D96
	movs r1, #0xf
	cmp r0, #0x1e
	bls _08025D96
	movs r1, #0x1f
_08025D96:
	adds r0, r4, #0
	bl sub_08027C7C
_08025D9C:
	adds r0, r4, #0
	bl sub_08027870
	b _08025DBC
_08025DA4:
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025DBC
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_08025DBC:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
