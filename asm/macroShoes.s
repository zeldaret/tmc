	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080984CC
sub_080984CC: @ 0x080984CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080984E8 @ =gUnk_08123504
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0
_080984E8: .4byte gUnk_08123504

	thumb_func_start sub_080984EC
sub_080984EC: @ 0x080984EC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r2, _08098528 @ =gUnk_081234EC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	bne _08098524
	ldr r0, _0809852C @ =0x00004024
	movs r1, #0x82
	lsls r1, r1, #3
	movs r2, #1
	bl UpdateCollisionLayer
	ldr r0, _08098530 @ =0x00004026
	ldr r1, _08098534 @ =0x00000411
	movs r2, #1
	bl UpdateCollisionLayer
	ldr r0, _08098538 @ =0x00004025
	ldr r1, _0809853C @ =0x00000412
	movs r2, #1
	bl UpdateCollisionLayer
_08098524:
	pop {pc}
	.align 2, 0
_08098528: .4byte gUnk_081234EC
_0809852C: .4byte 0x00004024
_08098530: .4byte 0x00004026
_08098534: .4byte 0x00000411
_08098538: .4byte 0x00004025
_0809853C: .4byte 0x00000412

	thumb_func_start nullsub_532
nullsub_532: @ 0x08098540
	bx lr
	.align 2, 0
