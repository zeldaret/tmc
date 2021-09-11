	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081146D0:: @ 081146D0
	.incbin "data_081146D0/gUnk_081146D0.bin"

gUnk_081146E4:: @ 081146E4
	.incbin "data_081146D0/gUnk_081146E4.bin"

gUnk_081146F4:: @ 081146F4
	.incbin "data_081146D0/gUnk_081146F4.bin"

gUnk_0811479C:: @ 0811479C
	.incbin "data_081146D0/gUnk_0811479C.bin"

gUnk_081147E4:: @ 081147E4
	.incbin "data_081146D0/gUnk_081147E4.bin"

gUnk_08114804:: @ 08114804
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114804_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114804_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114814:: @ 08114814
	.incbin "data_081146D0/gUnk_08114814.bin"

gUnk_08114824:: @ 08114824
	.incbin "data_081146D0/gUnk_08114824.bin"

gUnk_08114864:: @ 08114864
	.incbin "data_081146D0/gUnk_08114864.bin"

gUnk_08114874:: @ 08114874
	.incbin "data_081146D0/gUnk_08114874.bin"

gUnk_081148A4:: @ 081148A4
	.incbin "data_081146D0/gUnk_081148A4.bin"

gUnk_081148C4:: @ 081148C4
	.incbin "data_081146D0/gUnk_081148C4.bin"

gUnk_081148E4:: @ 081148E4
	.incbin "data_081146D0/gUnk_081148E4.bin"

gUnk_08114914:: @ 08114914
	.incbin "data_081146D0/gUnk_08114914.bin"

gUnk_08114944:: @ 08114944
	.incbin "data_081146D0/gUnk_08114944.bin"

gUnk_08114974:: @ 08114974
	.incbin "data_081146D0/gUnk_08114974.bin"

gUnk_08114984:: @ 08114984
	.incbin "data_081146D0/gUnk_08114984.bin"

gUnk_08114994:: @ 08114994
	.incbin "data_081146D0/gUnk_08114994.bin"

gUnk_081149A4:: @ 081149A4
	.incbin "data_081146D0/gUnk_081149A4.bin"

gUnk_081149B4:: @ 081149B4
	.incbin "data_081146D0/gUnk_081149B4.bin"

gUnk_081149C4:: @ 081149C4
	.incbin "data_081146D0/gUnk_081149C4.bin"

gUnk_081149F4:: @ 081149F4
	.incbin "data_081146D0/gUnk_081149F4.bin"

gUnk_08114A14:: @ 08114A14
	.incbin "data_081146D0/gUnk_08114A14.bin"

gUnk_08114A6C:: @ 08114A6C
	.incbin "data_081146D0/gUnk_08114A6C.bin"

