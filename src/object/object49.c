#include "global.h"
#include "entity.h"
#include "functions.h"
#include "position.h"
#include "random.h"
#include "structures.h"

static void sub_0808F2B0(Entity*);
static void sub_0808F14C(Entity*);
static void sub_0808F244(Entity*);

extern void sub_0806FCF4(Entity*, u32, u32, u32);
extern void sub_0808F5EC(Entity*);
extern bool32 sub_0806F3E4(Entity*);

extern void (*const gUnk_08121E5C[])(Entity*);
extern void (*const gUnk_08121E88[])(Entity*);
extern void (*const gUnk_08121E98[])(Entity*);
extern const u16 gUnk_08121EA0[];

void Object49(Entity* this) {
    gUnk_08121E5C[this->entityType.form](this);
}

void sub_0808F0B8(Entity* this) {
    gUnk_08121E88[this->action](this);
}

void sub_0808F0D0(Entity* this) {
    u32 offsetX;
    u32 offsetY;
    Entity* ent;
    u32 uVar3;

    ent = CreateObjectWithParent(this, 0x49, 2, 0);
    this->attachedEntity = ent;
    if (ent == NULL) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->height.HALF.HI = -0xc0;
    offsetX = Random() % 64;
    if ((Random() & 1) != 0) {
        offsetX = -offsetX;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI + offsetX;
    offsetY = Random() % 32;
    if ((Random() & 1) != 0) {
        offsetY = -offsetY;
    }
    this->y.HALF.HI = this->parent->y.HALF.HI + offsetY;
    *(u32*)&this->field_0x74 = 0x240;
    *(u32*)&this->field_0x78 = 0x140;
    InitializeAnimation(this, 3);
    sub_0808F14C(this);
}

static void sub_0808F14C(Entity* this) {
    sub_0808F2B0(this);
    if (sub_08003FC4(this, 0x2000) == 0) {
        this->action++;
        PlaySFX(0x84);
    }
}

void sub_0808F170(Entity* this) {
    *(u32*)&this->field_0x74 -= 0x20;
    *(u32*)&this->field_0x78 += 0x20;
    sub_0806FCF4(this, *(u32*)&this->field_0x78, 8, 2);
    if (*(u32*)&this->field_0x78 > 0x1ff) {
        this->action++;
    }
    sub_0808F2B0(this);
}

void sub_0808F1A4(Entity* this) {
    *(u32*)&this->field_0x78 += 0x10;
    *(u32*)&this->field_0x74 += 0x10;
    sub_0806FCF4(this, *(u32*)&this->field_0x78, 8, 2);
    if (*(u32*)&this->field_0x78 > 0x3ff) {
        this->attachedEntity->action = 0xff;
        DeleteThisEntity();
    } else {
        sub_0808F2B0(this);
    }
}

void sub_0808F1E0(Entity* this) {
    gUnk_08121E98[this->action](this);
}

void sub_0808F1F8(Entity* this) {
    u8 bVar1;

    this->spriteRendering.b0 = 3;
    this->action++;
    this->spriteRendering.b3 = this->parent->spriteRendering.b3;
    this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
    this->spritePriority.b0 = 7;
    InitializeAnimation(this, 1);
    sub_0808F244(this);
}

static void sub_0808F244(Entity* this) {

    this->spriteSettings.b.draw = this->parent->spriteSettings.b.draw;
    this->y.HALF.HI = this->parent->y.HALF.HI + 3;
    this->x.HALF.HI = (*(s8*)&this->attachedEntity->spriteOffsetX + this->attachedEntity->x.HALF.HI);
    this->height.WORD = 0;
    *(u32*)&this->field_0x74 = 0x80 - this->parent->height.HALF.HI;
    *(u32*)&this->field_0x78 = 0x100 - this->parent->height.HALF.HI;
    *(u32*)&this->field_0x70.WORD = *((u8*)&this->parent->field_0x7c + 3);
    sub_0808F2B0(this);
    if ((this->parent->field_0x6c.HALF.HI & 2) != 0) {
        DeleteThisEntity();
    }
}

static void sub_0808F2B0(Entity* this) {
    sub_0805EC9C(this, *(u32*)&this->field_0x74, *(u32*)&this->field_0x78, this->field_0x70.WORD);
}

void sub_0808F2C0(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteRendering.b3 = this->parent->spriteRendering.b3;
        this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
        this->spriteSettings.b.draw = 1;
        this->spritePriority.b0 = 7;
        this->height.WORD = 0;

        this->y.HALF.HI = this->parent->y.HALF.HI + 3;
        this->x.HALF.HI = this->parent->x.HALF.HI;
        InitializeAnimation(this, 3);
    }
    if (this->parent->height.HALF.HI == 0) {
        *(u32*)&this->field_0x74 = *(u32*)&this->parent->field_0x74;
        *(u32*)&this->field_0x78 = *(u32*)&this->parent->field_0x78;
    } else {
        *(u32*)&this->field_0x74 = 0x200 - this->parent->height.HALF.HI;
        *(u32*)&this->field_0x78 = this->parent->height.HALF.HI * -2 + 0x300;
    }
    *(u32*)&this->field_0x70 = 0;
    sub_0808F2B0(this);
    sub_0806FCF4(this, *(u32*)&this->field_0x78, 8, 2);
    if (this->action == 0xff) {
        DeleteThisEntity();
    }
}

