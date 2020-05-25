ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
        . = 0x00000006; gUnk_02000006 = .;
        . = 0x00000010; gUnk_02000010 = .;
        . = 0x00000020; gUnk_02000020 = .;
        . = 0x00000030; gUnk_02000030 = .;
        . = 0x00000040; gUnk_02000040 = .;
        . = 0x00000050; gUnk_02000050 = .;
        . = 0x0000005C; gUnk_0200005C = .;
        . = 0x00000070; gUnk_02000070 = .;
        . = 0x00000080; gUnk_02000080 = .;
        . = 0x00000090; gUnk_02000090 = .;
        . = 0x000000B0; gUnk_020000B0 = .;
        . = 0x000000C0; gUnk_020000C0 = .;
        . = 0x00000CC0; gUnk_02000CC0 = .;
        . = 0x00000D00; gUnk_02000D00 = .;
        . = 0x00001A00; gUnk_02001A00 = .;
        . = 0x00001A3C; gUnk_02001A3C = .;
        . = 0x00001A40; gUnk_02001A40 = .;
        . = 0x00001B40; gUnk_02001B40 = .;
        . = 0x00002A40; gUnk_02002A40 = .;
        . = 0x00002AA0; gUnk_02002AA0 = .;
        . = 0x00002AC0; gUnk_02002AC0 = .;
        . = 0x00002AC8; gUnk_02002AC8 = .;
        . = 0x00002AE8; gStats = .;
        . = 0x00002B0E; gUnk_02002B0E = .;
        . = 0x00002B32; gUnk_02002B32 = .;
        . = 0x00002B54; gUnk_02002B54 = .;
        . = 0x00002B58; gUnk_02002B58 = .;
        . = 0x00002B6B; gUnk_02002B6B = .;
        . = 0x00002C01; gUnk_02002C01 = .;
        . = 0x00002C81; gUnk_02002C81 = .;
        . = 0x00002C8E; gUnk_02002C8E = .;
        . = 0x00002C9C; gUnk_02002C9C = .;
        . = 0x00002E9C; gUnk_02002E9C = .;
        . = 0x00002ECC; gUnk_02002ECC = .;
        . = 0x00002F00; gUnk_02002F00 = .;
        . = 0x00006F00; gUnk_02006F00 = .;
        . = 0x0000AF00; gUnk_0200AF00 = .;
        . = 0x0000AF13; gUnk_0200AF13 = .;
        . = 0x0000AF34; gUnk_0200AF34 = .;
        . = 0x0000B240; gUnk_0200B240 = .;
        . = 0x0000B640; gUnk_0200B640 = .;
        . = 0x0000B644; gUnk_0200B644 = .;
        . = 0x0000B650; gUnk_0200B650 = .;
        . = 0x0000B654; gUnk_0200B654 = .;
        . = 0x0000D654; gUnk_0200D654 = .;
        . = 0x0000E654; gUnk_0200E654 = .;
        . = 0x00010654; gUnk_02010654 = .;
        . = 0x00011654; gUnk_02011654 = .;
        . = 0x00012654; gUnk_02012654 = .;
        . = 0x00016654; gUnk_02016654 = .;
        . = 0x00017654; gUnk_02017654 = .;
        . = 0x00017660; gUnk_02017660 = .;
        . = 0x000176A0; gUnk_020176A0 = .;
        . = 0x000176E0; gUnk_020176E0 = .;
        . = 0x00017700; gUnk_02017700 = .;
        . = 0x00017830; gUnk_02017830 = .;
        . = 0x000178E0; gUnk_020178E0 = .;
        . = 0x00017AA0; gUnk_02017AA0 = .;
        . = 0x00017BA0; gUnk_02017BA0 = .;
        . = 0x00018EA0; gUnk_02018EA0 = .;
        . = 0x00018EB0; gUnk_02018EB0 = .;
        . = 0x00018EE0; gUnk_02018EE0 = .;
        . = 0x00019EE0; gUnk_02019EE0 = .;
        . = 0x00019EEC; gUnk_02019EEC = .;
        . = 0x00019F6C; gUnk_02019F6C = .;
        . = 0x0001AEE0; gUnk_0201AEE0 = .;
        . = 0x00021EE0; gUnk_02021EE0 = .;
        . = 0x00021F00; gUnk_02021F00 = .;
        . = 0x00021F20; gUnk_02021F20 = .;
        . = 0x00021F30; gUnk_02021F30 = .;
        . = 0x00021F70; gUnk_02021F70 = .;
        . = 0x00022030; gUnk_02022030 = .;
        . = 0x00022130; gUnk_02022130 = .;
        . = 0x00022730; gUnk_02022730 = .;
        . = 0x00022740; gUnk_02022740 = .;
        . = 0x00022750; gUnk_02022750 = .;
        . = 0x00022780; gUnk_02022780 = .;
        . = 0x000227E8; gUnk_020227E8 = .;
        . = 0x0002281E; gUnk_0202281E = .;
        . = 0x00022830; gUnk_02022830 = .;
        . = 0x00024030; gUnk_02024030 = .;
        . = 0x00024048; gUnk_02024048 = .;
        . = 0x00024050; gUnk_02024050 = .;
        . = 0x00024090; gUnk_02024090 = .;
        . = 0x00024490; gUnk_02024490 = .;
        . = 0x00024494; gUnk_02024494 = .;
        . = 0x000246B0; gUnk_020246B0 = .;
        . = 0x00025EB0; gUnk_02025EB0 = .;
        . = 0x00025EB4; gUnk_02025EB4 = .;
        . = 0x00027EB4; gUnk_02027EB4 = .;
        . = 0x00028EB4; gUnk_02028EB4 = .;
        . = 0x0002AEB4; gUnk_0202AEB4 = .;
        . = 0x0002BEB4; gUnk_0202BEB4 = .;
        . = 0x0002CEB4; gUnk_0202CEB4 = .;
        . = 0x00030EB4; gUnk_02030EB4 = .;
        . = 0x00031EC0; gUnk_02031EC0 = .;
        . = 0x00032EC0; gUnk_02032EC0 = .;
        . = 0x00032EDC; gUnk_02032EDC = .;
        . = 0x00032F14; gUnk_02032F14 = .;
        . = 0x00033280; gUnk_02033280 = .;
        . = 0x00033290; gUnk_02033290 = .;
        . = 0x00033A90; gUnk_02033A90 = .;
        . = 0x00033AB8; gUnk_02033AB8 = .;
        . = 0x00033ACC; gUnk_02033ACC = .;
        . = 0x000342CC; gUnk_020342CC = .;
        . = 0x000342F8; gUnk_020342F8 = .;
        . = 0x00034330; gUnk_02034330 = .;
        . = 0x00034350; gUnk_02034350 = .;
        . = 0x00034364; gUnk_02034364 = .;
        . = 0x00034398; gUnk_02034398 = .;
        . = 0x00034480; gUnk_02034480 = .;
        . = 0x00034490; gUnk_02034490 = .;
        . = 0x00034492; gUnk_02034492 = .;
        . = 0x000344A0; gUnk_020344A0 = .;
        . = 0x000344B0; gUnk_020344B0 = .;
        . = 0x000344F0; gUnk_020344F0 = .;
        . = 0x00034CB0; gUnk_02034CB0 = .;
        . = 0x00034CB2; gUnk_02034CB2 = .;
        . = 0x00034CF0; gUnk_02034CF0 = .;
        . = 0x00034D30; gUnk_02034D30 = .;
        . = 0x00034DF0; gUnk_02034DF0 = .;
        . = 0x000350E2; gUnk_020350E2 = .;
        . = 0x000350F0; gUnk_020350F0 = .;
        . = 0x00035160; gUnk_02035160 = .;
        . = 0x000354B0; gUnk_020354B0 = .;
        . = 0x000354B4; gUnk_020354B4 = .;
        . = 0x000354C0; gUnk_020354C0 = .;
        . = 0x0003553E; gUnk_0203553E = .;
        . = 0x00035540; gUnk_02035540 = .;
        . = 0x00035542; gUnk_02035542 = .;
        . = 0x00036540; gUnk_02036540 = .;
        . = 0x00036570; gUnk_02036570 = .;
        . = 0x000369F0; gUnk_020369F0 = .;
        . = 0x00036A38; gUnk_02036A38 = .;
        . = 0x00036A40; gUnk_02036A40 = .;
        . = 0x00036A50; gUnk_02036A50 = .;
        . = 0x00036A58; gUnk_02036A58 = .;
        . = 0x00036AD8; gUnk_02036AD8 = .;
        . = 0x00036BB8; gUnk_02036BB8 = .;
        . = 0x00038560; gUnk_02038560 = .;
        . = 0x00040000;
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000020; gUnk_03000020 = .;
        . = 0x00000420; gUnk_03000420 = .;
        . = 0x00000B80; gUnk_03000B80 = .;
        . = 0x00000BD4; gUnk_03000BD4 = .;
        . = 0x00000BF0; gUnk_03000BF0 = .;
        . = 0x00000BF6; gUnk_03000BF6 = .;
        . = 0x00000BF8; gUnk_03000BF8 = .;
        . = 0x00000C24; gUnk_03000C24 = .;
        . = 0x00000C30; gUnk_03000C30 = .;
        . = 0x00000E10; gUnk_03000E10 = .;
        . = 0x00000F50; gUnk_03000F50 = .;
        . = 0x00000F58; gUnk_03000F58 = .;
        . = 0x00000F64; gUnk_03000F64 = .;
        . = 0x00000F70; gUnk_03000F70 = .;
        . = 0x00000F88; gUnk_03000F88 = .;
        . = 0x00000FBC; gUnk_03000FBC = .;
        . = 0x00000FD0; gUnk_03000FD0 = .;
        . = 0x00000FF0; gUnk_03000FF0 = .;
        . = 0x00001000; gUnk_03001000 = .;
        . = 0x00001010; gUnk_03001010 = .;
        . = 0x00001020; gUnk_03001020 = .;
        . = 0x000010A0; gUnk_030010A0 = .;
        . = 0x000010AC; gUnk_030010AC = .;
        . = 0x000010D8; gUnk_030010D8 = .;
        . = 0x000010EC; gUnk_030010EC = .;
        . = 0x0000110C; gUnk_0300110C = .;
        . = 0x00001150; gUnk_03001150 = .;
        . = 0x00001160; gLinkEntity = .;
        . = 0x00001198; gUnk_03001198 = .;
        . = 0x000011E8; gUnk_030011E8 = .;
        . = 0x000015A0; gUnk_030015A0 = .;
        . = 0x00003BE0; gUnk_03003BE0 = .;
        . = 0x00003C70; gUnk_03003C70 = .;
        . = 0x00003D68; gUnk_03003D68 = .;
        . = 0x00003D70; gUnk_03003D70 = .;
        . = 0x00003D80; gUnk_03003D80 = .;
        . = 0x00003D90; gUnk_03003D90 = .;
        . = 0x00003DA0; gUnk_03003DA0 = .;
        . = 0x00003DA8; gUnk_03003DA8 = .;
        . = 0x00003DB0; gUnk_03003DB0 = .;
        . = 0x00003DB8; gUnk_03003DB8 = .;
        . = 0x00003DBC; gUnk_03003DBC = .;
        . = 0x00003DC0; gUnk_03003DC0 = .;
        . = 0x00003DD0; gUnk_03003DD0 = .;
        . = 0x00003DE0; gUnk_03003DE0 = .;
        . = 0x00003DE4; gUnk_03003DE4 = .;
        . = 0x00003DF0; gUnk_03003DF0 = .;
        . = 0x00003DF8; gUnk_03003DF8 = .;
        . = 0x00003F80; gUnk_03003F80 = .;
        . = 0x00003FC0; gUnk_03003FC0 = .;
        . = 0x00004010; gUnk_03004010 = .;
        . = 0x00004020; gUnk_03004020 = .;
        . = 0x00004030; gUnk_03004030 = .;
        . = 0x00004040; gUnk_03004040 = .;
        . = 0x0000404C; gUnk_0300404C = .;
        . = 0x0000404D; gUnk_0300404D = .;
        . = 0x000043D0; gUnk_030043D0 = .;
        . = 0x00004D50; gUnk_03004D50 = .;
        . = 0x00004D54; gUnk_03004D54 = .;
        . = 0x00004DD8; gUnk_03004DD8 = .;
        . = 0x00004DDC; gUnk_03004DDC = .;
        . = 0x00004DE0; gUnk_03004DE0 = .;
        . = 0x000055E0; gUnk_030055E0 = .;
        . = 0x000056F0; gUnk_030056F0 = .;
        . = 0x000056F1; gUnk_030056F1 = .;
        . = 0x00005740; gUnk_03005740 = .;
        . = 0x0000574C; gUnk_0300574C = .;
        . = 0x00005760; gUnk_03005760 = .;
        . = 0x00005770; gUnk_03005770 = .;
        . = 0x00005778; gUnk_03005778 = .;
        . = 0x00005780; gUnk_03005780 = .;
        . = 0x0000579C; gUnk_0300579C = .;
        . = 0x000057A8; gUnk_030057A8 = .;
        . = 0x000057BC; gUnk_030057BC = .;
        . = 0x000057CC; gUnk_030057CC = .;
        . = 0x000057D4; gUnk_030057D4 = .;
        . = 0x00005800; gUnk_03005800 = .;
        . = 0x0000581C; gUnk_0300581C = .;
        . = 0x00005828; gUnk_03005828 = .;
        . = 0x0000583C; gUnk_0300583C = .;
        . = 0x0000584C; gUnk_0300584C = .;
        . = 0x00005854; gUnk_03005854 = .;
        . = 0x00005864; gUnk_03005864 = .;
        . = 0x00005880; gUnk_03005880 = .;
        . = 0x0000588C; gUnk_0300588C = .;
        . = 0x000058A0; gUnk_030058A0 = .;
        . = 0x000058B0; gUnk_030058B0 = .;
        . = 0x000058B8; gUnk_030058B8 = .;
        . = 0x000058C8; gUnk_030058C8 = .;
        . = 0x000058DC; gUnk_030058DC = .;
        . = 0x000058F8; gUnk_030058F8 = .;
        . = 0x00005918; gUnk_03005918 = .;
        . = 0x000059F0; gUnk_030059F0 = .;
        . = 0x00005CA4; gUnk_03005CA4 = .;
        . = 0x00005CD0; gUnk_03005CD0 = .;
        . = 0x00005CFC; gUnk_03005CFC = .;
        . = 0x00005D18; gUnk_03005D18 = .;
        . = 0x00005D24; gUnk_03005D24 = .;
        . = 0x00005D58; gUnk_03005D58 = .;
        . = 0x00005D5C; gUnk_03005D5C = .;
        . = 0x00005D90; gUnk_03005D90 = .;
        . = 0x00005E60; gUnk_03005E60 = .;
        . = 0x00005E98; gUnk_03005E98 = .;
        . = 0x00005F24; gUnk_03005F24 = .;
        . = 0x00005F40; gUnk_03005F40 = .;
        . = 0x00005FBC; gUnk_03005FBC = .;
        . = 0x00005FF0; gUnk_03005FF0 = .;
        . = 0x000060F0; gUnk_030060F0 = .;
        . = 0x00006164; gUnk_03006164 = .;
        . = 0x00006580; gUnk_03006580 = .;
        . = 0x0000659C; gUnk_0300659C = .;
        . = 0x000067E4; gUnk_030067E4 = .;
        . = 0x000068CC; gUnk_030068CC = .;
        . = 0x0000694C; gUnk_0300694C = .;
        . = 0x0000695C; gUnk_0300695C = .;
        . = 0x00007F00; gUnk_03007F00 = .;
        . = 0x00007FA0; gUnk_03007FA0 = .;
        . = 0x00007FFA; gUnk_03007FFA = .;
        . = 0x00008000;
    } >iwram

    rom : ALIGN(2) {

        /* handwritten assembly */
        asm/crt0.o(.text);
        asm/code_08000108.o(.text);
        data/data_1.o(.rodata);
        asm/code_08000E44.o(.text);
        asm/libgcc.o(.text);
        asm/code_08000F10.o(.text);
        data/data_2.o(.rodata);
        asm/code_080011C4.o(.text);
        data/data_4.o(.rodata);
        asm/code_08003FC4.o(.text);
		asm/code_080043E8.o(.text);
        data/data_6.o(.rodata);
        asm/code_0800857C.o(.text);


        /* C source compiled with interworking */
        asm/code_08016B30.o(.text);
		asm/updateBackgroundRegisters.o(.text);
		asm/code_08016DF8.o(.text);
        /* C source compiled without interworking */
        asm/code_08018500.o(.text);
		src/sub_0801D5EC.o(.text);
		src/_dmaFill32.o(.text);
		asm/sub_0801D630.o(.text);
		asm/sub_0801D66C.o(.text);
		asm/readKeyInput.o(.text);
		asm/code_0801D714.o(.text);
		asm/code_0801D79C.o(.text);
		asm/sub_0804AA30.o(.text);
		src/createEnemy.o(.text);
		src/sub_0804AA84.o(.text); /* wip */
		asm/code_0804AA84.o(.text);
		src/loadRoomEntityList.o(.text);
		asm/createEntity.o(.text);
		asm/code_0804AEB0.o(.text);
		src/sub_0804AFF4.o(.text);
		src/loadRoom.o(.text);
		asm/code_0804B058.o(.text);
		asm/upperInn.o(.text);
		asm/code_0804B9F8.o(.text);
		src/sub_08050008.o(.text);
		src/sub_08050024.o(.text);
		asm/code_08050038.o(.text);
		asm/initializeLink.o(.text);
		asm/code_08052620.o(.text);
		src/bitGetters.o(.text);
		src/modHealth.o(.text);
		asm/code_080526CC.o(.text);
		src/sub_08055E08.o(.text);
		asm/sub_08055E24.o(.text);
		asm/mainLoop.o(.text);
		asm/sub_08055F70.o(.text);
		asm/code_08055FF4.o(.text);
		src/sub_0805E374.o(.text);
		src/sub_0805E3A0.o(.text);
		asm/code_0805E3B0.o(.text);
		asm/getEmptyEntity.o(.text);
		asm/code_0805E744.o(.text);
		src/sub_0806F9EC.o(.text);
		src/sub_0806FA04.o(.text);
		src/sub_0806FA24.o(.text);
		src/sub_0806FA30.o(.text);
		src/positionRelative.o(.text);
		asm/code_0806FA6C.o(.text);
		src/sub_0807C998.o(.text);
		src/sub_0801D754.o(.text);
		asm/sub_0807CA18.o(.text);
		asm/getInventoryValue.o(.text);
		asm/code_0807CAA0.o(.text);
		src/getProgressFlag.o(.text);
		asm/code_0807CC3C.o(.text);
		asm/sub_080A2838.o(.text);
		asm/sub_080A285C.o(.text);
		src/createObject.o(.text);
		asm/sub_080A2988.o(.text);
		asm/createFx.o(.text);
		asm/code_080A29BC.o(.text);
		asm/sub_080AD8F0.o(.text);
		asm/code_080AD90C.o(.text);
        /* library functions */
        asm/m4a_asm.o(.text);
        asm/m4a.o(.text);
        asm/libagbsyscall.o(.text);
        asm/code_080B1520.o(.text);
        *libc.a:memcpy.o(.text);

        /* handwritten assembly in arm mode */
        asm/intr.o(.text);
        /* data */
        data/data_8.o(.rodata);
    } >rom

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
