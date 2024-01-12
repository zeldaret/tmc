/**
 * @file playerClone.c
 * @ingroup Objects
 *
 * @brief Player Clone object
 */
#include "asm.h"
#include "collision.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x4];
    u32 unk6c;
    u32 unk70;
    u16 tilePos;
    u16 unk76;
    u16 unk78;
    u16 unk7a;
} PlayerCloneEntity;

extern Entity* sub_08077CF8(u32 subtype, u32 form, u32 parameter, u32 unk);
extern const s16 gUnk_080B4468[];

void PlayerClone_Init(PlayerCloneEntity*);
void PlayerClone_Action1(PlayerCloneEntity*);
void PlayerClone_Action2(PlayerCloneEntity*);
void sub_08084B1C(PlayerCloneEntity*);
void sub_08084CAC(PlayerCloneEntity*);

void PlayerClone(Entity* this) {
    static void (*const PlayerClone_Actions[])(PlayerCloneEntity*) = {
        PlayerClone_Init,
        PlayerClone_Action1,
        PlayerClone_Action2,
    };

    PlayerClone_Actions[this->action]((PlayerCloneEntity*)this);
}

void PlayerClone_Init(PlayerCloneEntity* this) {
    super->action = 1;
    super->spriteRendering.b3 = 2;
    super->spritePriority.b0 = 4;
    super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) | 8;
    super->y.HALF.HI = (super->y.HALF.HI & 0xfff0) | 8;
    this->tilePos = COORD_TO_TILE(super);
    InitializeAnimation(super, 8);
    SetTile(SPECIAL_TILE_22, this->tilePos, super->collisionLayer);
    SoundReq(SFX_112);
}

const u16 PlayerCloneCollisions[] = {
    COL_NORTH_FULL | COL_WEST_SOUTH | COL_EAST_SOUTH,
    COL_NORTH_EAST | COL_SOUTH_EAST | COL_EAST_FULL,
    COL_SOUTH_FULL | COL_WEST_NORTH | COL_EAST_NORTH,
    COL_NORTH_WEST | COL_SOUTH_WEST | COL_WEST_FULL,
};

void PlayerClone_Action1(PlayerCloneEntity* this) {
    static const Hitbox PlayerCloneHitbox = { 0, -3, { 5, 3, 3, 5 }, 6, 6 };

    if (gPlayerState.chargeState.action == 5) {
        super->spriteSettings.draw = 1;
        super->health = 1;
        super->action = 2;
        super->updatePriority = 6;
        super->hitbox = (Hitbox*)&PlayerCloneHitbox;
        super->subtimer = (super->type + 1) * 15;
        this->unk78 = super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI;
        this->unk7a = super->y.HALF.HI - gPlayerEntity.base.y.HALF.HI;
        if ((this->unk78 != 0) && (this->unk7a != 0)) {
            ((PlayerCloneEntity*)gPlayerClones[super->type])->unk70 = 1;
        }
        CloneTile(TILE_TYPE_789, this->tilePos, super->collisionLayer);
        super->child = sub_08077CF8(1, super->type + 1, 0, ((GenericEntity*)gPlayerState.item)->field_0x68.HALF.LO);
        if (super->child != NULL) {
            super->child->parent = super;
        }
        sub_0801766C(super);
        sub_0806FDA0(super);
        PlayerClone_Action2(this);
    } else if (gPlayerState.chargeState.action != 4) {
        CloneTile(TILE_TYPE_789, this->tilePos, super->collisionLayer);
        gPlayerClones[super->type] = NULL;
        DeleteThisEntity();
    } else {
        super->spriteSettings.draw ^= 1;
    }
}

