	.syntax unified
.ifdef EU
	push {r4, r5, r6, lr}
	ldr r0, _080A6100EU @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A60DA
	movs r4, #0x65
_080A60DA:
	ldr r1, _080A6104EU @ =gRoomTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	movs r2, #0xfd
	lsls r2, r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6108 @ =gSave
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A610C @ =gUnk_08128F58
	movs r5, #0
	b _080A612C
	.align 2, 0
_080A6100EU: .4byte gPlayerState
_080A6104EU: .4byte gRoomTransition
_080A6108: .4byte gSave
_080A610C: .4byte gUnk_08128F58
_080A6110:
	movs r0, #1
	lsls r0, r5
	ands r0, r6
	cmp r0, #0
	beq _080A6128EU
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #3]
	movs r2, #0xfd
	lsls r2, r2, #1
	bl sub_080A698C
_080A6128EU:
	adds r5, #1
	adds r4, #8
_080A612C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6110
	movs r5, #0xa
_080A6134:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A616A
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _080A616A
	ldr r1, _080A6174 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	ldrb r0, [r0, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6178EU @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	adds r3, #0x64
	movs r2, #0xfd
	lsls r2, r2, #1
	bl sub_080A698C
_080A616A:
	adds r5, #1
	cmp r5, #0x64
	bls _080A6134
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6174: .4byte gUnk_080C9CBC
_080A6178EU: .4byte gUnk_080FE320
.else
	push {r4, r5, r6, lr}
	ldr r0, _080A690C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A68E6
	movs r4, #0x65
_080A68E6:
	ldr r1, _080A6910 @ =gRoomTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, _080A6914 @ =0x000001FB
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6918 @ =gSave
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A691C @ =gUnk_08128F58
	movs r5, #0
	b _080A693A
	.align 2, 0
_080A690C: .4byte gPlayerState
_080A6910: .4byte gRoomTransition
_080A6914: .4byte 0x000001FB
_080A6918: .4byte gSave
_080A691C: .4byte gUnk_08128F58
_080A6920:
	movs r0, #1
	lsls r0, r5
	ands r0, r6
	cmp r0, #0
	beq _080A6936
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #3]
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6936:
	adds r5, #1
	adds r4, #8
_080A693A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6920
	movs r5, #0xa
_080A6942:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A6976
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _080A6976
	ldr r1, _080A6984 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	ldrb r0, [r0, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6988 @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	adds r3, #0x64
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6976:
	adds r5, #1
	cmp r5, #0x64
	bls _080A6942
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6980: .4byte 0x000001FB
_080A6984: .4byte gUnk_080C9CBC
_080A6988: .4byte gUnk_080FE320
.endif
	.syntax divided
