#include "item.h"
#include "coord.h"
#include "sound.h"
#include "functions.h"
#include "playeritem.h"

extern void (*const gUnk_0811BD98[])(ItemBehavior*, u32);

extern Entity* CreatePlayerBomb();
extern s8 gUnk_0811BDAC[];
extern void ModBombs(s32);

void ItemBomb(ItemBehavior* this, u32 arg1) {
    gUnk_0811BD98[this->stateID](this, arg1);
}

void sub_08075FF8(ItemBehavior* this, u32 arg1) {
    Entity* entity;
    u32 maxBombs;
    u32 bombCount;
    s8* tmp;
    s32 x;
    s32 y;

    if ((gPlayerState.jump_status | gPlayerState.field_0x3[1]) == 0) {
        bombCount = 0;
        for (entity = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2); entity != NULL;
             entity = FindNextDuplicateID(entity, 2)) {
            bombCount += 1;
        }
        maxBombs = this->behaviorID == 7 ? 3 : 1;
        if (maxBombs > bombCount) {
            entity = CreatePlayerBomb(this, 2);
            if (entity != NULL) {
                tmp = &gUnk_0811BDAC[gPlayerEntity.animationState & 6];
                // TODO fix array access
                x = tmp[0] << 0x10;
                y = tmp[1] << 0x10;
                PositionRelative(&gPlayerEntity, entity, x, y);
                ModBombs(-1);
                SoundReq(SFX_104);
            }
        }
    }
    sub_08077E78(this, arg1);
}

// TODO arg1 type not yet known, called by sub_080761C0 and sub_080762D8
ASM_FUNC("asm/non_matching/itemBomb/sub_08076088.inc", void sub_08076088(ItemBehavior* this, void* arg1))
