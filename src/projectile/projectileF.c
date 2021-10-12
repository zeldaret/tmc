#include "entity.h"
#include "enemy.h"
#include "random.h"
#include "functions.h"
#include "audio.h"

extern void (*const gUnk_08129ABC[])(Entity*);

extern void (*const gUnk_08129AD0[])(Entity*);

void sub_080A99F0(Entity*);
extern void sub_080AE58C(Entity*, u32, u32);
extern u32 sub_0806FC80(Entity*, Entity*, s32);

extern u8 gUnk_08129ADC[];

void ProjectileF(Entity* this) {
    gUnk_08129ABC[GetNextFunction(this)](this);
}

void sub_080A95F8(Entity* this) {
    gUnk_08129AD0[this->action](this);
}

void sub_080A9610(Entity* this) {
    u32 uVar1;
    u32 uVar2;

    this->action = 1;

    switch (this->type) {
        case 0:
            sub_0806F62C(this, 0x4800, this->direction);
            this->speed = 0x200;
            this->actionDelay = 0;
            this->field_0xf = this->direction;
            this->field_0x78.HWORD = 300;
            InitAnimationForceUpdate(this, 0);
            break;
        case 1:
            this->spriteRendering.b3 = 3;
            this->spritePriority.b0 = 6;
            this->speed = (Random() & 0x1ff) + 0x200;
            this->field_0x20 = (Random() & 0x1fff) + 0x18000;
            uVar1 = (((u8)Random() & 7) - 4);
            this->direction -= uVar1;
            *(u32*)&this->field_0x78 = 600;
            sub_0806F62C(this, this->speed, this->direction);
            InitializeAnimation(this, 4);
            break;
        case 2:
            if ((Random() & 1) != 0) {
                this->direction = (Random() & 7) + this->direction;
            } else {
                this->direction = this->direction - (Random() & 7);
            }
            this->speed = 0x200;
            this->actionDelay = 0x30;
            sub_0806F62C(this, 0x5000, this->direction);
            InitializeAnimation(this, 5);
            break;
        case 3:
            CopyPosition(&gPlayerEntity, this);
            this->height.WORD = 0xff600000;
            this->x.HALF.HI += 0x60;
            this->y.HALF.HI += 0x40;
            this->x.HALF.HI -= (s32)Random() % 0xc0;
            uVar2 = Random() & 0x7f;
            this->y.HALF.HI -= uVar2;
            InitializeAnimation(this, 0);
            break;
    }

    SoundReq(SFX_1B5);
}

void sub_080A976C(Entity* this) {
    u32 index;

    switch (this->type) {
        case 0:
            if (this->parent->action == 2) {
                DeleteThisEntity();
            }
            if ((this->type2 == 0) && ((this->bitfield & 0x80) != 0)) {
                if ((this->bitfield & 0x7f) == 0) {
                    sub_080A99F0(this);
                }
                this->direction = this->field_0x3e << 3;
                this->speed = 0x400;
                this->type2 = 1;
                this->actionDelay = 0;
                this->flags &= 0x7f;
            }
            if (sub_0806FC80(this, this->parent, 0x40) != 0) {
                if (this->type2 == 0) {
                    this->direction ^= 0x80;
                    this->speed = 0x400;
                } else {
                    this->parent->currentHealth -= 1;
                    this->parent->iframes = 0x1e;
                    if (this->parent->field_0x7c.BYTES.byte0 != 0) {
                        this->parent->field_0x42 = 0x18;
                        this->parent->field_0x46 = 0x200;
                        this->parent->field_0x3e = this->direction >> 3;
                    }
                    SoundReq(SFX_BOSS_HIT);
                    sub_080A99F0(this);
                }
            }
            UpdateAnimationSingleFrame(this);
            this->field_0x78.HWORD--;
            sub_0806F62C(this, this->speed, this->direction);
            sub_080AE58C(this, this->direction >> 3, 0);
            if ((this->collisions & 0xee00) != 0) {
                this->direction = -this->direction;
            }
            if ((this->collisions & 0xee) != 0) {
                this->direction = -this->direction ^ 0x80;
            }
            if (this->direction == this->field_0xf) {
                return;
            }
            SoundReq(SFX_164);
            if (this->field_0x78.HWORD == 0) {
                this->actionDelay = 4;
            } else {
                this->actionDelay++;
            }

            this->field_0xf = this->direction;
            if (this->actionDelay < 2) {
                return;
            }
            for (index = 0; index < 3; ++index) {
                this->attachedEntity = CreateProjectileWithParent(this, 0xf, 1);
                if (this->attachedEntity != NULL) {
                    this->attachedEntity->parent = this->parent;
                    this->attachedEntity->direction = this->direction + gUnk_08129ADC[index];
                    CopyPosition(this, this->attachedEntity);
                }
            }
            sub_080A99F0(this);
            break;
        case 1:
            if (this->parent->action == 2) {
                sub_080A99F0(this);
            }
            GetNextFrame(this);
            if (sub_08003FC4(this, 0x1800) != 0) {
                sub_080AE58C(this, this->direction >> 3, 0);
                if (this->collisions == 0) {
                    sub_0806F62C(this, (s32)this->speed, (u32)this->direction);
                } else {
                    sub_080A99F0(this);
                }
            }
            if (*(u32*)&this->field_0x78 < 0x1e) {
                if ((*(u32*)&this->field_0x78 & 7) != 0) {
                    this->spriteSettings.b.draw = 1;
                } else {
                    this->spriteSettings.b.draw = 0;
                }
            }
            if (--*(u32*)&this->field_0x78 == -1) {
                sub_080A99F0(this);
            }
            if ((this->bitfield & 0x80) == 0) {
                return;
            }
            sub_080A99F0(this);
            break;
        case 2:
            GetNextFrame(this);
            if (--this->actionDelay != 0xff) {
                sub_0806F62C(this, this->speed, this->direction);
                return;
            }
            if (this->attachedEntity != NULL) {
                this->attachedEntity->actionDelay = 1;
            }
            DeleteThisEntity();
            break;
        case 3:
            if (sub_08003FC4(this, 0x1800) != 0) {
                return;
            }
            CreateFx(this, 4, 0);
            DeleteThisEntity();
            break;
    }
}

void sub_080A99F0(Entity* this) {
    CreateFx(this, 4, 0);
    DeleteThisEntity();
}
