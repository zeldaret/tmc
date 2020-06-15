	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectA6
ObjectA6: @ 0x0809F908
	push {lr}
	ldr r2, _0809F91C @ =gUnk_08124800
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F91C: .4byte gUnk_08124800

	thumb_func_start sub_0809F920
sub_0809F920: @ 0x0809F920
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809F934
	bl DeleteThisEntity
_0809F934:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #5
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0809F960 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	pop {r4, pc}
	.align 2, 0
_0809F960: .4byte gUnk_080FD150

	thumb_func_start sub_0809F964
sub_0809F964: @ 0x0809F964
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0xa1
	bne _0809F9A8
	adds r0, r4, #0
	movs r1, #0x4e
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0809F99A
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfb
	strb r0, [r1]
_0809F99A:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	bl DeleteThisEntity
_0809F9A8:
	pop {r4, pc}
	.align 2, 0
