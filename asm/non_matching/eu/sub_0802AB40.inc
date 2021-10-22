.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802ABA6
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802AB90
	movs r0, #5
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	b _0802ABBA
_0802AB90:
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	b _0802ABBA
_0802ABA6:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _0802ABBA
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802ACDC
_0802ABBA:
	pop {r4, pc}
.syntax divided
