/**
 * @file lilypadSmall.c
 * @ingroup Objects
 *
 * @brief Lilypad Small object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
} LilypadSmallEntity;

static void sub_08097B24(LilypadSmallEntity* this);
static bool32 CheckMovePlayer(LilypadSmallEntity* this);

void LilypadSmall(LilypadSmallEntity* this) {
    u32 rand;
    u16* psVar4;

    if (super->action == 0) {
        super->action = 1;
        super->timer = 90;
        rand = Random();
        super->subtimer = rand;
        super->frameIndex = (rand >> 0x10) & 3;
        super->spriteSettings.draw = TRUE;
        super->spritePriority.b0 = 7;
        super->child = GetCurrentRoomProperty(super->type2);
        UpdateRailMovement(super, (u16**)&super->child, &this->unk_70);
    }
    SyncPlayerToPlatform(super, CheckMovePlayer(this));
    sub_08097B24(this);
    psVar4 = &this->unk_70;
    if (--*psVar4 == 0) {
        UpdateRailMovement(super, (u16**)&super->child, psVar4);
    }
}

static bool32 CheckMovePlayer(LilypadSmallEntity* this) {
    if (!(gPlayerState.flags & PL_MINISH)) {
        return FALSE;
    } else if (EntityInRectRadius(super, &gPlayerEntity.base, 8, 8) == 0) {
        return FALSE;
    } else if (!PlayerCanBeMoved()) {
        return FALSE;
    } else {
        gPlayerState.field_0x14 = 1;
        if (gPlayerEntity.base.z.HALF.HI != 0) {
            return FALSE;
        } else {
            return TRUE;
        }
    }
}

static void sub_08097B24(LilypadSmallEntity* this) {
    static const u16 gUnk_08123318[] = {
        0x100, 0x101, 0x102, 0x101, 0x100, 0xff, 0xfe, 0xff,
    };
    u32 temp;
    u32 temp2;
    const u16* temp3;

    if (--super->timer == 0) {
        super->timer = 90;
        super->frameIndex = (super->frameIndex + 1) & 3;
    }
    temp3 = gUnk_08123318;
    temp2 = ++super->subtimer;

    temp = temp3[(temp2 >> 5) & 7];
    SetAffineInfo(super, temp, temp, 0);
}
