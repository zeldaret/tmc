#include "global.h"
#include "entity.h"
#include "room.h"
#include "screen.h"
#include "functions.h"
#include "flags.h"
#include "greatFairy.h"

// Main
void sub_08086A90(Entity* ent) {
    u8 bVar1;

    if (ent->action == 0) {
        bVar1 = __modsi3((ent->entityType).parameter1, 11);
        (ent->entityType).parameter2 = bVar1;
    }
    gGreatFairy[(ent->entityType).parameter2](ent);
}

// Behaviors
void sub_08086ABC(Entity* ent) {
    gGreatFairyBehaviors[ent->action](ent);

    if ((gLinkEntity.y.HALF.HI - gRoomControls.roomOriginY) < 168) {

        gRoomControls.cameraTarget = ent;
        gRoomControls.unk5 = 2;
    } else {
        gRoomControls.cameraTarget = &gLinkEntity;
        gRoomControls.unk5 = 2;
    }
}

// Init
void sub_08086AF8(Entity* ent) {
    sub_08087380();
    ent->parameter3 = 0;
    ent->cutsceneBeh.HWORD = 290;
}

// Dormant update
void sub_08086B10(Entity* ent) {
    u16* pFrame;    // r1@2
    s32 frame;      // r1@4
    Entity* ripple; // r5@16
    u32 event;

    event = CheckRoomFlag(0);
    if (event == 0) {
        return;
    }
    pFrame = &ent->cutsceneBeh.HWORD;
    if (*pFrame != 0) {
        *pFrame = *pFrame - 1;
    }
    frame = *pFrame;

    if (frame == 0x96) {
        goto LABEL_16;
    }

    if (frame < 0x97) {
        if (frame != 0) {
            if (frame == 0x82) {
                goto LABEL_16;
            } else {
                return;
            }
        }
        goto LABEL_17;
    } else {
        if (frame == 0xd2) {
            goto LABEL_16;
        }
        if (frame < 0xd3) {
            if (frame == 0xaa) {
                goto LABEL_16;
            } else
                return;
        }
        if (frame == 289) {
            goto LABEL_16;
        } else {
            return;
        }
    }

LABEL_17:
    ent->action = 2;
    return;
LABEL_16:
    ripple = sub_080873AC(ent, 6, 0);
    if (ripple) {
        PositionRelative(ent, ripple, (s32)gGreatFairyRippleOffsets[ent->parameter3] << 16,
                         (s32)gGreatFairyRippleOffsets[ent->parameter3 + 1] << 16);
        ent->parameter3 += 2;
    }
}

// Create Great Fairy
void sub_08086BA0(Entity* ent) {
    Entity* gf;

    gf = sub_080873AC(ent, 7, 0);
    if (gf != NULL) {
        PositionRelative(ent, gf, 0, 0x80000);
        ent->action = 3;
    }
}

// Great Fairy spawn-in update
void sub_08086BC4(Entity* ent) {
    Entity* mini;
    u32 var;

    if (gRoomVars.greatFairyState & 1) {
        mini = sub_080873AC(ent, 2, 0);
        if (mini != NULL) {
            CopyPosition(ent, mini);
            DoFade(6, 4);
            PlaySFX(325);
            ent->action = 4;
            ent->parameter3 = 0x3c;
            var = ent->spriteSettings.raw & ~0x3;
            ent->spriteSettings.raw = (ent->spriteSettings.raw & var) | 1;
        }
    }
}

// Mini Great Fairy update
void sub_08086C18(Entity* ent) {
    Entity* target;

    sub_08004274(ent);
    if (ent->parameter3 != 0) {
        ent->parameter3 = ent->parameter3 - 1;
    } else {
        target = sub_080873AC(ent, 1, 0);
        if (target != NULL) {
            PositionRelative(ent, target, 0, -0x140000);
            ent->action = 5;
            ent->parameter3 = 120;
            ent->field_0xf = 0;
        }
    }
}

// Final Great Fairy update
void sub_08086C58(Entity* ent) {
    Entity* target;

    if (ent->parameter3 != 0) {
        ent->parameter3 = ent->parameter3 - 1;
    } else {
        if ((ent->field_0xf == 0) && (target = sub_080873AC(ent, 9, 0), target != NULL)) {
            PositionRelative(ent, target, 0, -0x4C0000);
            target->parent = ent;
            ent->field_0xf = 1;
        }
    }
    sub_08004274(ent);
}

// Wings
void sub_08086C9C(Entity* ent) {
    gGreatFairyWings[ent->action](ent);
}

void sub_08086CB4(Entity* ent) {
    sub_08087380();
    ent->ticks.b0 = 5;
    ent->spriteSettings.b.ss0 = 1;
    ent->spriteOrder.b1 = 1;
    gScreen.controls.windowOutsideControl = 3904;
    gScreen.controls.mosaicSize = 2057;
    ent->nonPlanarMovement = 1024;
    sub_0805EC9C(ent, 1024, 256, 0);
}