gUnk_08114A8C:: @ 08114A8C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114A8C_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114A8C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114ABC:: @ 08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114ABC_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114ABC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114AE4:: @ 08114AE4
	.incbin "data_081146D0/gUnk_08114AE4.bin"
	.4byte gUnk_081146E4
	.incbin "data_081146D0/gUnk_08114AE4_1.bin"
	.4byte gUnk_081148A4
	.incbin "data_081146D0/gUnk_08114AE4_2.bin"
	.4byte gUnk_081146F4
	.incbin "data_081146D0/gUnk_08114AE4_3.bin"
	.4byte gUnk_0811479C
	.incbin "data_081146D0/gUnk_08114AE4_4.bin"
	.4byte gUnk_081147E4
	.incbin "data_081146D0/gUnk_08114AE4_5.bin"
	.4byte gUnk_08114874
	.incbin "data_081146D0/gUnk_08114AE4_6.bin"
	.4byte gUnk_08114804
	.incbin "data_081146D0/gUnk_08114AE4_7.bin"
	.4byte gUnk_08114814
	.incbin "data_081146D0/gUnk_08114AE4_8.bin"
	.4byte gUnk_081148E4
	.incbin "data_081146D0/gUnk_08114AE4_9.bin"
	.4byte gUnk_08114824
	.incbin "data_081146D0/gUnk_08114AE4_10.bin"
	.4byte gUnk_08114864
	.incbin "data_081146D0/gUnk_08114AE4_11.bin"
	.4byte gUnk_081148C4
	.incbin "data_081146D0/gUnk_08114AE4_12.bin"
	.4byte gUnk_08114914
	.incbin "data_081146D0/gUnk_08114AE4_13.bin"
	.4byte gUnk_08114944
	.incbin "data_081146D0/gUnk_08114AE4_14.bin"
	.4byte gUnk_08114A8C
	.incbin "data_081146D0/gUnk_08114AE4_15.bin"
	.4byte gUnk_08114974
	.incbin "data_081146D0/gUnk_08114AE4_16.bin"
	.4byte gUnk_08114984
	.incbin "data_081146D0/gUnk_08114AE4_17.bin"
	.4byte gUnk_08114994
	.incbin "data_081146D0/gUnk_08114AE4_18.bin"
	.4byte gUnk_081149A4
	.incbin "data_081146D0/gUnk_08114AE4_19.bin"
	.4byte gUnk_081149B4
	.incbin "data_081146D0/gUnk_08114AE4_20.bin"
	.4byte gUnk_081149C4
	.incbin "data_081146D0/gUnk_08114AE4_21.bin"
	.4byte gUnk_081149F4
	.incbin "data_081146D0/gUnk_08114AE4_22.bin"
	.4byte gUnk_08114A14
	.incbin "data_081146D0/gUnk_08114AE4_23.bin"
	.4byte gUnk_08114A6C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_24_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_25_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_26_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_27_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114EE4:: @ 08114EE4
	.4byte 00000000
	.4byte gUnk_080FD170
	.4byte gUnk_080FD158
	.4byte gUnk_080FD170
	.4byte gUnk_080FD180
	.4byte gUnk_080FD160

gUnk_08114EFC:: @ 08114EFC
	.4byte sub_0806EF88
	.4byte sub_0806EE70
	.4byte sub_0806EED0
	.4byte sub_0806EEF4

gUnk_08114F0C:: @ 08114F0C
	.4byte sub_0806EFAC
	.4byte sub_0806EFBC
	.4byte sub_0806EFCC
	.4byte sub_0806EFDC
	.4byte sub_0806F014
	.4byte sub_0806F02C
	.4byte sub_0806F048
	.4byte sub_0806F050
	.4byte sub_0806F064

gUnk_08114F30:: @ 08114F30
	.incbin "data_081146D0/gUnk_08114F30.bin"

gUnk_08114F34:: @ 08114F34
	.incbin "data_081146D0/gUnk_08114F34.bin"

gUnk_08114F38:: @ 08114F38
	.incbin "data_081146D0/gUnk_08114F38.bin"

gUnk_08114F58:: @ 08114F58
	.incbin "data_081146D0/gUnk_08114F58.bin"

gUnk_08114F78:: @ 08114F78
	.incbin "data_081146D0/gUnk_08114F78.bin"

gUnk_08114F80:: @ 08114F80
	.incbin "data_081146D0/gUnk_08114F80.bin"

gUnk_08114F88:: @ 08114F88
	.incbin "data_081146D0/gUnk_08114F88.bin"

gUnk_08114F98:: @ 08114F98
	.incbin "data_081146D0/gUnk_08114F98.bin"

gUnk_0811538C:: @ 0811538C
	.incbin "data_081146D0/gUnk_0811538C.bin"

gUnk_08115724:: @ 08115724
	.incbin "data_081146D0/gUnk_08115724.bin"

gUnk_08115AF8:: @ 08115AF8
	.incbin "data_081146D0/gUnk_08115AF8.bin"

gUnk_08115E9C:: @ 08115E9C
	.incbin "data_081146D0/gUnk_08115E9C.bin"

gUnk_08116280:: @ 08116280
	.incbin "data_081146D0/gUnk_08116280.bin"

