	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807BC28 @ =gMetatileTypesBottom
	mov sl, r0
	ldr r0, _0807BC2C @ =gMetatileTypesTop
	mov sb, r0
	ldr r5, _0807BC30 @ =0xFFFFB000
	add r5, sl
	ldr r4, _0807BC30 @ =0xFFFFB000
	add r4, sb
	ldr r2, _0807BC34 @ =0xFFFFD000
	add r2, sl
	ldr r1, _0807BC34 @ =0xFFFFD000
	add r1, sb
	movs r3, #0
	ldr r0, _0807BC38 @ =0x00003FFF
	mov r8, r0
	ldr r0, _0807BC3C @ =gUnk_080B3E80
	mov ip, r0
	ldr r7, _0807BC40 @ =gUnk_080B79A7
	ldr r6, _0807BC44 @ =0xFFFFC000
_0807BC14:
	ldrh r0, [r5]
	adds r5, #2
	cmp r0, r8
	bhi _0807BC48
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	add r0, ip
	b _0807BC4C
	.align 2, 0
_0807BC28: .4byte gMetatileTypesBottom
_0807BC2C: .4byte gMetatileTypesTop
_0807BC30: .4byte 0xFFFFB000
_0807BC34: .4byte 0xFFFFD000
_0807BC38: .4byte 0x00003FFF
_0807BC3C: .4byte gUnk_080B3E80
_0807BC40: .4byte gUnk_080B79A7
_0807BC44: .4byte 0xFFFFC000
_0807BC48:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC4C:
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	ldrh r0, [r4]
	adds r4, #2
	cmp r0, r8
	bhi _0807BC64
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	add r0, ip
	b _0807BC68
_0807BC64:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC68:
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	ldr r0, _0807BC80 @ =0x00000FFF
	cmp r3, r0
	bls _0807BC14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BC80: .4byte 0x00000FFF
	.syntax divided
