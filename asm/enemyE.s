	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08022FA4
sub_08022FA4: @ 0x08022FA4
	push {lr}
	ldr r1, _08022FB0 @ =gUnk_080CBBC8
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_08022FB0: .4byte gUnk_080CBBC8

	thumb_func_start sub_08022FB4
sub_08022FB4: @ 0x08022FB4
	push {lr}
	ldr r2, _08022FC8 @ =gUnk_080CBBDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022FC8: .4byte gUnk_080CBBDC

	thumb_func_start nullsub_133
nullsub_133: @ 0x08022FCC
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FD0
sub_08022FD0: @ 0x08022FD0
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	movs r1, #0
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FEC
sub_08022FEC: @ 0x08022FEC
	push {lr}
	movs r1, #0x80
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FF8
sub_08022FF8: @ 0x08022FF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FFC
sub_08022FFC: @ 0x08022FFC
	bx lr
	.align 2, 0

	thumb_func_start sub_08023000
sub_08023000: @ 0x08023000
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x80
	bne _0802300E
	bl UpdateAnimationSingleFrame
	b _08023014
_0802300E:
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08023014:
	movs r2, #0x80
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _08023022
	rsbs r2, r2, #0
_08023022:
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x80
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
