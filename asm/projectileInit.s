	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	.text

	thumb_func_start GetProjectileDefinition
GetProjectileDefinition: @ 0x080A7D58
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _080A7D78 @ =gProjectileDefinitions
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080A7D7C @ =0x0000FFFF
	cmp r1, r0
	bne _080A7D74
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_080A7D74:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_080A7D78: .4byte gProjectileDefinitions
_080A7D7C: .4byte 0x0000FFFF

	thumb_func_start ProjectileInit
ProjectileInit: @ 0x080A7D80
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A7E4A
	adds r0, r4, #0
	bl GetProjectileDefinition
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl LoadProjectileSprite
	cmp r0, #0
	bne _080A7DA6
	movs r0, #0
	b _080A7E4C
_080A7DA6:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7DC0
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_080A7DC0:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _080A7DE0
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A7DE0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	lsrs r1, r1, #6
	lsls r1, r1, #4
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080A7E14
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_080A7E14:
	ldrb r0, [r5, #9]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	movs r1, #7
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldrb r0, [r5, #0xf]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldrb r1, [r5, #0xb]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_080A7E4A:
	movs r0, #1
_080A7E4C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start LoadProjectileSprite
LoadProjectileSprite: @ 0x080A7E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _080A7EA2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080A7E78
	ldr r0, _080A7E74 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _080A7EA2
	.align 2, 0
_080A7E74: .4byte 0x000003FF
_080A7E78:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A7E92
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl LoadSwapGFX
	b _080A7E9A
_080A7E92:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl LoadFixedGFX
_080A7E9A:
	cmp r0, #0
	bne _080A7EA2
	movs r0, #0
	b _080A7EAC
_080A7EA2:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl LoadObjPalette
	movs r0, #1
_080A7EAC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start IsProjectileOffScreen
IsProjectileOffScreen: @ 0x080A7EB0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _080A7ED8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #0x1e]
	cmp r0, r1
	bhi _080A7ED2
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	ldrh r2, [r2, #0x20]
	cmp r0, r2
	bls _080A7EDC
_080A7ED2:
	movs r0, #1
	b _080A7EDE
	.align 2, 0
_080A7ED8: .4byte gRoomControls
_080A7EDC:
	movs r0, #0
_080A7EDE:
	pop {pc}

	thumb_func_start CreateProjectile
CreateProjectile: @ 0x080A7EE0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetEmptyEntity
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7EFC
	movs r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	adds r0, r4, #0
	movs r1, #5
	bl AppendEntityToList
_080A7EFC:
	adds r0, r4, #0
	pop {r4, r5, pc}
