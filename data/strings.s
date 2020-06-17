	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_089B1D90:: @ 089B1D90
	.incbin "baserom.gba", 0x9B1D90, 0x000039E

gUnk_089B212E:: @ 089B212E
	.incbin "baserom.gba", 0x9B212E, 0x0007427

gUnk_089B9555:: @ 089B9555
	.string "or Wilds             "
    .string "Danger!\n"
    .string "Don't forget your Pegasus Boots!$"
    .string "{T_07}  Veil Falls\n"
    .string "{T_08}  Minish Woods     {T_0A}  Lake Hylia$"
    .string "{T_07}  Crenel Wall\n"
    .string "{T_0A}  Crenel Mines$"
    .string "{T_07}  Crenel Mines\n"
    .string "{T_09}  Crenel Wall$"
    .string "{T_07}  Hyrule Castle    {T_08}  Hyrule Town\n"
    .string "{T_09}  Mount Crenel     {T_0A}  Lake Hylia$"
    .string "Lon Lon Ranch$"
    .string "{T_07}  Crenel Mines\n"
    .string "{T_0A}  Shortcut to bottom$"
    .string "{T_08}  Shortcut to bottom$"
    .string "{T_09}  Mount Crenel$"
    .string "{T_0A}  Lake Hylia\n"
    .string "{T_08}  Syrup the Witch's Hut$"
    .string "Percy's House$"
    .string "{T_09}  Royal Valley$"
    .string "{T_08}  This way to Mayor Hagen's\n        Lakeside Cabin$"
    .string "{T_07}  Syrup the Witch's Hut\n"
    .string "{T_0A}  Mayor Hagen's Lakeside Cabin$"
    .string "$$$"
    .string "Dear Mom,\n"
    .string "I'll be next door if you need me.$"
    .string "This week's top titles:\n\n"
    .string "{T_10}3   Learn to Like Your Like Like:\n"
    .string "     A Good Guide to a Bad Pet\n"
    .string "{T_10}2   Gorman's Guide to Good Grub\n\n"
    .string "{T_10}1   Married to the Moblin$"
    .string "Hagen's Words of Wisdom\n\n"
    .string "If you can't solve a problem, just ram\n"
    .string "headlong into it. BAM!$"
    .string "$"
    .string "{T_0A}  Mayor Hagen's Lakeside Cabin\n"
    .string "All digging absolutely prohibited!$"
    .string "Under construction.\n"
    .string "All digging strictly prohibited!$"
    .string "Beware crumbling walls!\n"
    .string "Blasting strictly prohibited.$"
    .string "$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    .string "Up$"
    .string "Left$"
    .string "Same as before$"
    .string "Same as the beginning$"
    .string "Right$"
    .string "Same as two before$"
    .string "Down$"
    .string "$$$"
    .string "The truth about the {COLOR}{GREEN}light force{COLOR}{WHITE} within{COLOR}{GREEN}\n"
    .string "{COLOR}{RED}Princess Zelda{COLOR}{WHITE} is depicted here.$"
    .string "$$$$$$$$$$$$$$$"
    .string "The way forward is hidden\n"
    .string "in the bottom of the pot."
    .string "$$$$$$$$$$$$$$"
    .byte 0xff, 0xff, 0xff, 0xff, 0xff, 0xa4, 0x00, 0x00, 0x00, 0xa5, 0x00, 0x00, 0x00, 0xf9, 0x00, 0x00, 0x00, 0x46, 0x01, 0x00, 0x00, 0x47, 0x01, 0x00, 0x00, 0x77, 0x01, 0x00, 0x00, 0x78, 0x01, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x7a, 0x01, 0x00, 0x00, 0x7b, 0x01, 0x00, 0x00, 0x7c, 0x01, 0x00, 0x00, 0x7d, 0x01, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00, 0x9a, 0x01, 0x00, 0x00, 0xa7, 0x01, 0x00, 0x00, 0xb2, 0x01, 0x00, 0x00, 0xbf, 0x01, 0x00, 0x00, 0xd0, 0x01, 0x00, 0x00, 0xdd, 0x01, 0x00, 0x00, 0xf2, 0x01, 0x00, 0x00, 0x05, 0x02, 0x00, 0x00, 0x11, 0x02, 0x00, 0x00, 0x24, 0x02, 0x00, 0x00, 0x31, 0x02, 0x00, 0x00, 0x3c, 0x02, 0x00, 0x00, 0x4a, 0x02, 0x00, 0x00, 0x58, 0x02, 0x00, 0x00, 0x63, 0x02, 0x00, 0x00, 0x6e, 0x02, 0x00, 0x00, 0x7b, 0x02, 0x00, 0x00, 0x8f, 0x02, 0x00, 0x00, 0x9e, 0x02, 0x00, 0x00, 0xad, 0x02, 0x00, 0x00, 0xbd, 0x02, 0x00, 0x00, 0xcc, 0x02, 0x00, 0x00, 0xde, 0x02, 0x00, 0x00, 0xf1, 0x02, 0x00, 0x00, 0xfd, 0x02, 0x00, 0x00, 0x0d, 0x03, 0x00, 0x00, 0x1b, 0x03, 0x00, 0x00, 0x2e, 0x03, 0x00, 0x00, 0x00
    .string "You've finally fused all of the {COLOR}{GREEN}Kinstone\n"
    .string "pieces{COLOR}{WHITE}! Go speak to {COLOR}{COLOR}Grandpa Smith{COLOR}{WHITE}!$"
    .string "The two {COLOR}{GREEN}Kinstone pieces {COLOR}{WHITE}fit perfectly!\n"
    .string "Maybe something good will happen!$"
    .string "$"
    .string "{SE_UNK2}Travel t"

