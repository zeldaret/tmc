#include "object.h"
#include "functions.h"

extern u16 gUnk_08123318[];

static void sub_08097B24(Entity* this);
static bool32 sub_08097ADC(Entity* this);

void LilypadSmall(Entity* this) {
    u32 rand;
    u16* psVar4;

    if (this->action == 0) {
        this->action = 1;
        this->actionDelay = 0x5a;
        rand = Random();
        this->field_0xf = rand;
        this->frameIndex = (rand >> 0x10) & 3;
        this->spriteSettings.draw = TRUE;
        this->spritePriority.b0 = 7;
        this->child = GetCurrentRoomProperty(this->type2);
        sub_080A2CC0(this, (u16**)&this->child, &this->field_0x70.HALF.LO);
    }
    sub_080A2BE4(this, sub_08097ADC(this));
    sub_08097B24(this);
    psVar4 = (u16*)&this->field_0x70;
    if (--*psVar4 == 0) {
        sub_080A2CC0(this, (u16**)&this->child, psVar4);
    }
}

static bool32 sub_08097ADC(Entity* this) {
    if (!(gPlayerState.flags & PL_MINISH)) {
        return FALSE;
    } else if (EntityInRectRadius(this, &gPlayerEntity, 8, 8) == 0) {
        return FALSE;
    } else if (!sub_08079F8C()) {
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
    u32 temp;
    u32 temp2;
    u16* temp3;

    if (--this->actionDelay == 0) {
        this->actionDelay = 90;
        this->frameIndex = (this->frameIndex + 1) & 3;
    }
    temp3 = gUnk_08123318;
    temp2 = ++this->field_0xf;

    temp = temp3[(temp2 >> 5) & 7];
    SetAffineInfo(this, temp, temp, 0);
}