void sub_0808F370(Entity* this) {
    if (this->action == 0) {
        if (this->parent->previousActionFlag == 1) {
            this->action = 1;
            this->field_0x70.WORD = 0;
            sub_0808F5EC(this);
        }
    } else {
        u8 flag = this->parent->previousActionFlag - 1;
        if (flag < 5) {
            if (this->field_0x70.WORD == 0) {
                if (--(*(u32*)&this->field_0x74) == -1) {
                    this->field_0x70.WORD = gUnk_08121EA0[Random() & 1];
                }
            } else {
                if (--this->field_0x70.WORD == 0) {
                    sub_0808F5EC(this);
                }
            }
        } else {
            this->action = 0;
            *(u32*)&this->field_0x74 = 0;
        }
    }
}

void sub_0808F3DC(Entity* this) {
    if (this->action == 0) {
        this->spriteSettings.b.draw = 1;
        this->action = 1;
        this->actionDelay = 120;
        InitializeAnimation(this, this->entityType.form + 1);
        // TODO: This block of code might supposed to be a switch statement.
        if (this->entityType.form != 8) {
            if (this->entityType.form == 7) {
                sub_0806FAD8(this->attachedEntity, this);
                return;
            }
        } else {
            this->damageType = this->attachedEntity->damageType;
            this->attachedEntity->damageType = 0x7E;
        }
        ResolveEntityOnTop(this->attachedEntity, this);
    } else {
        if (*(u32*)&this->parent->field_0x74 == 0) {
            if (this->entityType.form == 8) {
                this->attachedEntity->damageType = this->damageType;
            }
            DeleteThisEntity();
        }

        if (this->entityType.form == 5 && this->frames.b.f0) {
            Entity* entity = CreateObjectWithParent(this->attachedEntity, 0x49, 8, 0);
            if (entity) {
                entity->parent = this->parent;
                entity->attachedEntity = this->parent->parent;
            }
        }

        GetNextFrame(this);
        CopyPositionAndSpriteOffset(this->attachedEntity, this);
    }
}

void sub_0808F498(Entity* this) {
    u32 var0;

    if (this->action != 0) {
        if (sub_0806F3E4(this)) {
            if (gScreenTransition.frameCount % 16 == 0) {
                PlaySFX(0xEF);
            }
            DeleteThisEntity();
        }

        if (--this->actionDelay == 0xFF) {
            DeleteThisEntity();
        }

        if (gPlayerState.field_0x1c != 1) {
            DeleteThisEntity();
        }
    } else {
        this->action = 1;
        this->actionDelay = 64;
        var0 = this->entityType.parameter != 0 ? 44 : 43;
        this->x.HALF.HI -= this->parent->boundingBox->unknown[6];
        this->x.HALF.HI += (s32)Random() % (this->parent->boundingBox->unknown[6] * 2);
        this->y.HALF.HI -= this->parent->boundingBox->unknown[7];
        this->y.HALF.HI += (s32)Random() % (this->parent->boundingBox->unknown[7] * 2);
        sub_0801D2B4(this, var0);
        InitializeAnimation(this, 4);
    }
}

void sub_0808F554(Entity* this) {
    CopyPositionAndSpriteOffset(this->parent, this);
    this->spriteOffsetY -= 24;
    if ((s8)this->parent->spriteOffsetX != 0) {
        this->spriteOffsetX += (s8)this->parent->spriteOffsetX / 2;
    }

    if (this->action != 0) {
        if (*(u32*)&this->cutsceneBeh) {
            if (--(*(u32*)&this->cutsceneBeh) == 0) {
                DeleteThisEntity();
            }
        }
        GetNextFrame(this);
    } else {
        this->action = 1;
        this->spriteRendering.b3 = this->parent->spriteRendering.b3;
        this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
        this->spritePriority.b0 = 0;
        InitializeAnimation(this, 3);
    }
}

void sub_0808F5EC(Entity* this) {
    Entity* entity = CreateObjectWithParent(this->attachedEntity, 0x49, 5, 0);
    if (entity) {
        entity->parent = this;
        entity->attachedEntity = this->attachedEntity;
    }

    entity = CreateObjectWithParent(this->attachedEntity, 0x49, 6, 0);
    if (entity) {
        entity->parent = this;
        entity->attachedEntity = this->attachedEntity;
    }

    entity = CreateObjectWithParent(this->attachedEntity, 0x49, 7, 0);
    if (entity) {
        entity->parent = this;
        entity->attachedEntity = this->attachedEntity;
    }

    *(u32*)&this->field_0x74 = 600;
}
