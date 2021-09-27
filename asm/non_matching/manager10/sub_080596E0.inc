	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08059730 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080596FC
	ldr r0, _08059734 @ =gScreen
	ldrh r1, [r0, #0x16]
	adds r1, #8
	movs r2, #0x1f
	ands r1, r2
	strh r1, [r0, #0x16]
_080596FC:
	bl sub_0805986C
	cmp r0, #0
	beq _08059740
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #2
	beq _08059764
	movs r0, #1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r2]
	ldr r0, _08059738 @ =gUnk_08108390
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xe]
	ldr r0, _0805973C @ =gUnk_0200B650
	str r1, [r0]
	b _08059764
	.align 2, 0
_08059730: .4byte gScreenTransition
_08059734: .4byte gScreen
_08059738: .4byte gUnk_08108390
_0805973C: .4byte gUnk_0200B650
_08059740:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #5
	beq _08059764
	movs r0, #2
	strb r0, [r5]
	ldr r1, _08059774 @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
_08059764:
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08059778
	cmp r0, #2
	beq _080597A8
	b _080597D0
	.align 2, 0
_08059774: .4byte gUnk_08108390
_08059778:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080597D0
	ldr r1, _080597A4 @ =gUnk_08108390
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080597D0
	strb r5, [r6]
	b _080597D0
	.align 2, 0
_080597A4: .4byte gUnk_08108390
_080597A8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080597D0
	ldr r1, _080597EC @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #5
	bne _080597D0
	strb r6, [r5]
_080597D0:
	ldr r3, _080597F0 @ =gRoomVars
	ldrb r1, [r2]
	ldrb r0, [r3, #0x10]
	cmp r0, r1
	beq _08059838
	strb r1, [r3, #0x10]
	ldrb r0, [r2]
	cmp r0, #4
	beq _08059800
	cmp r0, #4
	ble _080597F4
	cmp r0, #5
	beq _08059824
	b _08059838
	.align 2, 0
_080597EC: .4byte gUnk_08108390
_080597F0: .4byte gRoomVars
_080597F4:
	cmp r0, #0
	blt _08059838
	adds r0, #0x2b
	bl LoadGfxGroup
	b _08059838
_08059800:
	ldr r4, _0805981C @ =gBG3Buffer
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl MemClear
	ldr r1, _08059820 @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl LoadResourceAsync
	b _08059838
	.align 2, 0
_0805981C: .4byte gBG3Buffer
_08059820: .4byte 0x0600E800
_08059824:
	ldr r0, _0805983C @ =gUnk_0200B650
	ldr r1, _08059840 @ =gBG1Settings
	str r1, [r0]
	subs r1, #0x14
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
_08059838:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805983C: .4byte gUnk_0200B650
_08059840: .4byte gBG1Settings
	.syntax divided
