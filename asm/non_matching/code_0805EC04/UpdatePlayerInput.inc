	.syntax unified
	push {r4, lr}
	ldr r2, _0805ED50 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r4, r2, #0
	cmp r0, #0
	beq _0805ED88
	adds r1, r4, #0
	adds r1, #0x90
	ldr r2, [r1, #0xc]
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _0805ED7E
	movs r4, #0
	b _0805ED62
	.align 2, 0
_0805ED50: .4byte gPlayerState
_0805ED54:
	cmp r0, #2
	beq _0805ED5E
	strh r3, [r1, #8]
	ldrh r0, [r2, #2]
	strh r0, [r1, #0xa]
_0805ED5E:
	adds r2, #4
	b _0805ED7C
_0805ED62:
	ldrh r3, [r2]
	lsrs r0, r3, #0xe
	cmp r0, #1
	bne _0805ED72
	movs r3, #2
	ldrsh r0, [r2, r3]
	adds r2, r2, r0
	b _0805ED62
_0805ED72:
	cmp r0, #3
	bne _0805ED54
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	movs r2, #0
_0805ED7C:
	str r2, [r1, #0xc]
_0805ED7E:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	b _0805EDCA
_0805ED88:
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #3
	bgt _0805ED98
	cmp r0, #0
	blt _0805ED98
	movs r1, #0
_0805ED98:
	adds r2, r4, #0
	adds r2, #0x8b
	ldrb r0, [r2]
	cmp r0, #1
	beq _0805EDB4
	cmp r0, #1
	bgt _0805EDAC
	cmp r0, #0
	beq _0805EDC6
	b _0805EDCA
_0805EDAC:
	cmp r0, #3
	bgt _0805EDCA
	movs r1, #0
	b _0805EDCA
_0805EDB4:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0805EDF8 @ =gInput
	ldrh r0, [r0]
	bl ConvInputToState
	adds r1, r4, #0
	adds r1, #0x90
	strh r0, [r1]
_0805EDC6:
	ldr r0, _0805EDF8 @ =gInput
	ldrh r1, [r0]
_0805EDCA:
	adds r0, r1, #0
	bl ConvInputToState
	ldr r3, _0805EDFC @ =gPlayerState
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r1]
	strh r0, [r1]
	adds r1, r0, #0
	bics r1, r2
	adds r2, r3, #0
	adds r2, #0x92
	strh r1, [r2]
	ldr r2, _0805EE00 @ =gUnk_08109202
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	lsrs r1, r1, #8
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	pop {r4, pc}
	.align 2, 0
_0805EDF8: .4byte gInput
_0805EDFC: .4byte gPlayerState
_0805EE00: .4byte gUnk_08109202
	.syntax divided
