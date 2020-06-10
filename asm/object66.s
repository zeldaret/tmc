	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08094084
sub_08094084: @ 0x08094084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0809412A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080940CA
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_080940CA:
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	movs r0, #0x36
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094108
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0x80
	lsls r2, r2, #2
	b _0809411E
_08094108:
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	adds r0, #0x40
	lsls r2, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	subs r3, r1, r2
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	subs r2, r1, r0
_0809411E:
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0809412E
_0809412A:
	bl sub_0805E780
_0809412E:
	pop {r4, r5, pc}
