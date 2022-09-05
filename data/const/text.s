	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ text.c
gTranslations:: @ 08109214
	.4byte translation
	.4byte translation
	.4byte translation
.ifdef EU
	.4byte translationFrench
	.4byte translationGerman
	.4byte translationSpanish
	.4byte translationItalian
.else
	.4byte translation
	.4byte translation
	.4byte translation
	.4byte translation
.endif

@ text.c
gUnk_08109230:: @ 08109230
	.incbin "data_08108E6C/gUnk_08109230.bin"

gUnk_08109244:: @ 08109244
	.incbin "data_08108E6C/gUnk_08109244.bin"

@ text.c
gUnk_08109248:: @ 08109248
	.4byte gUnk_08692F60
	.4byte gUnk_08692F60
	.4byte gUnk_086978E0
	.4byte gUnk_08696F60
	.4byte gUnk_086AAEE0
	.4byte gUnk_086998E0
	.4byte gUnk_086A18E0
	.4byte gUnk_086A2A60
	.4byte gUnk_086A2EE0

gUnk_0810926C:: @ 0810926C
	.incbin "data_08108E6C/gUnk_0810926C.bin"

@ text.c
gUnk_081092AC:: @ 081092AC
	.4byte gUnk_086926A0
	.4byte gUnk_08692780
	.4byte gUnk_08692860
	.4byte gUnk_08692940
	.4byte gUnk_08692A20
	.4byte gUnk_08692B00
	.4byte gUnk_08692BE0
	.4byte gUnk_08692CC0
	.4byte gUnk_08692DA0
	.4byte gUnk_08692E80

gUnk_081092D4:: @ 081092D4
	.incbin "data_08108E6C/gUnk_081092D4.bin"

gUnk_0810942E:: @ 0810942E
	.incbin "data_08108E6C/gUnk_0810942E.bin"

@ text.c
gUnk_081094CE:: @ 081094CE
	.incbin "data_08108E6C/gUnk_081094CE.bin"
