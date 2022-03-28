#define NENT_DEPRECATED
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "new_player.h"
#include "asm.h"
#include "effects.h"
#include "functions.h"
#include "player.h"
#include "new_player.h"
#include "sound.h"
#include "functions.h"
#include "new_player.h"
#include "player.h"

extern void (*const gUnk_081320A8[])(Entity*);

typedef struct {
    Entity base;
    u8 unk_68[4];
    u16 unk_6c;
    u16 unk_6e;
} PlayerItemHeldObjectEntity;
extern bool32 ProcessMovement10(Entity*);

extern const s8 gUnk_081320C4[];

bool32 sub_080AD32C(PlayerItemHeldObjectEntity*);
void sub_080AD27C(PlayerItemHeldObjectEntity*);
u32 sub_0806F8DC(Entity*);

extern const u16 gUnk_081320CC[];
extern const u32 gUnk_081320D4[];

void PlayerItemHeldObject(Entity* this) {
    gUnk_081320A8[this->subAction](this);
}

ASM_FUNC("asm/non_matching/playerItem13/sub_080ACF2C.inc", void sub_080ACF2C(Entity* this))

void sub_080ACFCC(PlayerItemHeldObjectEntity* this) {
    Entity* child = super->child;
    if ((this->unk_6c == child->kind) || (this->unk_6e == child->id)) {
        if (child->action != 2) {
            PlayerDropHeldObject();
            DeleteThisEntity();
        } else {
            if ((gPlayerState.heldObject == 0) || ((gNewPlayerEntity.unk_79 & 0x7f) != 0)) {
                sub_080AD27C(this);
                super->subAction++;
                super->flags &= 0x7f;
                super->direction = 0xff;
                super->zVelocity = 0;
            }
        }
    } else {
        PlayerDropHeldObject();
        DeleteThisEntity();
    }
}

void sub_080AD040(PlayerItemHeldObjectEntity* this) {
    PlayerItemHeldObjectEntity* child;
    u32 tile;
    u32 tmp;

    child = (PlayerItemHeldObjectEntity*)super->child;
    if ((child->base).action != 2) {
        DeleteThisEntity();
    }
    if ((super->bitfield & 0x80) != 0) {
        super->z.WORD = 0;
    }
    if (super->speed != 0) {

        if ((super->knockbackDuration & 0x80) != 0) {
            super->direction = super->knockbackDirection;
            super->knockbackDuration = 0;
        }
        if (GetRelativeCollisionTile(super, gUnk_081320C4[super->direction >> 2],
                                     gUnk_081320C4[(super->direction >> 2) + 1]) == 0x74) {
            LinearMoveUpdate(super);
        } else {
            tile = sub_080B1B0C(super);
            if ((tile != 0x24) && (tile != 0x26)) {
                ProcessMovement10(super);
            }
        }
        if (GravityUpdate(super, 0x2000) == 0) {
            (child->base).zVelocity = super->zVelocity;
            (child->base).x = super->x;
            (child->base).y = super->y;
            (child->base).z = super->z;
            tile = GetTileUnderEntity(super);
            switch (tile) {
                case 0xd:
                case 0x10:
                case 0x11:
                case 0x13:
                case 0x5a:
                    if (child == this) {

                        switch (tile) {
                            case 0xd:
                                CreateFx(super, FX_FALL_DOWN, 0);
                                break;
                            case 0x5a:
                                CreateFx(super, FX_LAVA_SPLASH, 0);
                                break;
                            case 0x10:
                            case 0x11:
                                CreateFx(super, FX_WATER_SPLASH, 0);
                                break;
                            case 0x13:
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
                        CreateFx(super, super->actionDelay, 0x80);
                    } else {
                        CreateObjectWithParent(super, super->type2, super->actionDelay, 0);
                    }
                }
                DeleteThisEntity();
            } else {
                if (super->actionDelay != 0 || sub_080AD32C(child)) {
                    if (super->actionDelay == 1) {
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
                    super->actionDelay++;
                    super->zVelocity = 0x10000;
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
        tmp = gPlayerEntity.frame & 1;
        if (tmp != 0) {
            SoundReq(SFX_PLY_VO5);
            sub_080AD27C(this);
            return;
        }
        if ((gPlayerState.heldObject != 0) && ((gNewPlayerEntity.unk_79 & 0x80) == 0)) {
            return;
        }
        sub_080AD27C(this);
        super->flags &= 0x7f;
        super->direction = 0xff;
        super->zVelocity = tmp & 1;
        return;
    }
}

void sub_080AD274(Entity* this) {
    DeleteThisEntity();
}

void sub_080AD27C(PlayerItemHeldObjectEntity* this) {
    u32 tmp;
    PlayerItemHeldObjectEntity* child = (PlayerItemHeldObjectEntity*)super->child;
    gNewPlayerEntity.unk_74 = NULL;
    if ((this->unk_6c == (u16)(child->base).kind) && (this->unk_6e == (u16)(child->base).id)) {
        if (child != this) {
            (child->base).subAction = 2;
        } else {
            super->spritePriority.b1 = 3;
        }
        super->hitbox = (child->base).hitbox;
        tmp = super->field_0x16 >> 4;
        super->speed = gUnk_081320CC[tmp];
        super->zVelocity = gUnk_081320D4[tmp];
        (child->base).z.HALF.HI += 8;
        super->z.HALF.HI = (child->base).z.HALF.HI;
        super->collisionLayer = (child->base).collisionLayer;
        super->y.HALF.HI = gPlayerEntity.y.HALF.HI;
        super->x.HALF.HI = gPlayerEntity.x.HALF.HI;
        super->field_0x3c = gPlayerEntity.field_0x3c;
        super->flags |= 0x80;
        sub_0801766C(super);
    } else {
        PlayerDropHeldObject();
        DeleteThisEntity();
    }
}

bool32 sub_080AD32C(PlayerItemHeldObjectEntity* this) {
    bool32 result = FALSE;
    if (((super->field_0x16 & 0xf0) == 0x10) ||
        ((super->kind == OBJECT && ((super->id == 5 || (super->id == 0x7d)))))) {
        result = TRUE;
    }
    return result;
}