gUnk_08116530:: @ 08116530
	.incbin "data_081146D0/gUnk_08116530.bin"

gUnk_08116888:: @ 08116888
	.incbin "data_081146D0/gUnk_08116888.bin"

gUnk_08116A9C:: @ 08116A9C
	.incbin "data_081146D0/gUnk_08116A9C.bin"

gUnk_08116D0C:: @ 08116D0C
	.incbin "data_081146D0/gUnk_08116D0C.bin"

gUnk_08116DD4:: @ 08116DD4
	.incbin "data_081146D0/gUnk_08116DD4.bin"

gUnk_08116F64:: @ 08116F64
	.incbin "data_081146D0/gUnk_08116F64.bin"

gUnk_08117208:: @ 08117208
	.incbin "data_081146D0/gUnk_08117208.bin"

gUnk_08117240:: @ 08117240
	.incbin "data_081146D0/gUnk_08117240.bin"

gUnk_081175DC:: @ 081175DC
	.incbin "data_081146D0/gUnk_081175DC.bin"

gUnk_081178B0:: @ 081178B0
	.incbin "data_081146D0/gUnk_081178B0.bin"

gUnk_08117B84:: @ 08117B84
	.incbin "data_081146D0/gUnk_08117B84.bin"

gUnk_08117D64:: @ 08117D64
	.incbin "data_081146D0/gUnk_08117D64.bin"

gUnk_08117E40:: @ 08117E40
	.incbin "data_081146D0/gUnk_08117E40.bin"

gUnk_08117F68:: @ 08117F68
	.incbin "data_081146D0/gUnk_08117F68.bin"

gUnk_08117FD4:: @ 08117FD4
	.incbin "data_081146D0/gUnk_08117FD4.bin"

gUnk_081181B4:: @ 081181B4
	.incbin "data_081146D0/gUnk_081181B4.bin"

gUnk_081181E4:: @ 081181E4
	.incbin "data_081146D0/gUnk_081181E4.bin"

gUnk_08118238:: @ 08118238
	.incbin "data_081146D0/gUnk_08118238.bin"

gUnk_08118264:: @ 08118264
	.incbin "data_081146D0/gUnk_08118264.bin"

gUnk_08118298:: @ 08118298
	.incbin "data_081146D0/gUnk_08118298.bin"

gUnk_08118398:: @ 08118398
	.incbin "data_081146D0/gUnk_08118398.bin"

gUnk_081183BC:: @ 081183BC
	.incbin "data_081146D0/gUnk_081183BC.bin"

gUnk_0811846C:: @ 0811846C
	.incbin "data_081146D0/gUnk_0811846C.bin"

gUnk_081184A8:: @ 081184A8
	.incbin "data_081146D0/gUnk_081184A8.bin"

gUnk_08118558:: @ 08118558
	.incbin "data_081146D0/gUnk_08118558.bin"

gUnk_08118720:: @ 08118720
	.incbin "data_081146D0/gUnk_08118720.bin"

gUnk_08118768:: @ 08118768
	.incbin "data_081146D0/gUnk_08118768.bin"

gUnk_08118780:: @ 08118780
	.incbin "data_081146D0/gUnk_08118780.bin"

gUnk_08118788:: @ 08118788
	.incbin "data_081146D0/gUnk_08118788.bin"

gUnk_08118794:: @ 08118794
	.incbin "data_081146D0/gUnk_08118794.bin"

gUnk_081188C0:: @ 081188C0
	.incbin "data_081146D0/gUnk_081188C0.bin"

gUnk_08118948:: @ 08118948
	.incbin "data_081146D0/gUnk_08118948.bin"

gUnk_08118960:: @ 08118960
	.incbin "data_081146D0/gUnk_08118960.bin"

gUnk_08118974:: @ 08118974
	.incbin "data_081146D0/gUnk_08118974.bin"

gUnk_08118988:: @ 08118988
	.incbin "data_081146D0/gUnk_08118988.bin"

