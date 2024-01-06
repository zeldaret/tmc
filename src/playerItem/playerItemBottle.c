/**
 * @file playerItemBottle.c
 * @ingroup Items
 *
 * @brief Bottle Player Item
 */
#include "playerItem/playerItemBottle.h"

#include "functions.h"
#include "item.h"
#include "object.h"
#include "save.h"
#include "sound.h"
#include "tiles.h"

void PlayerItemBottle_UseEmptyBottle(Entity*);
void PlayerItemBottle_Action1(PlayerItemBottleEntity*);
void sub_0801BDE8(Entity*, Entity*);
void PlayerItemBottle_UseEmptyBottle2(Entity*);
void PlayerItemBottle_UsePotionOrPicolyte(PlayerItemBottleEntity*);
void PlayerItemBottle_UseOther(PlayerItemBottleEntity*);
void PlayerItemBottle_Init(PlayerItemBottleEntity*);

extern u32 SetBottleContents(u32 itemID, u32 bottleIndex);
extern void sub_0801B9F0(Entity* this);

void PlayerItemBottle(PlayerItemBottleEntity* this) {
    static void (*const PlayerItemBottle_Actions[])(PlayerItemBottleEntity*) = {
        PlayerItemBottle_Init,
        PlayerItemBottle_Action1,
    };
    PlayerItemBottle_Actions[super->action](this);
}

void PlayerItemBottle_Init(PlayerItemBottleEntity* this) {
    u32 bottleContent;

    if (this->bottleIndex == ITEM_QST_DOGFOOD) {
        bottleContent = ITEM_QST_DOGFOOD;
    } else {
        u32 tmp = this->bottleIndex;
        bottleContent = gSave.stats.bottles[tmp - ITEM_BOTTLE1];
    }
    this->bottleContent = bottleContent;
    switch (bottleContent) {
        case ITEM_BOTTLE_EMPTY:
            if (AllocMutableHitbox(super) == NULL) {
                return;
            }
            COLLISION_ON(super);
            super->collisionFlags = (gPlayerEntity.base.collisionFlags + 1) | 0x20;
            super->collisionMask = gPlayerEntity.base.collisionMask;
            super->hurtType = 0x1f;
            super->type = 1;
            super->type2 = ITEM_BOTTLE_EMPTY;
            super->timer = 82;
            super->subtimer = 27;
            sub_0801766C(super);
            SoundReq(SFX_1DC);
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_MILK:
        case ITEM_BOTTLE_HALF_MILK:
        case ITEM_BOTTLE_RED_POTION:
        case ITEM_BOTTLE_BLUE_POTION:
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            super->timer = 213;
            super->subtimer = 60;
            break;
        case BOTTLE_CHARM_NAYRU:
        case BOTTLE_CHARM_FARORE:
        case BOTTLE_CHARM_DIN:
        default:
            super->timer = 55;
            super->subtimer = 0;
    }
    super->action = 1;
    super->frameIndex = 0xff;
    gPlayerState.item = super;
    LoadSwapGFX(super, 1, 3);
    PlayerItemBottle_Action1(this);
}

void PlayerItemBottle_Action1(PlayerItemBottleEntity* this) {
    u32 bottleIndex;

    if (gPlayerState.item != super) {
        if ((super->type == 1) && (super->type2 != ITEM_BOTTLE_EMPTY)) {
            bottleIndex = this->bottleIndex - ITEM_BOTTLE1;
            SetBottleContents(super->type2, bottleIndex);
#if defined(EU) || defined(JP) || defined(DEMO_JP)
            CreateItemEntity(super->type2, bottleIndex, 5);
#else
            InitItemGetSequence(super->type2, bottleIndex, 5);
#endif
            SoundReq(SFX_ITEM_GET);
        }
        DeleteThisEntity();
    }
    sub_0801BDE8(super, &gPlayerEntity.base);
    switch (this->bottleContent) {
        case ITEM_BOTTLE_EMPTY:
            PlayerItemBottle_UseEmptyBottle2(super);
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_MILK:
        case ITEM_BOTTLE_HALF_MILK:
        case ITEM_BOTTLE_RED_POTION:
        case ITEM_BOTTLE_BLUE_POTION:
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            if (gPlayerEntity.base.frame == 1) {
                gPlayerEntity.base.frame = 0;
                PlayerItemBottle_UsePotionOrPicolyte(this);
            }
            break;
        case BOTTLE_CHARM_NAYRU:
        case BOTTLE_CHARM_FARORE:
        case BOTTLE_CHARM_DIN:
        default:
            PlayerItemBottle_UseOther(this);
    }
}

void PlayerItemBottle_UseEmptyBottle2(Entity* this) {
    PlayerItemBottle_UseEmptyBottle(this);
}

void PlayerItemBottle_UsePotionOrPicolyte(PlayerItemBottleEntity* this) {
    u32 health;
    u32 bottleContent;

    bottleContent = ITEM_BOTTLE_EMPTY;
    health = 0;
    switch (this->bottleContent) {
        case ITEM_BOTTLE_MILK:
            bottleContent = ITEM_BOTTLE_HALF_MILK;
        case ITEM_BOTTLE_HALF_MILK:
            health = 40;
            break;
        case ITEM_BOTTLE_BLUE_POTION:
            health = 80;
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_RED_POTION:
            health = 160;
            break;
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            gSave.stats.picolyteType = this->bottleContent;
            gSave.stats.picolyteTimer = 900;
            SoundReq(SFX_PICOLYTE);
            break;
    }
    ModHealth(health);
    SetBottleContents(bottleContent, this->bottleIndex - 0x1c);
}

