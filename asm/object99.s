	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809E42C
sub_0809E42C: @ 0x0809E42C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0809E444
	bl sub_0805E780
_0809E444:
	ldrb r0, [r4, #0xc]
	movs r1, #0x76
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x62
	movs r2, #0x74
	adds r2, r2, r4
	mov sb, r2
	adds r5, r4, #0
	adds r5, #0x63
	movs r1, #0x75
	adds r1, r1, r4
	mov sl, r1
	cmp r0, #0
	bne _0809E482
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r6, #0x14]
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r7]
	mov r1, sb
	strb r0, [r1]
	ldrb r0, [r5]
	mov r2, sl
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
_0809E482:
	ldrb r0, [r6, #0x14]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809E490
	bl sub_0805E780
_0809E490:
	ldrb r1, [r6, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA6C
	mov r2, sb
	ldrb r0, [r2]
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r7]
	mov r2, sl
	ldrb r0, [r2]
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	beq _0809E4D0
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	ldrb r0, [r5]
	subs r0, #1
	b _0809E4DA
_0809E4D0:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	ldrb r0, [r5]
	adds r0, #1
_0809E4DA:
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E4F4
	bl sub_0805E780
_0809E4F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
