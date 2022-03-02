	.syntax unified
	push {r4, lr}
	ldr r0, _080A62C4 @ =gUnk_08128DD8
	bl sub_080A70AC
	ldr r4, _080A62C8 @ =gMenu
	ldr r0, _080A62CC @ =gUnk_08128DD4
	str r0, [r4, #0xc]
	movs r0, #0x81
	bl LoadGfxGroup
	ldr r1, _080A62D0 @ =gScreen
	ldr r0, _080A62D4 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	ldr r2, _080A62D8 @ =gSave
	ldr r0, [r2, #0x40]
	ldr r1, _080A62DC @ =0x00010780
	orrs r0, r1
	str r0, [r2, #0x40]
	bl sub_080A6F40
	strh r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #5]
	pop {r4, pc}
	.align 2, 0
_080A62C4: .4byte gUnk_08128DD8
_080A62C8: .4byte gMenu
_080A62CC: .4byte gUnk_08128DD4
_080A62D0: .4byte gScreen
_080A62D4: .4byte 0x0000FFFC
_080A62D8: .4byte gSave
_080A62DC: .4byte 0x00010780
	.syntax divided
