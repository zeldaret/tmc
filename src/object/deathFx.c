/**
 * @file deathFx.c
 * @ingroup Objects
 *
 * @brief Death Fx object
 */
#include "object/deathFx.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "global.h"
#include "sound.h"

void sub_08081790(DeathFxObject* this);
void DeathFx_Delete(DeathFxObject* this);

void DeathFx_Action0(DeathFxObject* this);
void DeathFx_Action1(DeathFxObject* this);
void DeathFx_Action2(DeathFxObject* this);
void DeathFx(Entity* this) {
    static void (*const DeathFx_Actions[])(DeathFxObject*) = {
        DeathFx_Action0,
        DeathFx_Action1,
        DeathFx_Action2,
    };
    DeathFx_Actions[this->action]((DeathFxObject*)this);
}

void DeathFx_Action0(DeathFxObject* this) {
    static const u8 gUnk_0811EC08[] = {
        0, 64, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    };
    static const u8 gUnk_0811EC20[] = {
        26,
        14,
        26,
        26,
    };
    Entity* parent;
    int uVar4;
    u32 tmp;

    if (this->unk6c & 1) {
        super->spriteIndex = 0x65;
        super->action = 2;
        super->direction = 0;
        super->speed = 0x40;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(&this->base);
        super->spriteRendering.b0 = 3;
        if (super->timer == 0) {
            tmp = 0x80;
        } else {
            tmp = super->timer;
            super->timer = 0;
        }
        SetAffineInfo(super, tmp, tmp, 0);
        LoadSwapGFX(super, 4, 0);
        InitAnimationForceUpdate(super, 0);
        SoundReq(SFX_BOSS_EXPLODE);
    } else {
        if (this->unk6c & 0xc) {
            sub_08081790(this);
            DeathFx_Delete(this);
        } else {
            if (this->unk6c & 2) {
                InitializeAnimation(&this->base, 2);
            } else {
                super->spritePriority.b0 = 3;
                uVar4 = gUnk_0811EC08[super->type >> 2];
                uVar4 >>= ((super->type % 4) << 1);
                uVar4 &= 3;
                parent = super->parent;
                if (parent != NULL) {
                    parent->timer = gUnk_0811EC20[uVar4];
                }
                InitializeAnimation(&this->base, uVar4);
            }
        }
        super->action = 1;
        EnqueueSFX(SFX_FF);
    }
    SetEntityPriority(super, 3);
}

void DeathFx_Action1(DeathFxObject* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_08081790(this);
        DeathFx_Delete(this);
    } else {
        if ((super->frame & 1) != 0) {
            super->spritePriority.b0 = 4;
        }
    }
}

void DeathFx_Action2(DeathFxObject* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        DeathFx_Delete(this);
    } else {
        if ((super->frame & 1) != 0) {
            LinearMoveUpdate(super);
        }
    }
}

