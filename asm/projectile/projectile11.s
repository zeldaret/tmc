	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile11
Projectile11: @ 0x080A9CA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9CB8
	bl DeleteThisEntity
_080A9CB8:
	ldr r4, _080A9CD0 @ =gUnk_08129B58
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9CD0: .4byte gUnk_08129B58

	thumb_func_start sub_080A9CD4
sub_080A9CD4: @ 0x080A9CD4
	push {lr}
	ldr r2, _080A9CE8 @ =gUnk_08129B70
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9CE8: .4byte gUnk_08129B70

	thumb_func_start nullsub_539
nullsub_539: @ 0x080A9CEC
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9CF0
sub_080A9CF0: @ 0x080A9CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9D0A
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9D0A:
	ldr r0, _080A9D1C @ =gUnk_08129B78
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9D1C: .4byte gUnk_08129B78

	thumb_func_start sub_080A9D20
sub_080A9D20: @ 0x080A9D20
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_540
nullsub_540: @ 0x080A9D28
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9D2C
sub_080A9D2C: @ 0x080A9D2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080A9D64
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xa6
	bne _080A9D56
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _080A9D68 @ =gPlayerEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
_080A9D56:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9D64:
	pop {r4, pc}
	.align 2, 0
_080A9D68: .4byte gPlayerEntity

	thumb_func_start sub_080A9D6C
sub_080A9D6C: @ 0x080A9D6C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, [r0, #0x50]
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_080A9D80
sub_080A9D80: @ 0x080A9D80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r3, _080A9D9C @ =0xFFFF0000
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _080A9DA0 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_080A9D9C: .4byte 0xFFFF0000
_080A9DA0: .4byte 0x0000FFFE