void PlayerClone_Action2(PlayerCloneEntity* this) {
    u32 index;

    if (super->subtimer == 1) {
        SoundReq(SFX_PLY_VO2);
        super->subtimer--;
    } else if (super->subtimer != 0) {
        super->subtimer--;
    }

    if (gPlayerState.chargeState.action == 5 && gPlayerClones[super->type] != NULL &&
        gPlayerState.framestate != PL_STATE_TALKEZLO && super->health != 0) {
        if (gPlayerEntity.base.iframes >= 1) {
            gPlayerState.chargeState.action = 1;
        } else {
            GetActTileAtEntity(super); // TODO why is the return value not used? // leftover from debugging?
            sub_08084B1C(this);
            super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI + this->unk78;
            super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI + this->unk7a;
            sub_08084CAC(this);
            sub_080085B0(super);
            if ((super->collisions & (COL_NORTH_FULL | COL_SOUTH_FULL | COL_EAST_FULL | COL_WEST_FULL)) !=
                (COL_NORTH_FULL | COL_SOUTH_FULL | COL_EAST_FULL | COL_WEST_FULL)) {
                for (index = 0; index <= 3; index++) {
                    if (PlayerCloneCollisions[index] == (PlayerCloneCollisions[index] & super->collisions)) {
                        break;
                    }
                }

                if (index == 4) {
                    super->timer = 0;
                    super->spriteSettings.draw = 1;
                    return;
                } else {
                    if (super->timer != 0) {
                        if (--super->timer != 0) {
                            super->spriteSettings.draw ^= 1;
                            return;
                        }
                    } else {
                        super->timer = 30;
                        return;
                    }
                }
            }
            gPlayerState.chargeState.action = 1;
            return;
        }
    }
    DeleteClones();
    CreateFx(super, FX_SPARKLE_SECRET, 0);
    DeleteEntity(super->child);
    SoundReq(SFX_18F);
    DeleteThisEntity();
}

void sub_08084B1C(PlayerCloneEntity* this) {
    super->flags = gPlayerEntity.base.flags;
    super->spriteVramOffset = gPlayerEntity.base.spriteVramOffset;
    super->frameIndex = gPlayerEntity.base.frameIndex;
    super->frameSpriteSettings = gPlayerEntity.base.frameSpriteSettings;
    super->spriteIndex = gPlayerEntity.base.spriteIndex;
    super->direction = gPlayerEntity.base.direction;
    super->animationState = gPlayerEntity.base.animationState;
    super->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    super->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0;
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    super->collisionMask = gPlayerEntity.base.collisionMask;
    super->hitType = gPlayerEntity.base.hitType;
    super->collisionFlags = gPlayerEntity.base.collisionFlags;
    super->hurtType = gPlayerEntity.base.hurtType;
    CopyPosition(super, super->child);
    if (gPlayerState.attack_status != 0) {
        super->child->damage = gPlayerState.item->damage;
        super->child->frameIndex = gPlayerState.item->frameIndex;
        super->child->spriteSettings.flipX = gPlayerState.item->spriteSettings.flipX;
        super->child->spriteRendering.b3 = gPlayerState.item->spriteRendering.b3;
        super->child->spritePriority.b0 = gPlayerState.item->spritePriority.b0;
        if (super->child->spriteSettings.flipX) {
            super->child->hitbox->offset_x = -super->child->hitbox->offset_x;
        }
    }
    sub_0806FEBC(super, 0, 0);
    sub_0806FEBC(super, 1, 0);
    sub_0806FEBC(super, 2, super);
    sub_0806FEBC(super, 3, 0);
    sub_08078E84(super->child, super);
}

void sub_08084CAC(PlayerCloneEntity* this) {
    const s16* ptr;

    if (((PlayerCloneEntity*)gPlayerClones[super->type])->unk70 == 0) {
        ptr = &gUnk_080B4468[super->animationState & 6];
        if (GetActTileForTileType(GetTileTypeAtTilePos(COORD_TO_TILE_OFFSET(super, -ptr[0], -ptr[1]),
                                                       super->collisionLayer)) == ACT_TILE_114) {
            ((PlayerCloneEntity*)gPlayerClones[0])->unk6c |= (1 << super->type);
        } else {
            ((PlayerCloneEntity*)gPlayerClones[0])->unk6c &= ~(1 << super->type);
        }
    }
}
