	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Windcrest
Windcrest: @ 0x080A20FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A2114
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0807DD64
_080A2114:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	pop {r4, pc}

	thumb_func_start sub_080A2124
sub_080A2124: @ 0x080A2124
	push {lr}
	ldr r3, _080A2134 @ =gUnk_08125010
	movs r1, #1
	movs r2, #0xe
	bl sub_08078850
	pop {pc}
	.align 2, 0
_080A2134: .4byte gUnk_08125010

	thumb_func_start sub_080A2138
sub_080A2138: @ 0x080A2138
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	bl PlaySFX
	ldr r2, _080A2160 @ =gUnk_02002A40
	ldrb r0, [r4, #0xb]
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	adds r0, r4, #0
	movs r1, #0x46
	movs r2, #0
	bl CreateFx
	pop {r4, pc}
	.align 2, 0
_080A2160: .4byte gUnk_02002A40
