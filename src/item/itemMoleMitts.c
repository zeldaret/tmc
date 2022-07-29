
#include "item.h"
#include "functions.h"
#include "sound.h"
#include "effects.h"
#include "object.h"

s32 sub_080774A0(void);
extern s32 sub_0800875A(Entity*, u32, ItemBehavior*);
extern void UpdatePlayerMovement(void);
extern bool32 sub_0807B5B0(Entity*);
void sub_08077130(ItemBehavior*, u32);
void sub_080771C8(ItemBehavior*, u32);
void sub_080772A8(ItemBehavior*, u32);
void sub_08077448(ItemBehavior*, u32);

void ItemMoleMitts(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08077130,
        sub_080771C8,
        sub_080772A8,
        sub_08077448,
    };
    stateFuncs[this->stateID](this, idx);
}

void sub_08077130(ItemBehavior* this, u32 idx) {
    s32 iVar1;

    if (gPlayerState.jump_status == 0) {
        sub_08077D38(this, idx);
        gPlayerState.moleMittsState = 1;
        this->field_0x5[4] |= 0x80;
        iVar1 = sub_080774A0();
        if (iVar1 != 0) {
            if (this->field_0x5[2] == 0) {
                sub_08077DF4(this, 0x50c);
                this->stateID = 2;
                if (iVar1 == 0x56) {
                    if ((gPlayerEntity.animationState & 2) != 0) {
                        gPlayerEntity.y.HALF.HI = (gPlayerEntity.y.HALF.HI & 0xfff0) | 6;
                    } else {
                        gPlayerEntity.x.HALF.HI = (gPlayerEntity.x.HALF.HI & 0xfff0) | 8;
                    }
                }
            }
        } else {
            sub_08077DF4(this, 0x508);
            this->stateID = 1;
        }
    } else {
        DeletePlayerItem(this, idx);
        gPlayerState.moleMittsState = 0;
    }
}

void sub_080771C8(ItemBehavior* this, u32 idx) {
    static const u8 gUnk_0811BE14[] = {
        0x1,
        0x12,
    };
    Entity* object;

    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        DeletePlayerItem(this, idx);
        gPlayerState.moleMittsState = 0;
    } else {
        if (((this->field_0x5[9] & 0x20) != 0) && (this->field_0x5[3] == 0xff)) {
            CreateObjectWithParent(&gPlayerEntity, 0x1e, this->field_0x5[9], 1);
        }
        if ((this->field_0x5[9] & 0x10) != 0) {
            if (sub_0800875A(&gPlayerEntity, 0xd, this) == 0) {
                sub_08077DF4(this, 0x520);
                this->stateID = 3;
                SoundReq(SFX_107);
            } else {
                if (this->field_0x5[3] != 0xff) {
                    object = CreateObjectWithParent(&gPlayerEntity, 0x1f, 0, this->field_0x2[1]);
                    if (object != NULL) {
                        object->timer = this->field_0x5[2];
                        object->subtimer = this->field_0x5[3];
                        object->animationState = gPlayerEntity.animationState & 6;
                        gPlayerEntity.frame = 0;
                        gPlayerEntity.frameDuration = gUnk_0811BE14[this->field_0x5[3]];
                    }
                } else {
                    if ((this->field_0x2[1] == 0x0f) && (this->field_0x5[2] == 0x17)) {
                        this->field_0x5[3] = 0;
                    }
                }
                SoundReq(SFX_108);
            }
        }
    }
}

void sub_080772A8(ItemBehavior* this, u32 idx) {
    static const s16 gUnk_0811BE16[] = {
        0,
        0xc0,
        0x100,
        0x180,
    };
    Entity* effect;

    if (((this->field_0x5[9] & 8) != 0) && sub_08077F10(this)) {
        this->field_0x5[2] = 1;
    }
    if (GetInventoryValue(ITEM_DIG_BUTTERFLY) == 1) {
        if ((this->field_0x5[9] & 7) != 3) {
            sub_08077E3C(this, 2);
            gPlayerEntity.speed = gUnk_0811BE16[this->field_0x5[9] & 7] << 1;
        } else {
            UpdateItemAnim(this);
            gPlayerEntity.speed = gUnk_0811BE16[this->field_0x5[9] & 7];
        }
    } else {
        UpdateItemAnim(this);
        gPlayerEntity.speed = gUnk_0811BE16[this->field_0x5[9] & 7];
    }
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    if (gPlayerEntity.speed != 0) {
        UpdatePlayerMovement();
    }
    if ((this->field_0x5[9] & 0x10) != 0) {
        if (this->field_0x5[2] != 0) {
            gPlayerEntity.frameDuration = 1;
            if (sub_080774A0()) {
                this->field_0x5[2] = 0;
                return;
            }
        }
        DeletePlayerItem(this, idx);
        gPlayerState.moleMittsState = 0;
    } else {
        if ((this->field_0x5[9] & 0x60) != 0) {
            gPlayerEntity.frameDuration = 1;
            if (sub_0807B5B0(&gPlayerEntity)) {
                SoundReq(SFX_108);
                CreateObjectWithParent(&gPlayerEntity, MOLE_MITTS_PARTICLE, this->field_0x5[9], 0);
            } else {
                sub_08077DF4(this, 0x51c);
                effect = CreateFx(&gPlayerEntity, FX_STARS_STRIKE, 0);
                if (effect != NULL) {
                    effect->animationState = this->field_0x5[5];
                    effect->spritePriority.b0 = gPlayerEntity.spritePriority.b0 - 1;
                }
                effect = CreateFx(&gPlayerEntity, FX_STARS_STRIKE, 0);
                if (effect != NULL) {
                    effect->animationState = this->field_0x5[5];
                    effect->spritePriority.b0 = gPlayerEntity.spritePriority.b0 - 1;
                    effect->subtimer = 1;
                }
                this->stateID = 3;
                this->field_0x5[0] = 1;
                SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
            }
        }
    }
}

void sub_08077448(ItemBehavior* this, u32 idx) {
    gPlayerEntity.direction = gPlayerEntity.animationState << 2 ^ 0x10;
    gPlayerEntity.speed = 0x100;
    if (((this->field_0x5[9] & 1) != 0) && (this->field_0x5[0] != 0)) {
        UpdatePlayerMovement();
    }
    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        gPlayerState.moleMittsState = 0;
        DeletePlayerItem(this, idx);
    }
}

s32 sub_080774A0(void) {
    static const s8 gUnk_0811BE1E[] = { 0, -13, 13, 0, 0, 16, -13, 0, 0, 0 };
    u32 iVar2;
    u32 uVar3;

    uVar3 = COORD_TO_TILE_OFFSET((&gPlayerEntity), -gUnk_0811BE1E[gPlayerEntity.animationState & 6],
                                 -gUnk_0811BE1E[(gPlayerEntity.animationState & 6) + 1]);

    iVar2 = sub_080B1B44(uVar3, gPlayerEntity.collisionLayer);

    if (iVar2 > 0x16)
        return 0;
    if (iVar2 < 0xf)
        return 0;
    if (sub_080B1AE0(uVar3, gPlayerEntity.collisionLayer) != 0x56) {
        return 1;
    } else {
        return 0x56;
    }
}
