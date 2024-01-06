/**
 * @file playerItemHeldObject.c
 * @ingroup Items
 *
 * @brief Held Object Player Item
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[4];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
} PlayerItemHeldObjectEntity;

extern bool32 ProcessMovement10(Entity*);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
} struct_gUnk_081320B8;

bool32 sub_080AD32C(PlayerItemHeldObjectEntity* this);
void sub_080AD27C(PlayerItemHeldObjectEntity* this);
void PlayerItemHeldObject_SubAction0(PlayerItemHeldObjectEntity* this);
void PlayerItemHeldObject_SubAction1(PlayerItemHeldObjectEntity* this);
void PlayerItemHeldObject_SubAction2(PlayerItemHeldObjectEntity* this);
void PlayerItemHeldObject_SubAction3(PlayerItemHeldObjectEntity* this);

void PlayerItemHeldObject(Entity* this) {
    static void (*const PlayerItemHeldObject_SubActions[])(PlayerItemHeldObjectEntity*) = {
        PlayerItemHeldObject_SubAction0,
        PlayerItemHeldObject_SubAction1,
        PlayerItemHeldObject_SubAction2,
        PlayerItemHeldObject_SubAction3,
    };
    PlayerItemHeldObject_SubActions[this->subAction]((PlayerItemHeldObjectEntity*)this);
}

static const Hitbox3D gUnk_081320E4;

void PlayerItemHeldObject_SubAction0(PlayerItemHeldObjectEntity* this) {
    static const struct_gUnk_081320B8 gUnk_081320B8[] = { { 0, 2, 0xe8, 0 }, { 0, 5, 0xe0, 0 }, { 0, 5, 0xf2, 0 } };
    PlayerItemHeldObjectEntity* child;
    PlayerItemHeldObjectEntity* child2;
    const struct_gUnk_081320B8* ptr;
    u32 temp;

    super->subAction++;
    super->hitbox = (Hitbox*)&gUnk_081320E4;
    child = (PlayerItemHeldObjectEntity*)super->child;
    child2 = child;
    if (child != NULL) {
        super->x = (child->base).x;
        super->y = (child->base).y;
        super->z = (child->base).z;
        super->collisionLayer = (child->base).collisionLayer;
        super->carryFlags = (child->base).carryFlags;
    } else {
        child = this;
        super->child = super;
        super->action = 2;
        ptr = gUnk_081320B8;
        super->palette.b.b0 = temp = ptr[super->subtimer].unk1;
        super->spriteSettings.draw = 1;
        super->carryFlags = (int)child2;
        super->spriteVramOffset = ptr[super->subtimer].unk2;
        InitializeAnimation(super, ptr[super->subtimer].unk0);
        sub_08078D60();
    }
    this->unk_6c = (child->base).kind;
    this->unk_6e = (child->base).id;
}

void PlayerItemHeldObject_SubAction1(PlayerItemHeldObjectEntity* this) {
    Entity* child = super->child;
    if ((this->unk_6c == child->kind) || (this->unk_6e == child->id)) {
        if (child->action != 2) {
            PlayerDropHeldObject();
            DeleteThisEntity();
        } else {
            if ((gPlayerState.heldObject == 0) || ((gPlayerEntity.unk_79 & 0x7f) != 0)) {
                sub_080AD27C(this);
                super->subAction++;
                super->flags &= ~0x80;
                super->direction = 0xff;
                super->zVelocity = 0;
            }
        }
    } else {
        PlayerDropHeldObject();
        DeleteThisEntity();
    }
}

void PlayerItemHeldObject_SubAction2(PlayerItemHeldObjectEntity* this) {
    static const s8 gUnk_081320C4[] = {
        0, -6, 6, 0, 0, 6, -6, 0,
    };
    PlayerItemHeldObjectEntity* child;
    u32 data;
    u32 tmp;

    child = (PlayerItemHeldObjectEntity*)super->child;
    if ((child->base).action != 2) {
        DeleteThisEntity();
    }
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        super->z.WORD = 0;
    }
    if (super->speed != 0) {

        if ((super->knockbackDuration & 0x80) != 0) {
            super->direction = super->knockbackDirection;
            super->knockbackDuration = 0;
        }
        if (GetActTileRelativeToEntity(super, gUnk_081320C4[super->direction >> 2],
                                       gUnk_081320C4[(super->direction >> 2) + 1]) == ACT_TILE_116) {
            LinearMoveUpdate(super);
        } else {
            data = GetCollisionDataAtEntity(super);
            if ((data != COLLISION_DATA_36) && (data != COLLISION_DATA_38)) {
                ProcessMovement10(super);
            }
        }
        if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
            (child->base).zVelocity = super->zVelocity;
            (child->base).x = super->x;
            (child->base).y = super->y;
            (child->base).z = super->z;
            data = GetActTileAtEntity(super);
            switch (data) {
                case ACT_TILE_13:
                case ACT_TILE_16:
                case ACT_TILE_17:
                case ACT_TILE_19:
                case ACT_TILE_90:
                    if (child == this) {

                        switch (data) {
                            case ACT_TILE_13:
                                CreateFx(super, FX_FALL_DOWN, 0);
                                break;
                            case ACT_TILE_90:
                                CreateFx(super, FX_LAVA_SPLASH, 0);
                                break;
                            case ACT_TILE_16:
                            case ACT_TILE_17:
                                CreateFx(super, FX_WATER_SPLASH, 0);
                                break;
                            case ACT_TILE_19:
                                CreateFx(super, FX_GREEN_SPLASH, 0);
                                break;
                        }
                        (child->base).subAction = 4;
                    } else {
                        (child->base).subAction = 3;
                    }
                    DeleteThisEntity();
                    break;
            }
            if (super->child == super) {
                if (super->type2 != 0xff) {
                    if (super->type2 == 0x0f) {
                        CreateFx(super, super->timer, 0x80);
                    } else {
                        CreateObjectWithParent(super, super->type2, super->timer, 0);
                    }
                }
                DeleteThisEntity();
            } else {
                if (super->timer != 0 || sub_080AD32C(child)) {
                    if (super->timer == 1) {
                        SoundReq(SFX_PLACE_OBJ);
                    }
                    UpdateSpriteForCollisionLayer(super);
                    child->base.subAction = 3;
                    child->base.spriteRendering.b3 = super->spriteRendering.b3;
                    child->base.spriteOrientation.flipY = super->spriteOrientation.flipY;
                    child->base.spritePriority.b0 = super->spritePriority.b0;
                    DeleteThisEntity();
                } else {
                    SoundReq(SFX_PLACE_OBJ);
                    super->timer++;
                    super->zVelocity = Q_16_16(1.0);
                    super->speed /= 2;
                    return;
                }
            }
        } else {
            sub_0800451C(super);
            sub_0806F8DC(super);
            CopyPosition(super, (Entity*)child);
            (child->base).zVelocity = super->zVelocity;
            (child->base).direction = super->direction;
            return;
        }

    } else {
        tmp = gPlayerEntity.base.frame & 1;
        if (tmp != 0) {
            SoundReq(SFX_PLY_VO5);
            sub_080AD27C(this);
            return;
        }
        if ((gPlayerState.heldObject != 0) && ((gPlayerEntity.unk_79 & 0x80) == 0)) {
            return;
        }
        sub_080AD27C(this);
        super->flags &= ~0x80;
        super->direction = 0xff;
        super->zVelocity = tmp & 1;
        return;
    }
}

void PlayerItemHeldObject_SubAction3(PlayerItemHeldObjectEntity* this) {
    DeleteThisEntity();
}

void sub_080AD27C(PlayerItemHeldObjectEntity* this) {
    static const u16 gUnk_081320CC[] = {
        0x400,
        0x200,
        0x200,
        0x200,
    };
    static const u32 gUnk_081320D4[] = { Q_16_16(0), Q_16_16(0.5), Q_16_16(1.25), Q_16_16(1.25) };
    u32 tmp;
    PlayerItemHeldObjectEntity* child = (PlayerItemHeldObjectEntity*)super->child;
    gPlayerEntity.carriedEntity = NULL;
    if ((this->unk_6c == (u16)(child->base).kind) && (this->unk_6e == (u16)(child->base).id)) {
        if (child != this) {
            (child->base).subAction = 2;
        } else {
            super->spritePriority.b1 = 3;
        }
        super->hitbox = (child->base).hitbox;
        tmp = super->carryFlags >> 4;
        super->speed = gUnk_081320CC[tmp];
        super->zVelocity = gUnk_081320D4[tmp];
        (child->base).z.HALF.HI += 8;
        super->z.HALF.HI = (child->base).z.HALF.HI;
        super->collisionLayer = (child->base).collisionLayer;
        super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
        super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI;
        super->collisionFlags = gPlayerEntity.base.collisionFlags;
        super->flags |= 0x80;
        sub_0801766C(super);
    } else {
        PlayerDropHeldObject();
        DeleteThisEntity();
    }
}

bool32 sub_080AD32C(PlayerItemHeldObjectEntity* this) {
    bool32 result = FALSE;
    if (((super->carryFlags & 0xf0) == 0x10) ||
        ((super->kind == OBJECT && ((super->id == 5 || (super->id == 0x7d)))))) {
        result = TRUE;
    }
    return result;
}

static const Hitbox3D gUnk_081320E4 = { 0, 0, { 6, 3, 3, 6 }, 4, 4, 0x10, { 0, 0, 0 } };
