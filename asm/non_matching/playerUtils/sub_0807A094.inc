	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r2, #0x16
	ldr r0, _0807A0AC @ =gPlayerState
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0807A0B0
	movs r2, #0x1b
	cmp r0, #0x78
	bls _0807A104
	movs r2, #0x1a
	b _0807A104
	.align 2, 0
_0807A0AC: .4byte gPlayerState
_0807A0B0:
	ldr r0, _0807A0F0 @ =gSave
	adds r1, r0, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _0807A104
	movs r4, #1
	cmp r3, #0
	bne _0807A0D6
	adds r0, #0xc4
	ldrh r1, [r0]
	cmp r1, #0xb3
	bhi _0807A0D6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807A0D6
	movs r4, #0
_0807A0D6:
	cmp r4, #0
	beq _0807A104
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _0807A102
	cmp r0, #0x30
	bgt _0807A0F4
	cmp r0, #0x2f
	beq _0807A0FA
	b _0807A102
	.align 2, 0
_0807A0F0: .4byte gSave
_0807A0F4:
	cmp r0, #0x31
	beq _0807A0FE
	b _0807A102
_0807A0FA:
	movs r2, #0x18
	b _0807A104
_0807A0FE:
	movs r2, #0x17
	b _0807A104
_0807A102:
	movs r2, #0x19
_0807A104:
	adds r0, r2, #0
	pop {r4, r5, pc}
	.syntax divided
