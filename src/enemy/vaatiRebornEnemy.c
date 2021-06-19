#include "global.h"
#include "enemy.h"
#include "coord.h"
#include "flags.h"
#include "random.h"
#include "audio.h"
#include "functions.h"

extern u32 __modsi3(u32, u32);
extern void sub_080AEFB4(Entity*);
extern u8 gEntCount;

void sub_0803DFBC(Entity*);
void sub_0803DC58(Entity*);
void sub_0803D134(Entity*);
void sub_0803D264(Entity*);
void sub_0803D408(Entity*);
void sub_0803D560(Entity*);
void sub_0803D658(Entity*);
void sub_0803D700(Entity*);
void sub_0803D830(Entity*);
void sub_0803D8FC(Entity*);
void sub_0803D974(Entity*);
void sub_0803D9BC(Entity*);
void sub_0803DAA8(Entity*);
void sub_0803DAE4(Entity*);
void sub_0803DB88(Entity*);
void sub_0803DBB8(Entity*);
void sub_0803DD78(Entity*);
u32 sub_0803DEE0(Entity*);
u32 sub_0803E028(Entity*);

typedef struct xy {
    s8 x;
    s8 y;
} PACKED xy;

void (*const gUnk_080D0470[])(Entity*) = {
    sub_0803D134, sub_0803D264, sub_0803D408, sub_0803D560, sub_0803D658, sub_0803D700, sub_0803D830, sub_0803D8FC,
};
void (*const gUnk_080D0490[])(Entity*) = {
    sub_0803D974,
    sub_0803D9BC,
};
void (*const gUnk_080D0498[])(Entity*) = {
    sub_0803DAA8,
    sub_0803DAE4,
};
void (*const gUnk_080D04A0[])(Entity*) = {
    sub_0803DB88,
    sub_0803DBB8,
};

extern const xy gUnk_080D04A8[];
extern const Coords gUnk_080D04AC[];

void VaatiRebornEnemy(Entity* this) {
    switch (this->type) {
        case 0:
            sub_0803DFBC(this);
            gUnk_080D0470[this->action](this);
            break;
        case 1:
            sub_0803DC58(this);
            gUnk_080D0490[this->action](this);
            break;
        case 2:
            gUnk_080D0498[this->action](this);
            break;
        case 3:
            gUnk_080D04A0[this->action](this);
            break;
    }
}

void sub_0803D134(Entity* this) {
    s32 i;
    Entity* entity;
    const xy* ptr;

    if (CheckLocalFlag(0x7b) != 0) {
        DeleteThisEntity();
    }
    sub_0804A720(this);
    if (CheckRoomFlag(0) && (gEntCount < 0x42)) {
        ClearRoomFlag(0);
        this->action = 3;
        this->field_0x74.HALF.LO = -1;
        this->actionDelay = 0;
        this->field_0x76.HALF.LO = 0;
        this->spriteSettings.b.draw = 1;
        this->direction = 0xff;
        this->spritePriority.b0 = 4;
        this->height.WORD = 0;
        this->field_0x80.HALF.LO = 2;
        this->field_0x86.HALF.LO = 0;
        this->cutsceneBeh.HALF.HI = 0x30;
        this->cutsceneBeh.HALF.LO = -1;
        this->field_0x86.HALF.HI = 0;
        this->field_0x82.HALF.LO = 0;
        this->field_0x82.HALF.HI = 0;
        *(u32*)(&this->field_0x78) = this->x.WORD;
        this->field_0x7c = this->y;
        entity = CreateEnemy(VAATI_REBORN_ENEMY, 1);
        entity->parent = this;
        this->attachedEntity = entity;
        for (i = 0; i < 6; i++) {
            entity = CreateEnemy(VAATI_BALL, 0);
            entity->parent = this;
            entity->field_0x78.HALF.HI = i;
        }
        for (i = 0; i < 4; i++) {
            entity = CreateEnemy(VAATI_REBORN_ENEMY, 3);
            entity->parent = this;
            entity->actionDelay = i;
        }
        for (i = 0; i < 2; i++) {
            entity = CreateEnemy(VAATI_BALL, 1);
            entity->parent = this;
            entity->spriteSettings.b.flipX = i;
            ptr = &gUnk_080D04A8[i];
            PositionRelative(this, entity, ptr->x << 0x10, ptr->y << 0x10);
        }
        InitAnimationForceUpdate(this, 0);
    }
}

