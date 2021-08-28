	.syntax unified
	push {r4, lr}
	ldr r0, _08059D68 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059D78
	ldr r0, _08059D6C @ =gUnk_08108398
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D36
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D36:
	ldr r0, _08059D70 @ =gUnk_081083AE
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D52
	movs r0, #1
	adds r1, r4, #0
	bl sub_08059CC0
	cmp r4, #2
	bne _08059D52
	bl sub_08059B18
_08059D52:
	ldr r0, _08059D74 @ =gUnk_081083C4
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
	b _08059DA0
	.align 2, 0
_08059D68: .4byte gRoomControls
_08059D6C: .4byte gUnk_08108398
_08059D70: .4byte gUnk_081083AE
_08059D74: .4byte gUnk_081083C4
_08059D78:
	ldr r0, _08059DA4 @ =gUnk_081083DA
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D8C
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D8C:
	ldr r0, _08059DA8 @ =gUnk_081083F2
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
_08059DA0:
	pop {r4, pc}
	.align 2, 0
_08059DA4: .4byte gUnk_081083DA
_08059DA8: .4byte gUnk_081083F2
	.syntax divided
