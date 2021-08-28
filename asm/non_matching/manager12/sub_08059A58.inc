	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08059AC4 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059AD4
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059AC8 @ =gUnk_08108398
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059A80
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059A80:
	adds r4, r5, #0
	adds r4, #0x21
	ldr r3, _08059ACC @ =gUnk_081083AE
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AA6
	ldrb r1, [r4]
	movs r0, #1
	bl sub_08059CC0
	ldrb r0, [r4]
	cmp r0, #2
	bne _08059AA6
	bl sub_08059B18
_08059AA6:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059AD0 @ =gUnk_081083C4
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
	b _08059B0C
	.align 2, 0
_08059AC4: .4byte gRoomControls
_08059AC8: .4byte gUnk_08108398
_08059ACC: .4byte gUnk_081083AE
_08059AD0: .4byte gUnk_081083C4
_08059AD4:
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059B10 @ =gUnk_081083DA
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AF0
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059AF0:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059B14 @ =gUnk_081083F2
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
_08059B0C:
	pop {r4, r5, pc}
	.align 2, 0
_08059B10: .4byte gUnk_081083DA
_08059B14: .4byte gUnk_081083F2
	.syntax divided