void sub_0803D264(Entity* this) {
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            if ((this->field_0x74.HALF.LO & 0x70) == 0) {
                if (this->attachedEntity->actionDelay == 0) {
                    sub_0803DD78(this);
                    if (this->field_0x74.HALF.HI != 0) {
                        this->action = 2;
                        this->field_0x74.HALF.LO = 0;
                        this->actionDelay = 0x10;
                        this->direction = 0xff;
                    } else {
                        if ((this->field_0x86.HALF.LO != 0) || (this->field_0x80.HALF.LO != 0)) {
                            this->direction = ((Random() & 0x80) >> 3) | 8;
                        } else {
                            this->direction = 0xff;
                        }
                    }
                } else {
                    this->actionDelay = 2;
                }
            } else {
                this->action = 3;
                this->field_0x74.HALF.HI = this->field_0x74.HALF.LO & 0x80;
                this->field_0x74.HALF.LO = 0;
                this->actionDelay = 0xc0;
                this->direction = 0xff;
                this->spriteSettings.b.draw = 1;
                InitAnimationForceUpdate(this, 0);
            }
        }
    } else {
        if (--this->field_0x76.HALF.HI == 0) {
            switch (sub_0803DEE0(this)) {
                case 0:
                    this->action = 4;
                    this->actionDelay = 0xa0;
                    this->direction = 0xff;
                    this->cutsceneBeh.HALF.LO = 0xff;
                    InitAnimationForceUpdate(this, 1);
                    break;
                case 1:
                    this->action = 6;
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0;
                    this->direction = 0xff;
                    break;
                case 3:
                    this->action = 5;
                    this->field_0x74.HALF.LO = 0;
                    this->field_0xf = 0x20;
                    this->direction = 0xff;
                    break;
                case 2:
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0x20;
                    if ((this->field_0x86.HALF.LO != 0) || (this->field_0x80.HALF.LO != 0)) {
                        this->direction = ((Random() & 0x80) >> 3) | 8;
                    } else {
                        this->direction = 0xff;
                    }
                    break;
            }
        }
        if (this->attachedEntity->actionDelay == 0) {
            this->cutsceneBeh.HALF.HI++;
            if ((this->cutsceneBeh.HALF.HI & 3) == 0) {
                switch (this->cutsceneBeh.HALF.HI & 0x30) {
                    case 0:
                    case 0x30:
                        this->y.HALF.HI++;
                        break;
                    case 0x10:
                    case 0x20:
                        this->y.HALF.HI--;
                }
            }
            sub_080AEFB4(this);
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0803D408(Entity* this) {
    const Coords* ptr;

    switch (this->field_0x74.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                this->actionDelay = 0x20;
                InitAnimationForceUpdate(this, 3);
                SoundReq(SFX_19B);
            }
            break;
        case 1:
            if ((this->frames.all & 0x80) != 0) {
                this->field_0x74.HALF.LO = 2;
                this->spriteSettings.b.draw = 0;
                this->actionDelay = 0x10;
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                if (sub_0803E028(this) == 0) {
                    this->field_0x80.HALF.HI += 1 + (Random() & 3);
                    this->field_0x80.HALF.HI = __modsi3(this->field_0x80.HALF.HI, 5);
                    ptr = &gUnk_080D04AC[this->field_0x80.HALF.HI];
                    this->x.HALF.HI = gRoomControls.roomOriginX + ptr->HALF.x + 0x10;
                    this->y.HALF.HI = gRoomControls.roomOriginY + ptr->HALF.y + 0x10;
                }
                this->spriteSettings.b.draw = 1;
                this->actionDelay = 0x20;
                InitAnimationForceUpdate(this, 4);
                SoundReq(SFX_F5);
            }
            break;
        case 3:
            if ((this->frames.all & 0x80) != 0) {
                this->spriteSettings.b.draw = 1;
                if (4 < this->field_0x80.HALF.HI) {
                    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
                    this->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0x18;
                }
                if (--this->field_0x76.HALF.HI == 0) {
                    this->action = 1;
                    this->actionDelay = 1;
                } else {
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0x10;
                }
                InitAnimationForceUpdate(this, 0);
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}