gUnk_08118C00:: @ 08118C00
	.incbin "data_081146D0/gUnk_08118C00.bin"

gUnk_08118D38:: @ 08118D38
	.incbin "data_081146D0/gUnk_08118D38.bin"

gUnk_08118DA4:: @ 08118DA4
	.incbin "data_081146D0/gUnk_08118DA4.bin"

gUnk_08118DD0:: @ 08118DD0
	.incbin "data_081146D0/gUnk_08118DD0.bin"

gUnk_08118DDC:: @ 08118DDC
	.incbin "data_081146D0/gUnk_08118DDC.bin"

gUnk_08118E5C:: @ 08118E5C
	.incbin "data_081146D0/gUnk_08118E5C.bin"

gUnk_08118F04:: @ 08118F04
	.incbin "data_081146D0/gUnk_08118F04.bin"

gUnk_08118F3C:: @ 08118F3C
	.incbin "data_081146D0/gUnk_08118F3C.bin"

gUnk_08118F64:: @ 08118F64
	.incbin "data_081146D0/gUnk_08118F64.bin"

gUnk_08118F98:: @ 08118F98
	.incbin "data_081146D0/gUnk_08118F98.bin"

gUnk_081190A0:: @ 081190A0
	.incbin "data_081146D0/gUnk_081190A0.bin"

gUnk_081190E4:: @ 081190E4
	.incbin "data_081146D0/gUnk_081190E4.bin"

gUnk_0811911C:: @ 0811911C
	.incbin "data_081146D0/gUnk_0811911C.bin"

gUnk_0811912C:: @ 0811912C
	.incbin "data_081146D0/gUnk_0811912C.bin"

gUnk_08119188:: @ 08119188
	.incbin "data_081146D0/gUnk_08119188.bin"

gUnk_081192A8:: @ 081192A8
	.incbin "data_081146D0/gUnk_081192A8.bin"

gUnk_08119548:: @ 08119548
	.incbin "data_081146D0/gUnk_08119548.bin"

gUnk_081197C4:: @ 081197C4
	.incbin "data_081146D0/gUnk_081197C4.bin"

gUnk_081197F4:: @ 081197F4
	.incbin "data_081146D0/gUnk_081197F4.bin"

gUnk_081198C4:: @ 081198C4
	.incbin "data_081146D0/gUnk_081198C4.bin"

gUnk_081198EC:: @ 081198EC
	.incbin "data_081146D0/gUnk_081198EC.bin"

gUnk_081199A4:: @ 081199A4
	.incbin "data_081146D0/gUnk_081199A4.bin"

gUnk_081199F8:: @ 081199F8
	.incbin "data_081146D0/gUnk_081199F8.bin"

gUnk_08119A74:: @ 08119A74
	.incbin "data_081146D0/gUnk_08119A74.bin"

gUnk_08119AF0:: @ 08119AF0
	.incbin "data_081146D0/gUnk_08119AF0.bin"

gUnk_08119B7C:: @ 08119B7C
	.incbin "data_081146D0/gUnk_08119B7C.bin"

gUnk_08119BF0:: @ 08119BF0
	.incbin "data_081146D0/gUnk_08119BF0.bin"

gUnk_08119C64:: @ 08119C64
	.incbin "data_081146D0/gUnk_08119C64.bin"

gUnk_08119CF4:: @ 08119CF4
	.incbin "data_081146D0/gUnk_08119CF4.bin"

gUnk_08119D54:: @ 08119D54
	.incbin "data_081146D0/gUnk_08119D54.bin"

gUnk_08119DA8:: @ 08119DA8
	.incbin "data_081146D0/gUnk_08119DA8.bin"

gUnk_08119DFC:: @ 08119DFC
	.incbin "data_081146D0/gUnk_08119DFC.bin"

gUnk_08119E18:: @ 08119E18
	.incbin "data_081146D0/gUnk_08119E18.bin"

