#include "item.h"
#include "physics.h"
#include "sound.h"
#include "functions.h"
#include "playeritem.h"
#include "functions.h"

extern void (*const gUnk_0811BD98[])(ItemBehavior*, u32);

extern s8 gUnk_0811BDAC[];

void ItemBomb(ItemBehavior* this, u32 idx) {
    gUnk_0811BD98[this->stateID](this, idx);
}

void sub_08075FF8(ItemBehavior* this, u32 idx) {
    Entity* entity;
    u32 maxBombs;
    u32 bombCount;
    s8* pos;
    s32 x;
    s32 y;

    if ((gPlayerState.jump_status | gPlayerState.field_0x3[1]) == 0) {
        bombCount = 0;
        for (entity = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2); entity != NULL;
             entity = FindNextDuplicateID(entity, 2)) {
            bombCount++;
        }
        maxBombs = this->behaviorID == 7 ? 3 : 1;
        if (maxBombs > bombCount) {
            entity = CreatePlayerItemWithParent(this, 2);
            if (entity != NULL) {
                pos = &gUnk_0811BDAC[gPlayerEntity.animationState & 6];
                PositionRelative(&gPlayerEntity, entity, Q_16_16(pos[0]), Q_16_16(pos[1]));
                ModBombs(-1);
                SoundReq(SFX_PLACE_OBJ);
            }
        }
    }
    DeletePlayerItem(this, idx);
}

ASM_FUNC("asm/non_matching/itemBomb/sub_08076088.inc", void sub_08076088(ItemBehavior* this, void* arg1))
