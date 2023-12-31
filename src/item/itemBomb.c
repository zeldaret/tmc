#include "item.h"
#include "physics.h"
#include "sound.h"
#include "functions.h"
#include "playeritem.h"
#include "functions.h"

void sub_08075FF8(ItemBehavior*, u32);
void sub_08076488(ItemBehavior*, u32);
void sub_08076518(ItemBehavior*, u32);
void sub_080765E0(ItemBehavior*, u32);

void ItemBomb(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075FF8, NULL, sub_08076488, sub_08076518, sub_080765E0,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08075FF8(ItemBehavior* this, u32 index) {
    static const s8 gUnk_0811BDAC[] = {
        0, -8, 4, -1, 0, 2, -4, -1,
    };
    Entity* entity;
    u32 maxBombs;
    u32 bombCount;
    const s8* pos;
    s32 x;
    s32 y;

    if ((gPlayerState.jump_status | gPlayerState.attack_status) == 0) {
        bombCount = 0;
        for (entity = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2); entity != NULL;
             entity = FindNextDuplicateID(entity, 2)) {
            bombCount++;
        }
        maxBombs = this->behaviorId == 7 ? 3 : 1;
        if (maxBombs > bombCount) {
            entity = CreatePlayerItemWithParent(this, PLAYER_ITEM_BOMB);
            if (entity != NULL) {
                pos = &gUnk_0811BDAC[gPlayerEntity.base.animationState & 6];
                PositionRelative(&gPlayerEntity.base, entity, Q_16_16(pos[0]), Q_16_16(pos[1]));
                ModBombs(-1);
                SoundReq(SFX_PLACE_OBJ);
            }
        }
    }
    DeleteItemBehavior(this, index);
}