gUnk_08119E44:: @ 08119E44
	.incbin "data_081146D0/gUnk_08119E44.bin"

gUnk_08119EB0:: @ 08119EB0
	.incbin "data_081146D0/gUnk_08119EB0.bin"

gUnk_08119ED8:: @ 08119ED8
	.incbin "data_081146D0/gUnk_08119ED8.bin"

gUnk_08119F80:: @ 08119F80
	.incbin "data_081146D0/gUnk_08119F80.bin"

gUnk_08119FA4:: @ 08119FA4
	.incbin "data_081146D0/gUnk_08119FA4.bin"

gUnk_08119FD4:: @ 08119FD4
	.incbin "data_081146D0/gUnk_08119FD4.bin"

gUnk_0811A01C:: @ 0811A01C
	.incbin "data_081146D0/gUnk_0811A01C.bin"

gUnk_0811A04C:: @ 0811A04C
	.incbin "data_081146D0/gUnk_0811A04C.bin"

gUnk_0811A068:: @ 0811A068
	.incbin "data_081146D0/gUnk_0811A068.bin"

gUnk_0811A0A4:: @ 0811A0A4
	.incbin "data_081146D0/gUnk_0811A0A4.bin"

gUnk_0811A0CC:: @ 0811A0CC
	.incbin "data_081146D0/gUnk_0811A0CC.bin"

gUnk_0811A0E4:: @ 0811A0E4
	.incbin "data_081146D0/gUnk_0811A0E4.bin"

gUnk_0811A124:: @ 0811A124
	.incbin "data_081146D0/gUnk_0811A124.bin"

gUnk_0811A144:: @ 0811A144
	.incbin "data_081146D0/gUnk_0811A144.bin"

gUnk_0811A17C:: @ 0811A17C
	.incbin "data_081146D0/gUnk_0811A17C.bin"

gUnk_0811A1C8:: @ 0811A1C8
	.incbin "data_081146D0/gUnk_0811A1C8.bin"

gUnk_0811A1F8:: @ 0811A1F8
	.incbin "data_081146D0/gUnk_0811A1F8.bin"

gUnk_0811A228:: @ 0811A228
	.incbin "data_081146D0/gUnk_0811A228.bin"

gUnk_0811A280:: @ 0811A280
	.incbin "data_081146D0/gUnk_0811A280.bin"

gUnk_0811A28C:: @ 0811A28C
	.incbin "data_081146D0/gUnk_0811A28C.bin"

gUnk_0811A2A8:: @ 0811A2A8
	.incbin "data_081146D0/gUnk_0811A2A8.bin"

gUnk_0811A2D0:: @ 0811A2D0
	.incbin "data_081146D0/gUnk_0811A2D0.bin"

gUnk_0811A2FC:: @ 0811A2FC
	.incbin "data_081146D0/gUnk_0811A2FC.bin"

gUnk_0811A510:: @ 0811A510
	.incbin "data_081146D0/gUnk_0811A510.bin"

gUnk_0811A75C:: @ 0811A75C
	.incbin "data_081146D0/gUnk_0811A75C.bin"

gUnk_0811A7A8:: @ 0811A7A8
	.incbin "data_081146D0/gUnk_0811A7A8.bin"

gUnk_0811A86C:: @ 0811A86C
	.incbin "data_081146D0/gUnk_0811A86C.bin"

gUnk_0811A8CC:: @ 0811A8CC
	.incbin "data_081146D0/gUnk_0811A8CC.bin"

gUnk_0811A9B4:: @ 0811A9B4
	.incbin "data_081146D0/gUnk_0811A9B4.bin"

gUnk_0811AA2C:: @ 0811AA2C
	.incbin "data_081146D0/gUnk_0811AA2C.bin"

gUnk_0811AA7C:: @ 0811AA7C
	.incbin "data_081146D0/gUnk_0811AA7C.bin"

gUnk_0811AB18:: @ 0811AB18
	.incbin "data_081146D0/gUnk_0811AB18.bin"

