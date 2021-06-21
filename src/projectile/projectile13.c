#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "functions.h"
#include "audio.h"
#include "random.h"
#include "game.h"

extern void (*const gUnk_08129C7C[])(Entity*);

extern void (*const gUnk_08129C90[])(Entity*);
void sub_080AA1D8(Entity*);

void sub_080AA270(Entity*);

bool32 sub_080AA2E0(Entity*);
void sub_080AA320(Entity*);

void sub_080AA3E0(Entity*, u32);
bool32 sub_080AA374(Entity*);

extern u8 gUnk_08129CA4[];
extern Hitbox* gUnk_08129CF4[];
extern u8 gUnk_08129CAC[];

extern Entity* sub_08049DF4(u32);
extern u32 sub_08049F1C(Entity*, Entity*, u32);

extern s32 sub_080AF090(Entity*);

extern Hitbox gUnk_080FD150;

extern s8 gUnk_08129D14[];
extern u32 sub_0806F824(Entity*, Entity*, u32, u32);

void Projectile13(Entity* this) {
    Entity* entity;

    entity = this->attachedEntity;
    if (entity == NULL) {
        entity = this->parent;
    }
    if ((entity->field_0x43 == 0) && ((this->flags & 0x80) == 0)) {
        this->flags |= 0x80;
    }
    gUnk_08129C7C[GetNextFunction(this)](this);
}

void sub_080A9E94(Entity* this) {
    if (this->action < 3) {
        sub_080AA1D8(this);
    }
    gUnk_08129C90[this->action](this);
}

void sub_080A9EBC(Entity* this) {
    Entity* parent;

    if ((this->bitfield & 0x80) != 0) {
        switch (this->action) {
            case 4:
                this->field_0xf = 0;
                ModHealth(-2);
                sub_080AF090(this);
                UpdateAnimationSingleFrame(this);
                break;
            case 3:
                if (this->field_0x43 != 0) {
                    this->field_0x82.HALF.LO = 2;
                    this->animationState = 0xff;
                    sub_080AA270(this);
                    this->field_0xf = 0x20;
                }
                break;
            default:
                parent = this->parent;
                parent->iframes = this->iframes;
                parent->field_0x3e = this->field_0x3e;
                parent->field_0x42 = this->field_0x42;
                if (this->action == 1) {
                    sub_080AA320(this);
                }
                break;
        }
        this->field_0x42 = 0;
    }
}

void sub_080A9F50(Entity* this) {
    this->action = 1;
    this->field_0x80.HWORD = 0;
    this->animationState = 0xff;
    this->field_0x82.HALF.LO = 0;
    this->spritePriority.b0 = 4;
    sub_0806FAD8(this, this->parent);
    sub_080AA270(this);
}

void sub_080A9F90(Entity* this) {
    if (this->field_0x80.HWORD != 0) {
        this->field_0x80.HWORD -= 1;
    } else {
        if (--this->field_0xf == 0) {
            sub_080AA270(this);
        } else {
            if (sub_080AA2E0(this) != 0) {
                sub_080AA320(this);
            }
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_080A9FD0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frames.all & 0x40) != 0) {
        this->frames.all &= 0xbf;
        EnqueueSFX(SFX_15D);
    }
    this->field_0x78.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    if (GetTileType(this->field_0x78.HWORD, this->collisionLayer) == 0x4000) {
        SetTile(0x4005, this->field_0x78.HWORD, this->collisionLayer);
    }
}

#ifdef EU
NAKED void sub_080AA044(Entity* this) {
    asm(".incbin \"baserom_eu.gba\", 0x0A983C, 0x00000C4"); // TODOg disassemble
}
#else
void sub_080AA044(Entity* this) {
    u32 uVar1;
    s8* tmp;
    Entity* entity;

    entity = this->attachedEntity;
    if (entity == NULL) {
        DeleteThisEntity();
    }
    if (entity->next == NULL) {
        DeleteThisEntity();
    } else {
        tmp = GetSpriteSubEntryOffsetDataPointer((u16)entity->spriteIndex, entity->frameIndex);
        if ((entity->animationState & 4) != 0) {
            PositionRelative(entity, this, -tmp[0] * 0x10000, tmp[1] << 0x10);
        } else {
            PositionRelative(entity, this, tmp[0] << 0x10, tmp[1] << 0x10);
        }
    }
    if (entity->field_0x43 == 0) {
        if (this->field_0xf != 0) {
            this->field_0xf -= 1;
        } else {
            UpdateAnimationSingleFrame(this);
            if ((this->frames.all & 0x80) != 0) {
                this->action = 4;
                this->field_0x82.HALF.LO = 3;
                this->field_0xf = 0x40;
                uVar1 = entity->animationState;
                this->direction = uVar1 << 2;
                this->animationState = uVar1 << 0x1a >> 0x1a;
                this->hitbox = &gUnk_080FD150;
                if (CheckIsDungeon() != 0) {
                    this->spriteOrientation.flipY = 1;
                }
                sub_080AA3E0(this, 0);
            }
        }
    }
}
#endif

