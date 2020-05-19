	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0804B938
sub_0804B938: @ 0x0804B938
	push {lr}
	ldr r0, _0804B968 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804B9F2
	movs r0, #0x2b
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B970
	movs r0, #0x2f
	bl GetProgressFlag
	cmp r0, #0
	bne _0804B984
	movs r0, #0x30
	bl GetProgressFlag
	cmp r0, #0
	bne _0804B9BC
	ldr r0, _0804B96C @ =gUnk_080D6C64
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B968: .4byte gUnk_02002A40
_0804B96C: .4byte gUnk_080D6C64
_0804B970:
	movs r0, #0x2c
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B9A8
	movs r0, #0x2e
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B990
_0804B984:
	ldr r0, _0804B98C @ =gUnk_080D6D04
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B98C: .4byte gUnk_080D6D04
_0804B990:
	movs r0, #0x30
	bl GetProgressFlag
	cmp r0, #0
	bne _0804B9D2
	ldr r0, _0804B9A4 @ =gUnk_080D6C94
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B9A4: .4byte gUnk_080D6C94
_0804B9A8:
	movs r0, #0x2d
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B9EC
	movs r0, #0x2e
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B9C8
_0804B9BC:
	ldr r0, _0804B9C4 @ =gUnk_080D6CE4
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B9C4: .4byte gUnk_080D6CE4
_0804B9C8:
	movs r0, #0x2f
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B9E0
_0804B9D2:
	ldr r0, _0804B9DC @ =gUnk_080D6CC4
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B9DC: .4byte gUnk_080D6CC4
_0804B9E0:
	ldr r0, _0804B9E8 @ =gUnk_080D6C34
	bl LoadRoomEntityList
	b _0804B9F2
	.align 2, 0
_0804B9E8: .4byte gUnk_080D6C34
_0804B9EC:
	ldr r0, _0804B9F4 @ =gUnk_080D6BF4
	bl LoadRoomEntityList
_0804B9F2:
	pop {pc}
	.align 2, 0
_0804B9F4: .4byte gUnk_080D6BF4