void DeathFx_DropRandom9(DeathFxObject* this);
void DeathFx_DropRandom13(DeathFxObject* this);
void DeathFx_DropRandom1(DeathFxObject* this);
void DeathFx_DropRandom14(DeathFxObject* this);
void DeathFx_DropFixedItem(DeathFxObject* this);
void sub_08081790(DeathFxObject* this) {
    static void (*const DeathFx_DropFunctions[])(DeathFxObject*) = {
        DeathFx_DropRandom9, DeathFx_DropRandom13, DeathFx_DropRandom1, DeathFx_DropRandom14,
        DeathFx_DropRandom9, DeathFx_DropRandom9,  DeathFx_DropRandom9, DeathFx_DropRandom9,
        DeathFx_DropRandom9, DeathFx_DropRandom9,  DeathFx_DropRandom9, DeathFx_DropRandom9,
        DeathFx_DropRandom9, DeathFx_DropRandom9,  DeathFx_DropRandom9, DeathFx_DropFixedItem,
    };
    static const u8 DeathFx_EnemyDroptables[] = {
        [OCTOROK] = 6,
        [CHUCHU] = 6,
        [LEEVER] = 6,
        [PEAHAT] = 6,
        [ROLLOBITE] = 0,
        [DARK_NUT] = 11,
        [HANGING_SEED] = 0,
        [BEETLE] = 6,
        [KEESE] = 6,
        [DOOR_MIMIC] = 0,
        [ROCK_CHUCHU] = 10,
        [SPINY_CHUCHU] = 6,
        [CUCCO_CHICK_AGGR] = 6,
        [MOLDORM] = 7,
        [ENEMY_E] = 6,
        [MOLDWORM] = 6,
        [SLUGGULA] = 6,
        [PESTO] = 0,
        [PUFFSTOOL] = 6,
        [CHUCHU_BOSS] = 6,
        [LIKE_LIKE] = 6,
        [SPEAR_MOBLIN] = 8,
        [BUSINESS_SCRUB] = 0,
        [RUPEE_LIKE] = 8,
        [MADDERPILLAR] = 6,
        [WATER_DROP] = 6,
        [WALL_MASTER] = 8,
        [BOMB_PEAHAT] = 10,
        [SPARK] = 6,
        [CHASER] = 0,
        [SPIKED_BEETLE] = 6,
        [SENSOR_BLADE_TRAP] = 0,
        [HELMASAUR] = 6,
        [FALLING_BOULDER] = 0,
        [BOBOMB] = 10,
        [WALL_MASTER_2] = 8,
        [GLEEROK] = 6,
        [VAATI_EYES_MACRO] = 0,
        [TEKTITE] = 6,
        [WIZZROBE_WIND] = 6,
        [WIZZROBE_FIRE] = 6,
        [WIZZROBE_ICE] = 6,
        [ARMOS] = 11,
        [EYEGORE] = 9,
        [ROPE] = 6,
        [SMALL_PESTO] = 1,
        [ACRO_BANDIT] = 6,
        [BLADE_TRAP] = 0,
        [KEATON] = 7,
        [CROW] = 6,
        [MULLDOZER] = 6,
        [BOMBAROSSA] = 6,
        [WISP] = 0,
        [SPINY_BEETLE] = 6,
        [MAZAAL_HEAD] = 6,
        [MAZAAL_MACRO] = 6,
        [MAZAAL_HAND] = 6,
        [OCTOROK_BOSS] = 6,
        [FLYING_POT] = 6,
        [GOBDO] = 6,
        [OCTOROK_GOLDEN] = 6,
        [TEKTITE_GOLDEN] = 6,
        [ROPE_GOLDEN] = 6,
        [CLOUD_PIRANHA] = 6,
        [SCISSORS_BEETLE] = 7,
        [CUCCO_AGGR] = 6,
        [STALFOS] = 7,
        [FLYING_SKULL] = 6,
        [MAZAAL_BRACELET] = 6,
        [TAKKURI] = 6,
        [BOW_MOBLIN] = 8,
        [LAKITU] = 6,
        [LAKITU_CLOUD] = 6,
        [TORCH_TRAP] = 6,
        [VAATI_REBORN_ENEMY] = 6,
        [VAATI_PROJECTILE] = 6,
        [BALL_CHAIN_SOLIDER] = 8,
        [ENEMY_4D] = 8,
        [GHINI] = 6,
        [VAATI_TRANSFIGURED] = 6,
        [ENEMY_50] = 6,
        [VAATI_WRATH] = 6,
        [VAATI_ARM] = 12,
        [DUST] = 0,
        [VAATI_BALL] = 6,
        [OCTOROK2] = 6,
        [SLIME] = 6,
        [MINI_SLIME] = 6,
        [FIREBALL_GUY] = 6,
        [MINI_FIREBALL_GUY] = 6,
        [VAATI_TRANSFIGURED_EYE] = 6,
        [BUSINESS_SCRUB_PROLOGUE] = 0,
        [GYORG_FEMALE] = 6,
        [GYORG_MALE] = 6,
        [CURTAIN] = 0,
        [VAATI_WRATH_EYE] = 6,
        [GYORG_CHILD] = 12,
        [GYORG_FEMALE_EYE] = 6,
        [GYORG_MALE_EYE] = 6,
        [GYORG_FEMALE_MOUTH] = 6,
        [ENEMY_64] = 6,
        [TREE_ITEM] = 6,
        [ENEMY_66] = 6,
        6,
        6,
        6,
        6,
        6,
        6,
        6,
        6,
        6,
    };
    if (this->parentId < 0xf0) {
        CreateRandomItemDrop(super, DeathFx_EnemyDroptables[this->parentId]);
    } else {
        DeathFx_DropFunctions[this->parentId - 0xf0](this);
    }
}

void DeathFx_DropRandom9(DeathFxObject* this) {
    CreateRandomItemDrop(super, 9);
}

void DeathFx_DropRandom13(DeathFxObject* this) {
    CreateRandomItemDrop(super, 13);
}

void DeathFx_DropRandom14(DeathFxObject* this) {
    CreateRandomItemDrop(super, 14);
}

void DeathFx_DropRandom1(DeathFxObject* this) {
    CreateRandomItemDrop(super, 1);
}

u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter);
void DeathFx_DropFixedItem(DeathFxObject* this) {
    CreateItemDrop(super, this->item, 0);
}

void DeathFx_Delete(DeathFxObject* this) {
    DeleteThisEntity();
}
