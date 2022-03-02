	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080A4D34
	movs r0, #6
	bl sub_080A4DB8
	ldr r0, _080A6BF0 @ =gFuseInfo
	ldrb r2, [r0, #3]
	lsls r2, r2, #3
	ldr r0, _080A6BF4 @ =gUnk_080C9CBC
	adds r2, r2, r0
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A6BF8 @ =gUnk_080FE320
	adds r0, r0, r1
	ldrb r2, [r2, #7]
	mov r8, r2
	ldrh r6, [r0, #0xc]
	ldrh r5, [r0, #0xe]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A6A80
	ldrb r4, [r0, #4]
	ldr r7, _080A6BFC @ =gMenu
	strb r4, [r7, #3]
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080A67C4
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A6FB4
	ldr r4, _080A6C00 @ =0x0000475F
	movs r0, #0
	adds r1, r4, #0
	bl SetColor
	movs r0, #0x5f
	adds r1, r4, #0
	bl SetColor
	ldr r0, _080A6C04 @ =0x00005001
	ldr r1, _080A6C08 @ =gBG3Buffer
	movs r2, #0x80
	lsls r2, r2, #5
	bl MemFill16
	ldr r0, _080A6C0C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r2, #0x64
	cmp r0, #0
	beq _080A6B84
	movs r2, #0x65
_080A6B84:
	ldr r1, _080A6C10 @ =gRoomTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
.ifdef EU
	movs r4, #0xfd
	lsls r4, r4, #0x1
.else
	ldr r4, _080A6C14 @ =0x000001FB
.endif
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r2, r3
	adds r2, r4, #0
	bl sub_080A698C
	mov r3, r8
	adds r3, #0x64
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080A698C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A69E0
	asrs r5, r0, #0x10
	ldrb r0, [r7, #3]
	lsls r0, r0, #3
	ldr r1, _080A6C18 @ =gUnk_08128E94
	adds r1, r0, r1
	movs r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080A6BD4
	adds r0, r5, #0
	subs r0, #0x3c
	cmp r0, #0
	ble _080A6BD4
	ldrb r1, [r1, #2]
	cmp r1, r0
	bge _080A6BD2
	adds r0, r1, #0
_080A6BD2:
	strh r0, [r7, #0xa]
_080A6BD4:
	ldr r1, _080A6BFC @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #1
	bl SetMenuType
	movs r0, #4
	movs r1, #8
	bl SetFade
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6BF0: .4byte gFuseInfo
_080A6BF4: .4byte gUnk_080C9CBC
_080A6BF8: .4byte gUnk_080FE320
_080A6BFC: .4byte gMenu
_080A6C00: .4byte 0x0000475F
_080A6C04: .4byte 0x00005001
_080A6C08: .4byte gBG3Buffer
_080A6C0C: .4byte gPlayerState
_080A6C10: .4byte gRoomTransition
.ifndef EU
_080A6C14: .4byte 0x000001FB
.endif
_080A6C18: .4byte gUnk_08128E94
	.syntax divided
