	.syntax unified
	push {r4, r5, lr}
	ldr r2, _08079B60 @ =gPlayerEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #0xa
	beq _08079BD4
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r3, [r0]
	cmp r3, #0
	bne _08079BD4
	ldr r4, _08079B64 @ =gPlayerState
	ldr r1, [r4, #0x30]
	ldr r0, _08079B68 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #0x30]
	adds r0, r2, #0
	adds r0, #0x42
	strb r3, [r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08079BD4
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079B6C
	bl RespawnPlayer
	b _08079BC0
	.align 2, 0
_08079B60: .4byte gPlayerEntity
_08079B64: .4byte gPlayerState
_08079B68: .4byte 0xFEFFFFFF
_08079B6C:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08079BC0
	movs r3, #0x80
	lsls r3, r3, #5
	ands r3, r1
	cmp r3, #0
	bne _08079BC0
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08079BA6
	ldr r0, [r2, #0x20]
	cmp r0, #0
	ble _08079B8C
	str r3, [r2, #0x20]
_08079B8C:
	ldrb r1, [r4, #2]
	movs r3, #0x41
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08079BD4
	strb r3, [r4, #2]
	movs r0, #0xff
	strb r0, [r2, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0xd]
	b _08079BD4
_08079BA6:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08079BC0
	bl sub_08079D48
	cmp r0, #0
	bne _08079BC0
	ldrb r0, [r4, #0xa]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08079BD4
_08079BC0:
	ldr r2, _08079BD0 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	b _08079BD6
	.align 2, 0
_08079BD0: .4byte gPlayerEntity
_08079BD4:
	movs r0, #1
_08079BD6:
	pop {r4, r5, pc}
	.syntax divided