void sub_080AA110(Entity* this) {
    s32 iVar1;
    u32 uVar2;
    Entity* entity;

    entity = this->attachedEntity;
    if (entity != NULL) {
        if (entity->next == NULL) {
            this->attachedEntity = NULL;
        }
        if (this->field_0xf != 0) {
            this->field_0xf -= 1;
        } else {
            if (sub_080AA374(this) != 0) {
                if (entity->currentHealth == 0) {
                    DeleteThisEntity();
                }
                EnqueueSFX(0xf2);
                this->action = 1;
                this->animationState = 0xff;
                this->field_0x82.HALF.LO = 0;
                this->actionDelay = 0;
                this->field_0x80.HWORD = 0x20;
                this->spriteOrientation.flipY = 2;
                this->parent = this->attachedEntity;
                this->attachedEntity = NULL;
                sub_080AA270(this);
                entity = this->parent;
                entity->action = 1;
                entity->direction = entity->animationState << 2;
                entity->speed = 0;
                entity->field_0x82.HALF.LO = 1;
                entity->actionDelay = 0;
                entity->field_0xf = 0x78;
                entity->field_0x80.HWORD = 0x20;
                sub_080AA3E0(entity, 1);
            }
        }
    } else {
        if (sub_080040A8(this) == 0) {
            DeleteThisEntity();
        }
    }
    sub_0806F69C(this);
    UpdateAnimationSingleFrame(this);
}

void sub_080AA1D8(Entity* this) {
    s8* tmp;
    Entity* parent;

    parent = this->parent;
    if (parent != NULL) {
        if (parent->next == NULL) {
            DeleteThisEntity();
        }
        if ((parent->frameIndex & 0x20) == 0) {
            tmp = GetSpriteSubEntryOffsetDataPointer((u16)parent->spriteIndex, parent->frameIndex);
            if ((parent->animationState & 4) != 0) {
                PositionRelative(parent, this, -tmp[0] * 0x10000, tmp[1] << 0x10);
            } else {
                PositionRelative(parent, this, tmp[0] << 0x10, tmp[1] << 0x10);
            }
            if (parent->field_0x43 != 0) {
                if ((this->flags & 0x80) != 0) {
                    this->flags &= 0x7f;
                }
            } else {
                if ((this->flags & 0x80) == 0) {
                    this->flags |= 0x80;
                }
            }
        }
    } else {
        DeleteThisEntity();
    }
}

void sub_080AA270(Entity* this) {
    u32 animationState;
    Entity* parent;
    parent = this->parent;
    this->field_0xf = gUnk_08129CA4[Random() & 7];
    animationState = parent->animationState;
    if (this->animationState == 0xff) {
        this->animationState = animationState;
        this->hitbox = gUnk_08129CF4[animationState];
        sub_080AA3E0(this, 0);
    } else {
        animationState = (gUnk_08129CAC[Random() & 7] + animationState) & 7;
        if (animationState != this->animationState) {
            this->animationState = animationState;
            this->hitbox = gUnk_08129CF4[animationState];
            sub_080AA3E0(this, 0);
        }
    }
}

bool32 sub_080AA2E0(Entity* this) {
    Entity* entity;
    u32 a;
    u32 b;

    entity = sub_08049DF4(0);
    if (entity == NULL) {
        return FALSE;
    }
    a = GetFacingDirection(this, entity);
    b = this->animationState * 4;
    if (Direction8Round(a + 4) != Direction8Round(b + 4)) {
        return FALSE;
    }
    if (sub_08049F1C(this, entity, 0x40) == 0) {
        return FALSE;
    }
    return TRUE;
}

NONMATCH("asm/non_matching/projectile13/sub_080AA320.inc", void sub_080AA320(Entity* this)) {
    u32 uVar2;
    Entity* parent;

    parent = this->parent;
    this->action = 2;
    this->field_0x82.HALF.LO = 1;
    this->field_0xf = 0;
    parent->action = 2;
    parent->field_0xf = 0x30;
    parent->field_0x80.HWORD = 0x50;
    parent->speed = 0;
    parent->direction = sub_08049F84(parent, 0);
    // TODO regalloc
    uVar2 = parent->direction + 4;
    this->animationState = Direction8Round(uVar2) >> 2;
    parent->animationState = DirectionRound(uVar2) >> 2;
    sub_080AA3E0(parent, 1);
    sub_080AA1D8(this);
}
END_NONMATCH

NONMATCH("asm/non_matching/projectile13/sub_080AA374.inc", bool32 sub_080AA374(Entity* this)) {
    u32 uVar1;
    u32 animationState;
    Entity* entity;
    bool32 result;

    result = FALSE;
    if ((this->attachedEntity != NULL) && (this->attachedEntity->next != NULL)) {
        // TODO regalloc
        animationState = this->attachedEntity->animationState;
        uVar1 =
            sub_0806F824(this, this->attachedEntity, gUnk_08129D14[animationState], gUnk_08129D14[animationState + 1]);
        if (sub_0806FCB8(this, this->attachedEntity->x.HALF.HI + gUnk_08129D14[animationState],
                         this->attachedEntity->y.HALF.HI + gUnk_08129D14[animationState + 1], 8) != 0) {
            result = TRUE;
        } else {
            sub_08004596(this, uVar1);
        }
    }
    return result;
}
END_NONMATCH

void sub_080AA3E0(Entity* this, u32 param) {
    u32 tmp;

    tmp = this->animationState | this->field_0x82.HALF.LO << 3;
    if (param != 0) {
        tmp >>= 1;
    }
    InitAnimationForceUpdate(this, tmp);
}
