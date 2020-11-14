	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r3, _08077D94 @ =gPlayerState
	movs r7, #8
	adds r1, r7, #0
	mov r0, r8
	asrs r1, r0
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
	ldr r0, _08077D98 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _08077D6A
	adds r0, #1
	strb r0, [r4, #4]
_08077D6A:
	ldrb r2, [r4, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08077D9C @ =gUnk_0811BE48
	adds r5, r0, r1
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08077DCC
	ldr r0, [r3, #0x30]
	ands r0, r7
	cmp r0, #0
	beq _08077DC4
	cmp r2, #0xd
	beq _08077DB2
	cmp r2, #0xd
	bgt _08077DA0
	cmp r2, #1
	beq _08077DAC
	b _08077DB4
	.align 2, 0
_08077D94: .4byte gPlayerState
_08077D98: .4byte gPlayerEntity
_08077D9C: .4byte gUnk_0811BE48
_08077DA0:
	cmp r2, #0x1b
	bne _08077DB4
	ldr r6, _08077DA8 @ =0x00000948
	b _08077DB4
	.align 2, 0
_08077DA8: .4byte 0x00000948
_08077DAC:
	movs r6, #0x81
	lsls r6, r6, #3
	b _08077DB4
_08077DB2:
	ldr r6, _08077DC0 @ =0x0000040C
_08077DB4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077DF4
	b _08077DCC
	.align 2, 0
_08077DC0: .4byte 0x0000040C
_08077DC4:
	ldrh r1, [r5, #4]
	adds r0, r4, #0
	bl sub_08077DF4
_08077DCC:
	ldrb r0, [r5, #6]
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08077DE8
	ldr r2, _08077DF0 @ =gPlayerState
	movs r0, #8
	mov r1, r8
	asrs r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r2, #4]
	orrs r0, r1
	strb r0, [r2, #4]
_08077DE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08077DF0: .4byte gPlayerState
    .syntax divided
