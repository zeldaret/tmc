	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08127280:: @ 08127280
	.incbin "data_08127280/gUnk_08127280.bin"

gUnk_08127298:: @ 08127298
	.incbin "data_08127280/gUnk_08127298.bin"

gUnk_081272B0:: @ 081272B0
	.incbin "data_08127280/gUnk_081272B0.bin"

gUnk_081272C8:: @ 081272C8
	.incbin "data_08127280/gUnk_081272C8.bin"

gUnk_081272E0:: @ 081272E0
	.4byte gUnk_08127280
	.4byte gUnk_08127298
	.4byte gUnk_081272B0
	.4byte gUnk_081272C8

gUnk_081272F0:: @ 081272F0
	.incbin "data_08127280/gUnk_081272F0.bin"

gUnk_08127644:: @ 08127644
	.incbin "data_08127280/gUnk_08127644.bin"

gUnk_08127998:: @ 08127998
	.incbin "data_08127280/gUnk_08127998.bin"

gUnk_08127CEC:: @ 08127CEC
	.incbin "data_08127280/gUnk_08127CEC.bin"

gUnk_08127D00:: @ 08127D00
	.4byte sub_080A3608
	.4byte sub_080A36C0
	.4byte sub_080A3994
	.4byte sub_080A3980

gUnk_08127D10:: @ 08127D10
	.4byte sub_080A36DC
	.4byte sub_080A36F8
	.4byte sub_080A3768
	.4byte sub_080A3864
	.4byte sub_080A3888
	.4byte sub_080A38B4
	.4byte sub_080A38D0
	.4byte sub_080A3930

gAreaMetadata:: @ 08127D30
.ifdef EU
    @ TODO only small differences
	.incbin "data_08127280/gAreaMetadata_EU.bin"
.else
	.incbin "data_08127280/gAreaMetadata_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08127F94:: @ 08127F94
	.incbin "data_08127280/gUnk_08127F94.bin"

gUnk_08128024:: @ 08128024
	.incbin "data_08127280/gUnk_08128024.bin"

gUnk_081280C4:: @ 081280C4
	.4byte sub_080A3BD0
	.4byte sub_080A3C6C
	.4byte sub_080A3DB8
	.4byte sub_080A3E00
	.4byte sub_080A3F10
	.4byte sub_080A3F4C

gUnk_081280DC:: @ 081280DC
	.incbin "data_08127280/gUnk_081280DC.bin"

gUnk_081280EE:: @ 081280EE
	.incbin "data_08127280/gUnk_081280EE.bin"

gUnk_081280F4:: @ 081280F4
	.4byte sub_080A3E20
	.4byte sub_080A3E48
	.4byte sub_080A3EDC

gUnk_08128100:: @ 08128100
	.4byte sub_080A3F68
	.4byte sub_080A3FCC
	.4byte sub_080A3FF4
	.4byte sub_080A4038

gUnk_08128110:: @ 08128110
	.incbin "data_08127280/gUnk_08128110.bin"

gUnk_08128120:: @ 08128120
	.incbin "data_08127280/gUnk_08128120.bin"

gUnk_0812813C:: @ 0812813C
	.incbin "data_08127280/gUnk_0812813C.bin"

gUnk_0812814C:: @ 0812814C
	.4byte sub_080A46DC
	.4byte sub_080A46EC
	.4byte sub_080A4720
	.4byte sub_080A47D0

gUnk_0812815C:: @ 0812815C
	.4byte sub_080A4830
	.4byte sub_080A4864
	.4byte sub_080A4934
	.4byte sub_080A4940

gUnk_0812816C:: @ 0812816C
	.incbin "data_08127280/gUnk_0812816C.bin"

gUnk_08128184:: @ 08128184
	.incbin "data_08127280/gUnk_08128184.bin"

gUnk_08128190:: @ 08128190
	.incbin "data_08127280/gUnk_08128190.bin"

@ Definitions for the figurines
	.include "figurines/figurines.s"

gUnk_08128A38:: @ 08128A38
	.incbin "data_08127280/gUnk_08128A38.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_1.bin"
	.4byte sub_080A5218
	.incbin "data_08127280/gUnk_08128A38_2.bin"
	.4byte sub_080A5574
	.incbin "data_08127280/gUnk_08128A38_3.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_4.bin"
	.4byte sub_080A6270
	.incbin "data_08127280/gUnk_08128A38_5.bin"
	.4byte sub_080A5BF0
	.incbin "data_08127280/gUnk_08128A38_6.bin"
	.4byte sub_080A6608
	.incbin "data_08127280/gUnk_08128A38_7.bin"
	.4byte sub_080A6008
	.incbin "data_08127280/gUnk_08128A38_8.bin"
	.4byte sub_080A60E0
	.incbin "data_08127280/gUnk_08128A38_9.bin"
	.4byte sub_080A5AD8
	.incbin "data_08127280/gUnk_08128A38_10.bin"
	.4byte sub_080A5990
	.incbin "data_08127280/gUnk_08128A38_11.bin"
	.4byte sub_080A5990
	.incbin "data_08127280/gUnk_08128A38_12.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_13.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_14.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_15.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_16.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_17.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_18.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_19.bin"
	.4byte sub_080A4F28

gUnk_08128AD8:: @ 08128AD8
.ifdef EU
    @ TODO only small differences
	.incbin "data_08127280/gUnk_08128AD8_EU.bin"
.else
	.incbin "data_08127280/gUnk_08128AD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08128B30:: @ 08128B30
	.4byte sub_080A4F28
	.4byte sub_080A4FA0
	.4byte sub_080A4FB8
	.4byte sub_080A50B8
	.4byte sub_080A50E8
	.4byte sub_080A5108

