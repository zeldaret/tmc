#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "player.h"
#include "functions.h"

extern void SoundReqClipped(Entity*, u32);

extern void (*const V1DarkMagicProjectile_Functions[])(Entity*);
extern void (*const V1DarkMagicProjectile_Actions[])(Entity*);
extern void (*const V1DarkMagicProjectile_SubActions[])(Entity*);

void sub_080AAF74(Entity*);
void sub_080AB034(Entity*);

void V1DarkMagicProjectile(Entity* this) {
    V1DarkMagicProjectile_Functions[GetNextFunction(this)](this);
}

void V1DarkMagicProjectile_OnTick(Entity* this) {
    V1DarkMagicProjectile_Actions[this->action](this);
    if ((this->type2 == 0) && (--this->cutsceneBeh.HWORD == 0)) {
        this->health = 0;
    }
}

void sub_080AAC44(Entity* this) {
    if ((this->bitfield & 0x80) != 0) {
        if (this->type2 == 0) {
            if ((this->bitfield & 0x3f) == 0) {
                this->action = 2;
                COLLISION_OFF(this);
                if (this->type == 0) {
                    ResolveEntityOnTop(&gPlayerEntity, this);
                } else {
                    ResolveEntityOnTop(this->parent, this);
                }
                ResetPlayer();
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
            }
            if (gPlayerEntity.health == 0) {
                this->health = 0;
            }
        } else {
            SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
            CopyPosition(this->parent, this);
        }
    }
    if (this->knockbackDuration != 0) {
        this->knockbackDuration = 0;
    }
}

void sub_080AACE0(Entity* this) {
    Entity* parent;
    if (this->type && this->type2) {
        DeleteThisEntity();
    }

    if (this->spriteSettings.draw == 1) {
        this->spriteSettings.draw = 0;
        this->field_0x86.HALF.LO = 1;
        CreateFx(this, 2, 0);
    }

    parent = this->parent;
    if (this->type2 == 0) {
        u8* ptr = &(parent->field_0x74.HALF.LO);
        parent->field_0x74.HALF.LO = 3;
        parent->field_0x80.HALF.LO += this->field_0x80.HALF.HI >> 1;
        if (parent->field_0x80.HALF.LO > 8) {
            parent->field_0x80.HALF.LO = 8;
        } else if (parent->field_0x80.HALF.LO == 0) {
            parent->field_0x80.HALF.LO = 1;
        }
    } else {
        parent->cutsceneBeh.HALF.LO = 0;
        parent->hitType = 0x2b;
    }

    if (this->field_0x86.HALF.LO == 0) {
        CreateFx(this, 2, 0);
    }

    DeleteThisEntity();
}

void sub_080AAD70(Entity* this) {
    if (sub_0806F520() == 0) {
        this->health = 0;
    }
    V1DarkMagicProjectile_SubActions[this->subAction](this);
}

void V1DarkMagicProjectile_SubAction0(Entity* this) {
    this->subAction = 2;
}

void V1DarkMagicProjectile_SubAction1(Entity* this) {
}

void V1DarkMagicProjectile_SubAction2(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        this->health = 0;
    }
}

void V1DarkMagicProjectile_Init(Entity* this) {
    Entity* entity;

    if (this->type2 == 0) {
        this->action = 1;
    } else {
        this->action = 3;
        this->hitType = 0x2c;
        ResolveEntityOnTop(this->parent, this);
    }
    if (this->type == 0) {
        this->actionDelay = 0;
        this->field_0xf = 4;
        this->field_0x80.HALF.LO = 0;
        this->field_0x80.HALF.HI = 0;
        this->health = 0x10;
        this->z.HALF.HI += 4;
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 4;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        this->field_0x86.HALF.LO = 0;
        this->cutsceneBeh.HWORD = 300;
        entity = CreateProjectile(0x18);
        if (entity != NULL) {
            entity->type = 1;
            entity->type2 = this->type2;
            entity->parent = this;
        }
    } else {
        ResolveEntityOnTop(this->parent, this);
        COLLISION_OFF(this);
        CopyPosition(this->parent, this);
    }
    InitializeAnimation(this, this->type);
}

void V1DarkMagicProjectile_Action1(Entity* this) {
    u8 bVar1;
    u32 uVar2;

    switch (this->type) {
        case 0:
            if (--this->field_0xf == 0) {
                this->field_0xf = 4;
                uVar2 = GetFacingDirection(this, &gPlayerEntity);
                sub_08004596(this, uVar2);
            }
            LinearMoveUpdate(this);
            break;
        case 1:
            if ((this->parent == NULL) || (this->parent->next == NULL)) {
                DeleteThisEntity();
            }
        case 2:
            if (this->parent->spriteSettings.draw == 0) {
                DeleteThisEntity();
            }
            CopyPosition(this->parent, this);
            break;
    }
    sub_080AB034(this);
}

void V1DarkMagicProjectile_Action2(Entity* this) {
    sub_080AAF74(this);
    sub_080AB034(this);
}

void V1DarkMagicProjectile_Action3(Entity* this) {
    CopyPosition(this->parent, this);
    sub_080AB034(this);
    this->spriteSettings.draw = this->parent->spriteSettings.draw;
    if (this->type != 0) {
        this->health = this->parent->health;
    }
#ifndef EU
    if (this->parent->action == 2) {
        if ((this->flags & ENT_COLLIDE) != 0) {
            COLLISION_OFF(this);
        }
    } else {
        if ((this->flags & ENT_COLLIDE) == 0) {
            COLLISION_ON(this);
        }
    }
#endif
}

void sub_080AAF74(Entity* this) {
    if (sub_0807953C() != 0) {
        this->field_0x80.HALF.LO += (Random() & 1) + 1;
    }
    if (++this->actionDelay == 0x3c) {
        this->actionDelay = 0x1e;
        gPlayerEntity.iframes = 8;
        ModHealth(-4);
        SoundReqClipped(&gPlayerEntity, 0x7a);
        if (gPlayerEntity.health == 0) {
            this->health = 0;
        }
    }
    if (!((this->field_0x80.HALF.LO < 0x31) && (this->field_0x80.HALF.HI != 0x10))) {
        this->action = 1;
        this->field_0x80.HALF.LO = 0;
        gPlayerEntity.iframes = 0xf0;
        gPlayerState.mobility = 0;
        this->health = 0;
    } else {
        ResetPlayer();
        gPlayerState.mobility |= 0x80;
        gPlayerState.field_0xa |= 0x80;
        CopyPosition(&gPlayerEntity, this);
        this->z.HALF.HI = gPlayerEntity.z.HALF.HI - 4;
    }
}

void sub_080AB034(Entity* this) {
    u32 tmp;

    GetNextFrame(this);
    if ((this->frameSpriteSettings & 1) != 0) {
        tmp = 0;
    } else {
        tmp = 0x139;
    }
    ChangeObjPalette(this, tmp);
}

void (*const V1DarkMagicProjectile_Functions[])(Entity*) = {
    V1DarkMagicProjectile_OnTick, sub_080AAC44, DeleteEntity, sub_080AACE0, DeleteEntity, sub_080AAD70,
};
void (*const V1DarkMagicProjectile_Actions[])(Entity*) = {
    V1DarkMagicProjectile_Init,
    V1DarkMagicProjectile_Action1,
    V1DarkMagicProjectile_Action2,
    V1DarkMagicProjectile_Action3,
};
void (*const V1DarkMagicProjectile_SubActions[])(Entity*) = {
    V1DarkMagicProjectile_SubAction0,
    V1DarkMagicProjectile_SubAction1,
    V1DarkMagicProjectile_SubAction2,
};
