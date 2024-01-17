
#include "effects.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "sound.h"
#include "tiles.h"

s32 sub_080774A0(void);
extern s32 DoItemTileInteraction(Entity*, u32, ItemBehavior*);
extern void UpdatePlayerMovement(void);
extern bool32 sub_0807B5B0(Entity*);
void sub_08077130(ItemBehavior*, u32);
void sub_080771C8(ItemBehavior*, u32);
void sub_080772A8(ItemBehavior*, u32);
void sub_08077448(ItemBehavior*, u32);

void ItemMoleMitts(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08077130,
        sub_080771C8,
        sub_080772A8,
        sub_08077448,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08077130(ItemBehavior* this, u32 index) {
    s32 iVar1;

    if (gPlayerState.jump_status == 0) {
        sub_08077D38(this, index);
        gPlayerState.moleMittsState = 1;
        this->priority |= 0x80;
        iVar1 = sub_080774A0();
        if (iVar1 != 0) {
            if (this->timer == 0) {
                SetItemAnim(this, ANIM_MOLEMITTS_DIG);
                this->stateID = 2;
                if (iVar1 == 0x56) {
                    if ((gPlayerEntity.base.animationState & 2) != 0) {
                        gPlayerEntity.base.y.HALF.HI = (gPlayerEntity.base.y.HALF.HI & 0xfff0) | 6;
                    } else {
                        gPlayerEntity.base.x.HALF.HI = (gPlayerEntity.base.x.HALF.HI & 0xfff0) | 8;
                    }
                }
            }
        } else {
            SetItemAnim(this, ANIM_MOLEMITTS_FLOOR);
            this->stateID = 1;
        }
    } else {
        DeleteItemBehavior(this, index);
        gPlayerState.moleMittsState = 0;
    }
}

void sub_080771C8(ItemBehavior* this, u32 index) {
    static const u8 gUnk_0811BE14[] = {
        0x1,
        0x12,
    };
    Entity* object;

    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        DeleteItemBehavior(this, index);
        gPlayerState.moleMittsState = 0;
    } else {
        if (((this->playerFrame & 0x20) != 0) && (this->subtimer == 0xff)) {
            CreateObjectWithParent(&gPlayerEntity.base, MOLE_MITTS_PARTICLE, this->playerFrame, 1);
        }
        if ((this->playerFrame & 0x10) != 0) {
            if (DoItemTileInteraction(&gPlayerEntity.base, 0xd, this) == 0) {
                SetItemAnim(this, ANIM_MOLEMITTS_MISS);
                this->stateID = 3;
                SoundReq(SFX_ITEM_GLOVES_AIR);
            } else {
                if (this->subtimer != 0xff) {
                    object = CreateObjectWithParent(&gPlayerEntity.base, OBJECT_1F, 0, this->field_0x2[1]);
                    if (object != NULL) {
                        object->timer = this->timer;
                        object->subtimer = this->subtimer;
                        object->animationState = gPlayerEntity.base.animationState & 6;
                        gPlayerEntity.base.frame = 0;
                        gPlayerEntity.base.frameDuration = gUnk_0811BE14[this->subtimer];
                    }
                } else {
                    if ((this->field_0x2[1] == 0x0f) && (this->timer == 0x17)) {
                        this->subtimer = 0;
                    }
                }
                SoundReq(SFX_108);
            }
        }
    }
}

void sub_080772A8(ItemBehavior* this, u32 index) {
    static const s16 gUnk_0811BE16[] = {
        0,
        0xc0,
        0x100,
        0x180,
    };
    Entity* effect;

    if (((this->playerFrame & 8) != 0) && IsItemActivatedThisFrame(this)) {
        this->timer = 1;
    }
    if (GetInventoryValue(ITEM_DIG_BUTTERFLY) == 1) {
        if ((this->playerFrame & 7) != 3) {
            sub_08077E3C(this, 2);
            gPlayerEntity.base.speed = gUnk_0811BE16[this->playerFrame & 7] << 1;
        } else {
            UpdateItemAnim(this);
            gPlayerEntity.base.speed = gUnk_0811BE16[this->playerFrame & 7];
        }
    } else {
        UpdateItemAnim(this);
        gPlayerEntity.base.speed = gUnk_0811BE16[this->playerFrame & 7];
    }
    gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
    if (gPlayerEntity.base.speed != 0) {
        UpdatePlayerMovement();
    }
    if ((this->playerFrame & 0x10) != 0) {
        if (this->timer != 0) {
            gPlayerEntity.base.frameDuration = 1;
            if (sub_080774A0()) {
                this->timer = 0;
                return;
            }
        }
        DeleteItemBehavior(this, index);
        gPlayerState.moleMittsState = 0;
    } else {
        if ((this->playerFrame & 0x60) != 0) {
            gPlayerEntity.base.frameDuration = 1;
            if (sub_0807B5B0(&gPlayerEntity.base)) {
                SoundReq(SFX_108);
                CreateObjectWithParent(&gPlayerEntity.base, MOLE_MITTS_PARTICLE, this->playerFrame, 0);
            } else {
                SetItemAnim(this, ANIM_MOLEMITTS_CLANG);
                effect = CreateFx(&gPlayerEntity.base, FX_STARS_STRIKE, 0);
                if (effect != NULL) {
                    effect->animationState = this->playerAnimationState;
                    effect->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 - 1;
                }
                effect = CreateFx(&gPlayerEntity.base, FX_STARS_STRIKE, 0);
                if (effect != NULL) {
                    effect->animationState = this->playerAnimationState;
                    effect->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 - 1;
                    effect->subtimer = 1;
                }
                this->stateID = 3;
                this->field_0x5 = 1;
                SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
            }
        }
    }
}

void sub_08077448(ItemBehavior* this, u32 index) {
    gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2 ^ 0x10;
    gPlayerEntity.base.speed = 0x100;
    if (((this->playerFrame & 1) != 0) && (this->field_0x5 != 0)) {
        UpdatePlayerMovement();
    }
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerState.moleMittsState = 0;
        DeleteItemBehavior(this, index);
    }
}

s32 sub_080774A0(void) {
    static const s8 gUnk_0811BE1E[] = { 0, -13, 13, 0, 0, 16, -13, 0, 0, 0 };
    u32 collisionData;
    u32 tilePos;

    tilePos = COORD_TO_TILE_OFFSET((&gPlayerEntity.base), -gUnk_0811BE1E[gPlayerEntity.base.animationState & 6],
                                   -gUnk_0811BE1E[(gPlayerEntity.base.animationState & 6) + 1]);

    collisionData = GetCollisionDataAtTilePos(tilePos, gPlayerEntity.base.collisionLayer);

    if (collisionData > 0x16)
        return 0;
    if (collisionData < 0xf)
        return 0;
    if (GetActTileAtTilePos(tilePos, gPlayerEntity.base.collisionLayer) != ACT_TILE_86) {
        return 1;
    } else {
        return 0x56;
    }
}
