#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "coord.h"
#include "functions.h"

extern void (*const gUnk_08129740[])(Entity*);

extern void (*const gUnk_08129754[])(Entity*);

extern Hitbox gUnk_08129764;

extern void sub_08078954(Entity*);

void Projectile6(Entity* this) {
    gUnk_08129740[GetNextFunction(this)](this);
}

void sub_080A87E4(Entity* this) {
    if (this->type == 1) {
        if (this->attachedEntity == NULL) {
            DeleteThisEntity();
        }
        if (this->attachedEntity->next == NULL) {
            DeleteThisEntity();
        }
    }
    gUnk_08129754[this->action](this);
}

void sub_080A881C(Entity* this) {
    this->field_0x46 = 0;
    if (this->type == 0) {
        this->parent->attachedEntity = NULL;
        if (this->bitfield == 0x80) {
            gPlayerState.hurtBlinkSpeed = 0xf0;
            ModHealth(-2);
        }
        DeleteThisEntity();
    } else {
        if (this->action < 2) {
            this->action = 2;
            this->parent->field_0x82.HALF.HI = 0xc0;
        }
    }
}

void sub_080A8868(Entity* this) {
    this->action = 1;
    this->subAction = 0;
    this->spriteSettings.b.shadow = 1;
    this->field_0x20 = 0x8000;
    this->hitbox = &gUnk_08129764;
    this->field_0x3c |= 0x10;
    switch (this->type) {
        case 0:
            InitializeAnimation(this, 0);
            break;
        case 1:
            this->actionDelay = 0;
            this->field_0xf = 0;
            break;
        case 2:
            InitializeAnimation(this, 5);
            break;
    }
}

void sub_080A88C8(Entity* this) {
    Entity* entity;
    Entity* parent;

    parent = this->parent;
    if (parent == NULL) {
        this->action = 2;
    }
    if (parent->next == NULL) {
        this->action = 2;
    }
    PositionRelative(parent, this, 0, -0x10000);
    switch (this->type) {
        case 0:
            this->height.HALF.HI += 0x10;
            break;
        case 1:
            this->height.HALF.HI += 0xe;
            sub_08078954(this->attachedEntity);
            CopyPosition(this, this->attachedEntity);
            if ((0xf < (u8)(this->actionDelay++ + 1)) && (entity = this->attachedEntity, entity->actionDelay == 0)) {
                if ((this->actionDelay & 2) != 0) {
                    entity->field_0xf += 1;
                }
                if ((this->attachedEntity->field_0xf < 0x20) && ((this->attachedEntity->field_0xf & 3) == 3)) {
                    parent->field_0x82.HALF.HI = 0xc0;
                    this->action = 2;
                }
            }
            break;
        case 2:
            this->height.HALF.HI += 0xe;
            if (sub_080041A0(this, &gPlayerEntity, 0xe, 0xe) != 0) {
                this->action = 2;
                parent->field_0x82.HALF.HI = 0xc0;
            }
            break;
    }
}

void sub_080A8988(Entity* this) {
    u8 bVar1;
    u32 uVar2;
    u32 tmp;
    Entity* entity;

    if (this->type == 1) {
        entity = this->attachedEntity;
        if (entity == NULL) {
            DeleteThisEntity();
        }
        if (entity->next == NULL) {
            DeleteThisEntity();
        }
        sub_08078954(entity);
        CopyPosition(this, entity);
    }
    if (sub_080044EC(this, 0x2800) != 1) {
        return;
    }

    tmp = sub_080043E8(this);
    if (tmp != 0) {
        switch (tmp) {
            case 2:
                CreateFx(this, 0xb, 0);
                break;
            case 1:
                CreateFx(this, 0, 0);
                break;
            case 3:
                CreateFx(this, 0xc, 0);
                break;
        }
        DeleteThisEntity();
    }

    switch (this->type) {
        case 0:
            InitializeAnimation(this, 1);
            EnqueueSFX(0x84);
            this->action = 3;
            return;
        case 2:
            entity = CreateFx(this, 5, 0x80);
            if (entity != NULL) {
                entity->parent = NULL;
            }
        case 1:
            DeleteEntity(this);
            break;
    }
}

void sub_080A8A48(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteEntity(this);
    }
}