// Wings init
void sub_08086D18(Entity* ent) {
    s32 iVar1;

    iVar1 = (u16)ent->nonPlanarMovement - 32;
    ent->nonPlanarMovement = (short)iVar1;
    if (iVar1 * 65536 >> 16 == 256) {
        ent->action = 2;
        sub_0805EC60(ent);
        gRoomVars.greatFairyState = gRoomVars.greatFairyState | 32;
        gUnk_02033280 = gUnk_02033280 | 4;
    } else {
        sub_0805EC9C(ent, ent->nonPlanarMovement, 256, 0);
    }
}

void nullsub_116(void) {
}

// Wake
void sub_08086D6C(Entity* ent) {
    gGreatFairyWake[ent->action](ent);
}

// Wake init
void sub_08086D84(Entity* ent) {
    sub_08087380();
    ent->spriteSettings.b.ss0 = 1;
    ent->ticks.b0 = 6;
}

// Wake update
void sub_08086DAC(Entity* ent) {
    sub_08004274(ent);
}

// Mini great fairy
void sub_08086DB4(Entity* ent) {
    gGreatFairyMini[ent->action](ent);
}

// Mini great fairy init
void sub_08086DCC(Entity* ent) {
    Entity* wake;

    wake = sub_080873AC(ent, 4, 0);
    if (wake != NULL) {
        CopyPosition(ent, wake);
        wake->parent = ent;
        sub_08087380(ent);
        ent->spriteSettings.b.ss0 = 1;
        ent->field_0xf = 0;
    }
}

// Mini great fairy pre-drip
void sub_08086E04(Entity* ent) {
    Entity* target;

    sub_08004274(ent);
    ent->height.WORD = ent->height.WORD + -0x8000;
    if (ent->height.HALF.HI == -20) {
        ent->action = 2;
        PlaySFX(321);
    } else {
        if (((ent->height.HALF.HI == -10) && (ent->field_0xf == 0)) &&
            (target = sub_080873AC(ent, 5, 0), target != NULL)) {
            PositionRelative(ent, target, 0, 0x40000);
            ent->field_0xf = 1;
        }
    }
}

void sub_08086E64(Entity* ent) {
    sub_08004274(ent);
    sub_080873D0(ent);
    if ((gRoomVars.greatFairyState & 1) != 0) {
        DeleteEntity(ent);
    }
}

// Mini great fairy behaviors
void sub_08086E8C(Entity* ent) {
    gGreatFairyMiniAnim[ent->action](ent);
}

void sub_08086EA4(Entity* ent) {
    sub_08087380();
    ent->ticks.b0 = 6;
    ent->spriteSettings.b.ss0 = 1;
}

// Mini great fairy translate
void sub_08086ED0(Entity* ent) {
    Entity* parent = ent->parent;

    CopyPosition(parent, ent);

    if (ent->height.HALF.HI == -20) {
        ent->action = 2;
        ent->parameter3 = 90;
        ent->nonPlanarMovement = 4096;
        ent->spriteOrder.b0 = 3;
        sub_0805EC9C(ent, 256, 256, 0);
    }
}

// Mini great fairy stretch
void sub_08086F10(Entity* ent) {
    s32 iVar2;

    if (--ent->parameter3 == 0) {
        gRoomVars.greatFairyState = gRoomVars.greatFairyState | 1;
        ent->action = 3;
        sub_0805EC60(ent);
    } else {
        iVar2 = (u16)ent->nonPlanarMovement - 24;
        ent->nonPlanarMovement = iVar2;
        sub_0805EC9C(ent, 256, iVar2 * 65536 >> 20, 0);
    }
}

// Drip
void sub_08086F54(Entity* ent) {
    gGreatFairyDrip[ent->action](ent);
}

// Drip init
void sub_08086F6C(Entity* ent) {
    sub_08087380();
    ent->spriteSettings.b.ss0 = 1;
    ent->height.HALF.HI = 0;
    ent->ticks.b0 = 5;
    PlaySFX(320);
}

// Drip update
void sub_08086FA0(Entity* ent) {
    sub_08004274(ent);
    if ((ent->frames.all & 128) != 0) {
        DeleteEntity(ent);
    }
}

// Ripple
void sub_08086FC0(Entity* ent) {
    gGreatFairyRipple[ent->action](ent);
}

// Ripple init
void sub_08086FD8(Entity* ent) {
    sub_08087380();
    ent->spriteSettings.b.ss0 = 1;
    ent->ticks.b0 = 6;
}

// Ripple update
void sub_08087000(Entity* ent) {
    if ((gRoomVars.greatFairyState & 2) != 0) {
        DeleteEntity(ent);
    } else {
        sub_08004274(ent);
    }
}