gUnk_0811ABF8:: @ 0811ABF8
	.incbin "data_081146D0/gUnk_0811ABF8.bin"

gUnk_0811AD24:: @ 0811AD24
	.incbin "data_081146D0/gUnk_0811AD24.bin"

gUnk_0811ADCC:: @ 0811ADCC
	.incbin "data_081146D0/gUnk_0811ADCC.bin"

gUnk_0811AEB0:: @ 0811AEB0
	.incbin "data_081146D0/gUnk_0811AEB0.bin"

gUnk_0811AED8:: @ 0811AED8
	.incbin "data_081146D0/gUnk_0811AED8.bin"

gUnk_0811AF24:: @ 0811AF24
	.incbin "data_081146D0/gUnk_0811AF24.bin"

gUnk_0811AF34:: @ 0811AF34
	.incbin "data_081146D0/gUnk_0811AF34.bin"

gUnk_0811AF64:: @ 0811AF64
	.incbin "data_081146D0/gUnk_0811AF64.bin"

gUnk_0811AF8C:: @ 0811AF8C
	.incbin "data_081146D0/gUnk_0811AF8C.bin"

gUnk_0811AFBC:: @ 0811AFBC
	.incbin "data_081146D0/gUnk_0811AFBC.bin"

gUnk_0811AFD0:: @ 0811AFD0
	.incbin "data_081146D0/gUnk_0811AFD0.bin"

gUnk_0811B000:: @ 0811B000
	.incbin "data_081146D0/gUnk_0811B000.bin"

gUnk_0811B01C:: @ 0811B01C
	.incbin "data_081146D0/gUnk_0811B01C.bin"

gUnk_0811B02C:: @ 0811B02C
	.incbin "data_081146D0/gUnk_0811B02C.bin"

gUnk_0811B0B0:: @ 0811B0B0
	.incbin "data_081146D0/gUnk_0811B0B0.bin"

gUnk_0811B130:: @ 0811B130
	.incbin "data_081146D0/gUnk_0811B130.bin"

gUnk_0811B178:: @ 0811B178
	.incbin "data_081146D0/gUnk_0811B178.bin"

gUnk_0811B190:: @ 0811B190
	.incbin "data_081146D0/gUnk_0811B190.bin"

gUnk_0811B214:: @ 0811B214
	.incbin "data_081146D0/gUnk_0811B214.bin"

gUnk_0811B258:: @ 0811B258
	.incbin "data_081146D0/gUnk_0811B258.bin"

gUnk_0811B294:: @ 0811B294
	.incbin "data_081146D0/gUnk_0811B294.bin"

gUnk_0811B2FC:: @ 0811B2FC
	.incbin "data_081146D0/gUnk_0811B2FC.bin"

gUnk_0811B34C:: @ 0811B34C
	.incbin "data_081146D0/gUnk_0811B34C.bin"

gUnk_0811B394:: @ 0811B394
	.incbin "data_081146D0/gUnk_0811B394.bin"

gUnk_0811B3A4:: @ 0811B3A4
	.incbin "data_081146D0/gUnk_0811B3A4.bin"

gUnk_0811B3B4:: @ 0811B3B4
	.incbin "data_081146D0/gUnk_0811B3B4.bin"

gUnk_0811B3C8:: @ 0811B3C8
	.incbin "data_081146D0/gUnk_0811B3C8.bin"

gUnk_0811B408:: @ 0811B408
	.incbin "data_081146D0/gUnk_0811B408.bin"

gUnk_0811B540:: @ 0811B540
	.incbin "data_081146D0/gUnk_0811B540.bin"

gUnk_0811B564:: @ 0811B564
	.incbin "data_081146D0/gUnk_0811B564.bin"

gUnk_0811B578:: @ 0811B578
	.incbin "data_081146D0/gUnk_0811B578.bin"

gUnk_0811B940:: @ 0811B940
	.incbin "data_081146D0/gUnk_0811B940.bin"
