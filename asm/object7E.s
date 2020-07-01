	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object7E
Object7E: @ 0x080989F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08098A08
	bl DeleteThisEntity
_08098A08:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08098A44
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08098A38
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08098A44
_08098A38:
	cmp r0, #2
	bne _08098A44
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_08098A44:
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08098A76
	ldr r3, [r4, #0x54]
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #0x1e]
	adds r0, #0x1f
	strb r0, [r4, #0x1e]
_08098A76:
	pop {r4, pc}