gUnk_08128B48:: @ 08128B48
	.4byte sub_080A5238
	.4byte sub_080A529C

gUnk_08128B50:: @ 08128B50
	.incbin "data_08127280/gUnk_08128B50.bin"

gUnk_08128B64:: @ 08128B64
	.incbin "data_08127280/gUnk_08128B64.bin"

gUnk_08128BF4:: @ 08128BF4
	.incbin "data_08127280/gUnk_08128BF4.bin"

gUnk_08128BF8:: @ 08128BF8
	.4byte sub_080A5594
	.4byte sub_080A56A0

gUnk_08128C00:: @ 08128C00
	.incbin "data_08127280/gUnk_08128C00.bin"

gUnk_08128C04:: @ 08128C04
	.incbin "data_08127280/gUnk_08128C04.bin"

gUnk_08128C14:: @ 08128C14
	.incbin "data_08127280/gUnk_08128C14.bin"

gUnk_08128C94:: @ 08128C94
	.incbin "data_08127280/gUnk_08128C94.bin"

gUnk_08128D14:: @ 08128D14
	.4byte sub_080A59AC
	.4byte sub_080A59C8
	.4byte sub_080A5A54
	.4byte sub_080A5A90

gUnk_08128D24:: @ 08128D24
	.4byte sub_080A5AF4
	.4byte sub_080A5B34
	.4byte sub_080A5BB8

gUnk_08128D30:: @ 08128D30
	.4byte sub_080A5C44
	.4byte sub_080A5C9C

gUnk_08128D38:: @ 08128D38
	.incbin "data_08127280/gUnk_08128D38.bin"

gUnk_08128D3C:: @ 08128D3C
	.incbin "data_08127280/gUnk_08128D3C.bin"

gUnk_08128D43:: @ 08128D43
	.incbin "data_08127280/gUnk_08128D43.bin"

gUnk_08128D51:: @ 08128D51
	.incbin "data_08127280/gUnk_08128D51.bin"

gUnk_08128D58:: @ 08128D58
	.4byte sub_080A6024
	.4byte sub_080A6044

gUnk_08128D60:: @ 08128D60
	.incbin "data_08127280/gUnk_08128D60.bin"

gUnk_08128D70:: @ 08128D70
	.incbin "data_08127280/gUnk_08128D70.bin"

gUnk_08128DB0:: @ 08128DB0
	.4byte sub_080A6108
	.4byte sub_080A612C

gUnk_08128DB8:: @ 08128DB8
	.incbin "data_08127280/gUnk_08128DB8.bin"

gUnk_08128DBC:: @ 08128DBC
	.incbin "data_08127280/gUnk_08128DBC.bin"

gUnk_08128DCC:: @ 08128DCC
	.4byte sub_080A6290
	.4byte sub_080A62E0

gUnk_08128DD4:: @ 08128DD4
	.incbin "data_08127280/gUnk_08128DD4.bin"

gUnk_08128DD8:: @ 08128DD8
	.incbin "data_08127280/gUnk_08128DD8.bin"

gUnk_08128DE8:: @ 08128DE8
	.incbin "data_08127280/gUnk_08128DE8.bin"

gUnk_08128E70:: @ 08128E70
	.4byte sub_080A6534
	.4byte sub_080A65AC

gUnk_08128E78:: @ 08128E78
	.4byte sub_080A6650
	.4byte sub_080A667C

gUnk_08128E80:: @ 08128E80
	.incbin "data_08127280/gUnk_08128E80.bin"

gUnk_08128E84:: @ 08128E84
	.incbin "data_08127280/gUnk_08128E84.bin"

gUnk_08128E94:: @ 08128E94
	.incbin "data_08127280/gUnk_08128E94.bin"

gUnk_08128F1C:: @ 08128F1C
	.4byte sub_080A6B04
	.4byte sub_080A6C1C

gUnk_08128F24:: @ 08128F24
	.4byte sub_080A6CA8
	.4byte sub_080A6CD8
	.4byte sub_080A6DD0
	.4byte sub_080A6DF8
	.4byte sub_080A6E44

gUnk_08128F38:: @ 08128F38
	.incbin "data_08127280/gUnk_08128F38.bin"

gUnk_08128F4C:: @ 08128F4C
	.incbin "data_08127280/gUnk_08128F4C.bin"

gUnk_08128F58:: @ 08128F58
	.incbin "data_08127280/gUnk_08128F58.bin"

gUnk_08128FA8:: @ 08128FA8
	.incbin "data_08127280/gUnk_08128FA8.bin"

gUnk_08128FC0:: @ 08128FC0
	.incbin "data_08127280/gUnk_08128FC0.bin"

gUnk_08128FD8:: @ 08128FD8
	.incbin "data_08127280/gUnk_08128FD8.bin"

gUnk_08128FF0:: @ 08128FF0
	.incbin "data_08127280/gUnk_08128FF0.bin"

gUnk_08129004:: @ 08129004
	.incbin "data_08127280/gUnk_08129004.bin"

gUnk_0812901C:: @ 0812901C
	.4byte sub_080A7250
	.4byte sub_080A7328
	.4byte sub_080A7528
	.4byte sub_080A73A8
	.4byte sub_080A74C8

gUnk_08129030:: @ 08129030
	.4byte sub_080A71DC
	.4byte sub_080A4EA0
	.4byte sub_080A71DC
	.4byte sub_080A64FC
	.4byte DrawKinstoneMenu
	.4byte sub_08051E68
	.4byte sub_0804AB54
	.4byte sub_080A45A4
	.4byte sub_08054870
	.4byte sub_080A6C74
	.4byte sub_080A6AB8