void PlayerItemBottle_UseOther(PlayerItemBottleEntity* this) {
    if (gPlayerEntity.base.frame == 1) {
        if (this->bottleContent != ITEM_QST_DOGFOOD) {
            SetBottleContents(ITEM_BOTTLE_EMPTY, this->bottleIndex - 0x1c);
        }
        switch (this->bottleContent) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 1, 1);
                break;
            case ITEM_BOTTLE_FAIRY:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 2, 2);
                ModHealth(0x20);
                break;
            case BOTTLE_CHARM_NAYRU:
            case BOTTLE_CHARM_FARORE:
            case BOTTLE_CHARM_DIN:
                gSave.stats.charm = this->bottleContent;
                gSave.stats.charmTimer = 3600;
                SoundReq(SFX_ELEMENT_CHARGE);
        }
    }
    if (gPlayerEntity.base.frame == 2) {
        switch (this->bottleContent) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 1, 1);
                break;
        }
    }
    if (gPlayerEntity.base.frame == 3) {
        switch (this->bottleContent) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(super, LINK_EMPTYING_BOTTLE, 1, 0);
                break;
        }
    }
}

void sub_0801BDE8(Entity* this, Entity* ent2) {
    u32 frameIndex;
    u32 flipX;
    u32 animationState;

    frameIndex = (ent2->frameIndex - this->timer) + this->subtimer;
    if (frameIndex != this->frameIndex) {
        this->frameIndex = frameIndex;
        sub_080042D0(this, this->frameIndex, (u16)this->spriteIndex);
    }
    flipX = ent2->spriteSettings.flipX;
    animationState = (ent2->animationState >> 1);
    this->spriteSettings.flipX = flipX ^ (animationState & 1);
    sub_08078E84(this, &gPlayerEntity.base);
}

void PlayerItemBottle_UseEmptyBottle(Entity* this) {
    static const s8 gUnk_080B7878[] = {
        0, -16, 16, -16, 16, 0, 16, 16, 0, 16, -16, 16, -16, 0, -16, -16, 0, 0,
    };
    static const u8 bottleHitboxParameters[] = {
        16, -4,  5,   5,  12, 0, 9,   9,   8,  0, 9,  9,  4,   8, 9, 9,  -6,  12, 9,  9, -12, 2,  9,  9, 0,   0,  0,
        0,  0,   0,   0,  0,  0, 0,   0,   0,  0, 0,  0,  0,   0, 0, 0,  0,   0,  -8, 5, 5,   -4, -8, 9, 9,   -8, -8,
        9,  9,   -12, -4, 9,  9, -16, 0,   9,  9, -6, 2,  9,   9, 0, 0,  0,   0,  0,  0, 0,   0,  0,  0, 0,   0,  0,
        0,  0,   0,   0,  0,  0, 0,   -12, -6, 5, 5,  -8, -12, 9, 9, -4, -16, 9,  9,  4, -16, 9,  9,  8, -16, 9,  9,
        16, -12, 9,   9,  0,  0, 0,   0,   0,  0, 0,  0,  0,   0, 0, 0,  0,   0,  0,  0, 0,   0,  0,  0, 0,   0,

    };
    s32 iVar2;
    Hitbox* hitbox;
    const u8* ptr;
    const s8* ptr2;

    switch (this->contactFlags & 0x7f) {
        default:
            this->contactFlags = 0;
            break;
        case 0x49:
            this->type2 = ITEM_BOTTLE_FAIRY;
            sub_0801B9F0(this);
            break;
        case 0x4d:
            this->type2 = ITEM_BOTTLE_MINERAL_WATER;
            sub_0801B9F0(this);
            break;
    }

    ptr = &bottleHitboxParameters[(this->frameIndex - 0x1b) * 4];
    if (this->spriteSettings.flipX != 0) {
        hitbox = this->hitbox;
        hitbox->offset_x = -ptr[0];
    } else {
        hitbox = this->hitbox;
        hitbox->offset_x = ptr[0];
    }
    this->hitbox->offset_y = ptr[1];
    this->hitbox->width = ptr[2];
    this->hitbox->height = ptr[3];
    if ((gPlayerEntity.base.frame & 0xf) != 0) {
        if (this->type2 == ITEM_BOTTLE_EMPTY) {
            ptr2 = &gUnk_080B7878[((gPlayerEntity.base.frame & 0xf) - 1) * 2];
            iVar2 = ptr2[0];
            if (this->spriteSettings.flipX != 0) {
                iVar2 = -iVar2;
            }
            if (GetActTileRelativeToEntity(this, iVar2, (s8)ptr2[1]) == ACT_TILE_16) {
                this->type2 = ITEM_BOTTLE_WATER;
            }
        }
    }

    if (this->type2 != ITEM_BOTTLE_EMPTY) {
        COLLISION_OFF(&gPlayerEntity.base);
    }
}
