#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "player.h"
#include "audio.h"
#include "functions.h"
#include "random.h"

extern void (*const gUnk_0812A418[])(Entity*);

extern void (*const gUnk_0812A430[])(Entity*);

extern void (*const gUnk_0812A440[])(Entity*);

void sub_080AAF74(Entity*);
void sub_080AB034(Entity*);

extern void sub_0800449C(Entity*, u32);

void Projectile18(Entity* this) {
    gUnk_0812A418[GetNextFunction(this)](this);
}

void sub_080AAC0C(Entity* this) {
    gUnk_0812A430[this->action](this);
    if ((this->type2 == 0) && (--this->cutsceneBeh.HWORD == 0)) {
        this->currentHealth = 0;
    }
}

void sub_080AAC44(Entity* this) {
    if ((this->bitfield & 0x80) != 0) {
        if (this->type2 == 0) {
            if ((this->bitfield & 0x3f) == 0) {
                this->action = 2;
                this->flags &= 0x7f;
                if (this->type == 0) {
                    ResolveEntityOnTop(&gPlayerEntity, this);
                } else {
                    ResolveEntityOnTop(this->parent, this);
                }
                ResetPlayer();
                gPlayerState.field_0x1a[0] |= 0x80;
                gPlayerState.field_0xa |= 0x80;
            }
            if (gPlayerEntity.currentHealth == 0) {
                this->currentHealth = 0;
            }
        } else {
            SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
            CopyPosition(this->parent, this);
        }
    }
    if (this->field_0x42 != 0) {
        this->field_0x42 = 0;
    }
}

ASM_FUNC("asm/non_matching/projectile18/sub_080AACE0.inc", void sub_080AACE0(Entity* this))

void sub_080AAD70(Entity* this) {
    if (sub_0806F520() == 0) {
        this->currentHealth = 0;
    }
    gUnk_0812A440[this->subAction](this);
}

void sub_080AAD98(Entity* this) {
    this->subAction = 2;
}

void nullsub_541(Entity* this) {
}

void sub_080AADA4(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        this->currentHealth = 0;
    }
}

void sub_080AADBC(Entity* this) {
    Entity* entity;

    if (this->type2 == 0) {
        this->action = 1;
    } else {
        this->action = 3;
        this->damageType = 0x2c;
        ResolveEntityOnTop(this->parent, this);
    }
    if (this->type == 0) {
        this->actionDelay = 0;
        this->field_0xf = 4;
        this->field_0x80.HALF.LO = 0;
        this->field_0x80.HALF.HI = 0;
        this->currentHealth = 0x10;
        this->height.HALF.HI += 4;
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 4;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        this->field_0x86.HALF.LO = 0;
        this->cutsceneBeh.HWORD = 300;
        entity = sub_080A7EE0(0x18);
        if (entity != NULL) {
            entity->type = 1;
            entity->type2 = this->type2;
            entity->parent = this;
        }
    } else {
        ResolveEntityOnTop(this->parent, this);
        this->flags &= 0x7f;
        CopyPosition(this->parent, this);
    }
    InitializeAnimation(this, this->type);
}

void sub_080AAE88(Entity* this) {
    u8 bVar1;
    u32 uVar2;

    switch (this->type) {
        case 0:
            if (--this->field_0xf == 0) {
                this->field_0xf = 4;
                uVar2 = GetFacingDirection(this, &gPlayerEntity);
                sub_08004596(this, uVar2);
            }
            sub_0806F69C(this);
            break;
        case 1:
            if ((this->parent == NULL) || (this->parent->next == NULL)) {
                DeleteThisEntity();
            }
        case 2:
            if (this->parent->spriteSettings.b.draw == 0) {
                DeleteThisEntity();
            }
            CopyPosition(this->parent, this);
            break;
    }
    sub_080AB034(this);
}

void sub_080AAF00(Entity* this) {
    sub_080AAF74(this);
    sub_080AB034(this);
}

void sub_080AAF10(Entity* this) {
    CopyPosition(this->parent, this);
    sub_080AB034(this);
    this->spriteSettings.b.draw = this->parent->spriteSettings.b.draw;
    if (this->type != 0) {
        this->currentHealth = this->parent->currentHealth;
    }
#ifndef EU
    if (this->parent->action == 2) {
        if ((this->flags & 0x80) != 0) {
            this->flags &= 0x7f;
        }
    } else {
        if ((this->flags & 0x80) == 0) {
            this->flags |= 0x80;
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
        sub_0800449C(&gPlayerEntity, 0x7a);
        if (gPlayerEntity.currentHealth == 0) {
            this->currentHealth = 0;
        }
    }
    if (!((this->field_0x80.HALF.LO < 0x31) && (this->field_0x80.HALF.HI != 0x10))) {
        this->action = 1;
        this->field_0x80.HALF.LO = 0;
        gPlayerEntity.iframes = 0xf0;
        gPlayerState.field_0x1a[0] = 0;
        this->currentHealth = 0;
    } else {
        ResetPlayer();
        gPlayerState.field_0x1a[0] |= 0x80;
        gPlayerState.field_0xa |= 0x80;
        CopyPosition(&gPlayerEntity, this);
        this->height.HALF.HI = gPlayerEntity.height.HALF.HI - 4;
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
    sub_0801D2B4(this, tmp);
}
