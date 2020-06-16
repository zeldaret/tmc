#include "global.h"
#include "functions.h"
#include "entity.h"
#include "npc.h"

//TODO: group into arrays of 3: [npc, npc_HEAD, npc_FUSION]
void (*const gNPCFunctions[])(Entity* ent) = {
    DeleteEntity, NULL,         NULL,         sub_0805FD24, NULL,         sub_0805FDC0, sub_0805FDF8, NULL,
    sub_0805FFA0, sub_0805FFD8, sub_080600A8, sub_080603B4, sub_080603FC, NULL,         sub_0806097C, sub_080609E8,
    NULL,         NULL,         sub_08061B8C, sub_08061C60, sub_08062088, sub_080620C8, sub_08062834, sub_08062A60,
    sub_08063CF8, sub_08063FAC, NULL,         sub_08062AD8, NULL,         NULL,         sub_08062B98, NULL,
    NULL,         sub_08064508, sub_08064524, NULL,         sub_08062CF0, NULL,         NULL,         sub_08062E20,
    NULL,         NULL,         sub_08062E60, NULL,         NULL,         sub_08062F70, sub_08062FF0, NULL,
    sub_080631E8, NULL,         NULL,         sub_080632A8, sub_080633E0, NULL,         sub_08063524, NULL,
    sub_0806370C, sub_08063740, sub_08063974, sub_080639E8, sub_08063A60, NULL,         sub_08063CC4, sub_08063CF8,
    sub_08063FAC, NULL,         sub_08064508, sub_08064524, NULL,         sub_08064790, NULL,         sub_08064860,
    sub_08064890, NULL,         sub_08064960, sub_08064990, NULL,         sub_08064A60, sub_08064A90, sub_08064C6C,
    sub_08064D18, sub_08064D58, NULL,         sub_0806501C, sub_08065054, NULL,         NULL,         sub_08065534,
    sub_080657A8, sub_080657DC, sub_0806581C, NULL,         sub_08065960, sub_08065990, NULL,         sub_08065B1C,
    sub_08065B4C, NULL,         NULL,         sub_08065BA4, NULL,         sub_08065F90, sub_08065FC0, sub_080660A8,
    sub_08066298, sub_080662D8, NULL,         NULL,         sub_080665E4, NULL,         sub_08066780, sub_080667B0,
    NULL,         sub_08066948, sub_08066978, NULL,         NULL,         sub_08066A5C, NULL,         NULL,
    sub_08066CB4, NULL,         NULL,         sub_08066FD8, sub_08067080, sub_08067118, sub_08067158, sub_08067228,
    sub_0806732C, sub_08067380, NULL,         sub_08067750, sub_080677B4, NULL,         sub_08067DFC, sub_08067E2C,
    sub_080681E0, sub_08068270, sub_080682B0, NULL,         NULL,         sub_080686D4, sub_0806889C, sub_0806897C,
    sub_080689C0, NULL,         sub_08068F4C, sub_08068F98, NULL,         sub_080692A0, sub_080692D0, NULL,
    sub_08069514, sub_08069544, NULL,         NULL,         sub_08069784, sub_08069AE8, NULL,         sub_08069B1C,
    sub_08069F2C, sub_0806A194, Syrup,        sub_0806A2B4, NULL,         sub_0806A358, NULL,         NULL,
    sub_0806ABC8, sub_0806AE0C, sub_0806B184, sub_0806B1CC, NULL,         sub_0806B32C, sub_0806B3AC, sub_0806B35C,
    sub_0806B624, sub_0806B664, NULL,         NULL,         sub_0806B9D0, NULL,         NULL,         sub_0806B9F0,
    NULL,         NULL,         sub_0806BBE4, sub_0806BC64, sub_0806BCFC, sub_0806BD54, NULL,         NULL,
    sub_0806BDAC, NULL,         sub_0806BE54, sub_0806BF80, NULL,         NULL,         sub_0806C0B0, NULL,
    NULL,         sub_0806C13C, NULL,         sub_0806C1D4, Simon,        NULL,         NULL,         sub_0806C2C4,
    NULL,         sub_0806C36C, sub_0806C39C, sub_0806C478, sub_0806C510, sub_0806C550, NULL,         NULL,
    sub_0806C5A8, sub_0806C68C, sub_0806C738, sub_0806C780, sub_0806C888, sub_0806CA94, sub_0806CADC, NULL,
    sub_0806CD70, sub_0806CDA8, NULL,         sub_0806CEE8, sub_0806CF18, NULL,         NULL,         sub_0806D86C,
    NULL,         NULL,         sub_0806D9D0, NULL,         sub_0806DCD4, sub_0806DD44, NULL,         NULL,
    sub_0806DD78, NULL,         NULL,         sub_0806DED0, NULL,         NULL,         sub_0806E278, NULL,
    NULL,         sub_0806E308, sub_0806E3E4, sub_0806E458, sub_0806E4A0, NULL,         sub_0806E6E0, sub_0806E710,
    NULL,         sub_0806E894, sub_0806E8CC, sub_0806E8F8, NULL,         sub_0806E91C, NULL,         NULL,
    sub_0806EAF4, sub_0806EBAC, NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,
    NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity,
    NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,
    DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,
    NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity,
    NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,
    DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,
    NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity,
    NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,
    DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,
    NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity,
    NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,
    DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,
    NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity,
    NULL,         NULL,         DeleteEntity, NULL,         NULL,         DeleteEntity, NULL,         NULL,
};

const u8 npc_unk[] = {
    0x04,
    0x05,
    0x06,
    0x06
};