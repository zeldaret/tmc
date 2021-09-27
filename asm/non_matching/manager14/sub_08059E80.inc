	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl EntityHasDuplicateID
	cmp r0, #0
	beq _08059E90
	bl DeleteThisEntity
_08059E90:
	adds r1, r4, #0
	adds r1, #0x22
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r2, [r4, #0x20]
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r3, _08059EE4 @ =gScreen
	ldr r0, _08059EE8 @ =0x00001E04
	strh r0, [r3, #0x2c]
	ldrh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x66
	ldr r0, _08059EEC @ =0x00003E48
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x2e]
	strh r2, [r3, #0x30]
	ldr r1, _08059EF0 @ =nullsub_495
	ldr r2, _08059EF4 @ =sub_0805A25C
	adds r0, r4, #0
	bl sub_08052D74
	pop {r4, r5, pc}
	.align 2, 0
_08059EE4: .4byte gScreen
_08059EE8: .4byte 0x00001E04
_08059EEC: .4byte 0x00003E48
_08059EF0: .4byte nullsub_495
_08059EF4: .4byte sub_0805A25C
	.syntax divided
