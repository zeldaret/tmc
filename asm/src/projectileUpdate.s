	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start ProjectileUpdate
ProjectileUpdate: @ 0x08016AE4
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r2, [r0, #0xc]
	cmp r2, #0
	bne _08016AFC
	bl ProjectileInit
	cmp r0, #0
	bne _08016B0A
	bl DeleteThisEntity
_08016AFC:
	bl EntityDisabled
	cmp r0, #0
	bne _08016B22
	adds r0, r4, #0
	bl sub_080028E0
_08016B0A:
	adds r0, r4, #0
	ldrb r1, [r0, #9]
	lsls r1, r1, #2
	ldr r2, _08016B2C @ =gProjectileFunctions
	ldr r1, [r2, r1]
	bl _call_via_r1
	movs r1, #0x41
	movs r3, #0x7f
	ldrb r2, [r4, r1]
	ands r2, r3
	strb r2, [r4, r1]
_08016B22:
	adds r0, r4, #0
	bl DrawEntity
	pop {r3, r4}
	bx r3
	.align 2, 0
_08016B2C: .4byte gProjectileFunctions
