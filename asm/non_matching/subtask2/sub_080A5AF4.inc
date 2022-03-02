	.syntax unified
.ifdef EU
	push {lr}
	ldr r1, _080A5B18 @ =gMenu
	movs r0, #0
	strb r0, [r1, #3]
.else
	push {r4, lr}
	ldr r0, _080A5B18 @ =gMenu
	movs r4, #0
	strb r4, [r0, #3]
.endif
	movs r0, #2
	movs r1, #0
	bl SetPopupState
.ifndef EU
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080A5B24
	ldr r1, _080A5B1C @ =gScreen
	ldr r0, _080A5B20 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	b _080A5B28
	.align 2, 0
_080A5B18: .4byte gMenu
_080A5B1C: .4byte gScreen
_080A5B20: .4byte 0x0000FFFC
_080A5B24:
	ldr r0, _080A5B30 @ =gScreen
	strh r4, [r0, #0x18]
.endif
_080A5B28:
	movs r0, #1
	bl SetMenuType
.ifdef EU 
	pop {pc}
.else
	pop {r4, pc}
.endif
	.align 2, 0
.ifdef EU
_080A5B18: .4byte gMenu
.else
_080A5B30: .4byte gScreen
.endif
	.syntax divided
