#include "object.h"
#include "functions.h"

static void sub_08097B24(Entity* this);
static bool32 CheckMovePlayer(Entity* this);

void LilypadSmall(Entity* this) {
    u32 rand;
    u16* psVar4;

    if (this->action == 0) {
        this->action = 1;
        this->timer = 90;
        rand = Random();
        this->subtimer = rand;
        this->frameIndex = (rand >> 0x10) & 3;
        this->spriteSettings.draw = TRUE;
        this->spritePriority.b0 = 7;
        this->child = GetCurrentRoomProperty(this->type2);
        UpdateRailMovement(this, (u16**)&this->child, &this->field_0x70.HALF.LO);
    }
    SyncPlayerToPlatform(this, CheckMovePlayer(this));
    sub_08097B24(this);
    psVar4 = (u16*)&this->field_0x70;
    if (--*psVar4 == 0) {
        UpdateRailMovement(this, (u16**)&this->child, psVar4);
    }
}

static bool32 CheckMovePlayer(Entity* this) {
    if (!(gPlayerState.flags & PL_MINISH)) {
        return FALSE;
    } else if (EntityInRectRadius(this, &gPlayerEntity, 8, 8) == 0) {
        return FALSE;
    } else if (!PlayerCanBeMoved()) {
        return FALSE;
    } else {
        gPlayerState.field_0x14 = 1;
        if (gPlayerEntity.z.HALF.HI != 0) {
            return FALSE;
        } else {
            return TRUE;
        }
    }
}

static void sub_08097B24(Entity* this) {
    static const u16 gUnk_08123318[] = {
        0x100, 0x101, 0x102, 0x101, 0x100, 0xff, 0xfe, 0xff,
    };
    u32 temp;
    u32 temp2;
    const u16* temp3;

    if (--this->timer == 0) {
        this->timer = 90;
        this->frameIndex = (this->frameIndex + 1) & 3;
    }
    temp3 = gUnk_08123318;
    temp2 = ++this->subtimer;

    temp = temp3[(temp2 >> 5) & 7];
    SetAffineInfo(this, temp, temp, 0);
}