gUnk_089B9B99:: @ 089B9B99
	.incbin "baserom.gba", 0x9B9B99, 0x0000467

gUnk_089BA000:: @ 089BA000
	.incbin "baserom.gba", 0x9BA000, 0x0001BBB

gUnk_089BBBBB:: @ 089BBBBB
	.incbin "baserom.gba", 0x9BBBBB, 0x0001111

gUnk_089BCCCC:: @ 089BCCCC
	.incbin "baserom.gba", 0x9BCCCC, 0x0000CCC

gUnk_089BD998:: @ 089BD998
	.incbin "baserom.gba", 0x9BD998, 0x0001469

gUnk_089BEE01:: @ 089BEE01
	.incbin "baserom.gba", 0x9BEE01, 0x0001206

gUnk_089C0007:: @ 089C0007
	.incbin "baserom.gba", 0x9C0007, 0x00004F4

gUnk_089C04FB:: @ 089C04FB
	.incbin "baserom.gba", 0x9C04FB, 0x00002A0

gUnk_089C079B:: @ 089C079B
	.incbin "baserom.gba", 0x9C079B, 0x000088D

gUnk_089C1028:: @ 089C1028
	.incbin "baserom.gba", 0x9C1028, 0x00001AD

gUnk_089C11D5:: @ 089C11D5
	.incbin "baserom.gba", 0x9C11D5, 0x000312B

gUnk_089C4300:: @ 089C4300
	.incbin "baserom.gba", 0x9C4300, 0x0004A34

gUnk_089C8D34:: @ 089C8D34
	.incbin "baserom.gba", 0x9C8D34, 0x0001F68

gUnk_089CAC9C:: @ 089CAC9C
	.incbin "baserom.gba", 0x9CAC9C, 0x0004E6B

gUnk_089CFB07:: @ 089CFB07
	.incbin "baserom.gba", 0x9CFB07, 0x0000D54

gUnk_089D085B:: @ 089D085B
	.incbin "baserom.gba", 0x9D085B, 0x0003E86