// Big ripple
void sub_08087024(Entity* ent) {
    gGreatFairyBigRipple[ent->action](ent);
}

// Big ripple init
void sub_0808703C(Entity* ent) {
    sub_08087380();
    ent->parameter3 = 120;
    ent->spriteSettings.b.ss0 = 1;
    ent->ticks.b0 = 5;
    PlaySFX(249);
}

// Big ripple update
void sub_0808706C(Entity* ent) {
    Entity* target;

    sub_08004274(ent);
    if (ent->parameter3 != 0) {
        ent->parameter3--;
    } else {
        target = sub_080873AC(ent, 3, 0);
        if (target != NULL) {
            PositionRelative(ent, target, 0, -0x80000);
            gRoomVars.greatFairyState = gRoomVars.greatFairyState | 2;
            DeleteEntity(ent);
        }
    }
}

// Energy
void GreatFairyEnergy(Entity* ent) {
    gGreatFairyEnergy[ent->action](ent);
}

// Energy init
void sub_080870CC(Entity* ent) {
    sub_08087380();
    ent->spriteSettings.b.ss0 = 1;
    ent->ticks.b0 = 5;
}

// Energy update
void sub_080870F4(Entity* ent) {
    sub_08004274(ent);
    if ((ent->frames.all & 128) != 0) {
        DeleteEntity(ent);
    }
}

void sub_08087114(Entity* ent) {
    if ((ent->entityType).parameter2 == 0) {
        gGreatFairyInteract1[ent->action](ent);
    } else {
        gGreatFairyInteract2[ent->action](ent);
        sub_08004274(ent);
    }
}

#ifdef NON_MATCHING
void sub_08087150(Entity* ent) {
    u8 var;
    u32 var2;

    sub_08087380(ent);
    ent->spriteSettings.b.ss0 = 1;
    ent->spriteOrientation &= 63;
    ent->spriteOrder.b0 = 0;
    ent->ticks.b0 = 3;
    ent->nonPlanarMovement = 128;
    ent->direction = 16;
    var = gUnk_0812079C[0];
    ent->palette = ((var & 15) * 16) | ent->direction;
}
#else
NAKED
void sub_08087150(Entity* ent) {
    asm(".include \"asm/greatFairy/sub_08087150.inc\"");
}
#endif

void nullsub_516() {
}

void sub_080871A8(Entity* ent) {
    u32 bVar1;

    bVar1 = ent->parameter3 -= 1;

    if (bVar1 == 0) {
        ent->action = 3;
        ent->parameter3 = 60;
        gRoomVars.greatFairyState = gRoomVars.greatFairyState | 4;
    }
}

void sub_080871D0(Entity* ent) {
    u8 bVar1;

    bVar1 = ent->parameter3 -= 1;
    if (bVar1 == 0) {
        gRoomVars.greatFairyState = gRoomVars.greatFairyState | 8;
        DeleteEntity(ent);
    }
}

#ifdef NON_MATCHING
void sub_080871F8(Entity* ent) {
    s32 bVar1;

    if (((ent->attachedEntity->x.HALF.HI == (ent->x).HALF.HI) &&
         ((Entity*)ent->attachedEntity)->y.HALF.HI + -32 == (ent->y).HALF.HI)) {
        ent->action = 2;
    } else {
        bVar1 = (ent->x).HALF.HI;
        sub_080045D4();
        ent->direction = bVar1;
        sub_0806F69C(ent);
    }
}
#else
NAKED
void sub_080871F8(Entity* ent) {
    asm(".include \"asm/greatFairy/sub_080871F8.inc\"");
}
#endif

void sub_08087240(Entity* ent) {
    if ((gRoomVars.greatFairyState & 4) != 0) {
        ent->action = 3;
        ent->parameter3 = 20;
        ent->direction = 16;
    }
}

void sub_08087264(Entity* ent) {
    if (ent->parameter3 != 0) {
        ent->parameter3--;
        sub_0806F69C(ent);
    }
}

void sub_0808727C(Entity* ent) {

    if (--ent->parameter3 == 0) {
        DeleteEntity(ent);
    }
}

void sub_08087294(Entity* ent) {
    gUnk_081207A4[ent->action](ent);
}

#ifdef NON_MATCHING
void sub_080872AC(Entity* ent) {
    ent->spriteSettings.b.ss0 = 1;
    ent->spriteOrientation.b2 = 1;
    ent->spriteOrder.b0 = 0;
    ent->field_0x68 = (u16)(ent->x).HALF.HI;
    ent->field_0x6a = (u16)(ent->y).HALF.HI;
    ent->direction = (u8)Random() & 0x1F;
    ent->nonPlanarMovement = 32;
    sub_08087380(ent);
}
#else
NAKED
void sub_080872AC(Entity* ent) {
    asm(".include \"asm/greatFairy/sub_080872AC.inc\"");
}
#endif
