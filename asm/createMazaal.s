	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08033F3C
sub_08033F3C: @ 0x08033F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033F64 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08033FFA
	ldr r0, _08033F68 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033F6C
	adds r0, r4, #0
	bl sub_08034420
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	b _08033F70
	.align 2, 0
_08033F64: .4byte gUnk_03003DBC
_08033F68: .4byte gUnk_030010A0
_08033F6C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08033F70:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	movs r0, #0x36
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r4, [r5, #0x50]
	movs r0, #0x7e
	movs r1, #0
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	ldr r0, _08033FD0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r1, [r0]
	cmp r1, #0
	bne _08033FD4
	movs r0, #0xd
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0xfc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08033FFA
	.align 2, 0
_08033FD0: .4byte gUnk_030010A0
_08033FD4:
	movs r0, #0x44
	movs r1, #0
	bl CreateEnemy
	str r4, [r0, #0x50]
	str r4, [r0, #0x78]
	str r0, [r4, #0x74]
	movs r0, #0x44
	movs r1, #1
	bl CreateEnemy
	str r4, [r0, #0x50]
	str r5, [r0, #0x78]
	str r0, [r4, #0x78]
	movs r0, #0x36
	movs r1, #4
	bl CreateEnemy
	str r4, [r0, #0x50]
_08033FFA:
	pop {r4, r5, pc}