gUnk_089D46E1:: @ 089D46E1
	.incbin "baserom.gba", 0x9D46E1, 0x0001A27

gUnk_089D6108:: @ 089D6108
	.incbin "baserom.gba", 0x9D6108, 0x0003429

gUnk_089D9531:: @ 089D9531
	.incbin "baserom.gba", 0x9D9531, 0x00058EF

gUnk_089DEE20:: @ 089DEE20
	.incbin "baserom.gba", 0x9DEE20, 0x00011F7

gUnk_089E0017:: @ 089E0017
	.incbin "baserom.gba", 0x9E0017, 0x00002E9

gUnk_089E0300:: @ 089E0300
	.incbin "baserom.gba", 0x9E0300, 0x0000455

gUnk_089E0755:: @ 089E0755
	.incbin "baserom.gba", 0x9E0755, 0x00004AD

gUnk_089E0C02:: @ 089E0C02
	.incbin "baserom.gba", 0x9E0C02, 0x00008FD

gUnk_089E14FF:: @ 089E14FF
	.incbin "baserom.gba", 0x9E14FF, 0x0001811

gUnk_089E2D10:: @ 089E2D10
	.incbin "baserom.gba", 0x9E2D10, 0x0004F8E

gUnk_089E7C9E:: @ 089E7C9E
	.incbin "baserom.gba", 0x9E7C9E, 0x0001630

gUnk_089E92CE:: @ 089E92CE
	.incbin "baserom.gba", 0x9E92CE, 0x00006B2

gUnk_089E9980:: @ 089E9980
	.incbin "baserom.gba", 0x9E9980, 0x0001F1D

gUnk_089EB89D:: @ 089EB89D
	.incbin "baserom.gba", 0x9EB89D, 0x0000DCE

gUnk_089EC66B:: @ 089EC66B
	.incbin "baserom.gba", 0x9EC66B, 0x000282D

gUnk_089EEE98:: @ 089EEE98
	.incbin "baserom.gba", 0x9EEE98, 0x000004C

gUnk_089EEEE4:: @ 089EEEE4
	.incbin "baserom.gba", 0x9EEEE4, 0x000000A

gUnk_089EEEEE:: @ 089EEEEE
	.incbin "baserom.gba", 0x9EEEEE, 0x0000008

gUnk_089EEEF6:: @ 089EEEF6
	.incbin "baserom.gba", 0x9EEEF6, 0x000110A

gUnk_089F0000:: @ 089F0000
	.incbin "baserom.gba", 0x9F0000, 0x0000009

gUnk_089F0009:: @ 089F0009
	.incbin "baserom.gba", 0x9F0009, 0x0000049

gUnk_089F0052:: @ 089F0052
	.incbin "baserom.gba", 0x9F0052, 0x0000638

gUnk_089F068A:: @ 089F068A
	.incbin "baserom.gba", 0x9F068A, 0x00001A8

gUnk_089F0832:: @ 089F0832
	.incbin "baserom.gba", 0x9F0832, 0x00017D5

gUnk_089F2007:: @ 089F2007
	.incbin "baserom.gba", 0x9F2007, 0x0000312

gUnk_089F2319:: @ 089F2319
	.incbin "baserom.gba", 0x9F2319, 0x000012C

gUnk_089F2445:: @ 089F2445
	.incbin "baserom.gba", 0x9F2445, 0x0002110

gUnk_089F4555:: @ 089F4555
	.incbin "baserom.gba", 0x9F4555, 0x0004081

gUnk_089F85D6:: @ 089F85D6
	.incbin "baserom.gba", 0x9F85D6, 0x00009B4

gUnk_089F8F8A:: @ 089F8F8A
	.incbin "baserom.gba", 0x9F8F8A, 0x00027F6

gUnk_089FB780:: @ 089FB780
	.incbin "baserom.gba", 0x9FB780, 0x0000F44




