	.ifndef GUARD_ASM_MACROS_GFX_INC
	.set GUARD_ASM_MACROS_GFX_INC, 1

    .macro gfx_raw src:req, unknown=0, dest=0, size=0, compressed=0, terminator=0
        .4byte (!(\terminator) << 0x1F) + \src+ \unknown * 0x1000000, \dest, \size + (\compressed << 0x1F)
    .endm

    .macro palette_set palette:req, offset=0, count=0, terminator=0
        .2byte \palette
        .byte \offset, \count & 0xf + (!\terminator*0x80)
    .endm

    .macro sprite_frame first_tile_index:req, num_tiles=0, unknown=0
        .byte \num_tiles, \unknown
        .2byte \first_tile_index
    .endm

    .macro keyframe frame_index:req, duration=0, bitfield=0, bitfield2=0
        .byte \frame_index, \duration, \bitfield, \bitfield2
    .endm

    .macro fixed_gfx src:req, size=0, compressed=0
        .4byte \src + \compressed + (\size/0x200 << 24)
    .endm

    .macro extra_offset x:req, y:req
        .byte \x, \y
    .endm

    .macro obj x:req, y:req, bitfield=0, bitfield2=0
        .byte \x, \y, \bitfield
        .2byte \bitfield2
    .endm

	.endif @ GUARD_ASM_MACROS_GFX_INC
