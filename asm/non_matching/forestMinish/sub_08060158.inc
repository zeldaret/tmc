	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806016A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080601CC
_0806016A:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _08060188
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	lsls r3, r0, #2
_08060188:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _080601D0 @ =gUnk_08109C98
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _080601AC
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_080601AC:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x5a
	strb r6, [r0]
	strb r5, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	strb r7, [r0]
	subs r1, #2
	movs r0, #0xf0
	strb r0, [r1]
_080601CC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080601D0: .4byte gUnk_08109C98
    .syntax divided