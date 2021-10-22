#include "entity.h"
#include "enemy.h"
#include "object.h"
#include "random.h"
#include "flags.h"
#include "audio.h"
#include "functions.h"

void sub_080409B0(Entity*);
void sub_080408EC(Entity*);
void sub_08040AD4(Entity*);
void sub_08040670(Entity*);
void sub_080406A0(Entity*);
void sub_08040770(Entity*);
void sub_080AF18C(Entity*);
u32 sub_08040934(Entity*);
void sub_08040648(Entity*, u32, u32);

void sub_0803F818(Entity*);
void sub_0803F914(Entity*);
void sub_0803FAC8(Entity*);
void sub_0803FAD0(Entity*);
void sub_0803FD50(Entity*);
void sub_0803FE90(Entity*);
void sub_0803FF7C(Entity*);
void sub_0804006C(Entity*);
void sub_08040130(Entity*);
void sub_0804015C(Entity*);
void sub_080401E0(Entity*);
void sub_08040268(Entity*);
void sub_0804038C(Entity*);
void sub_080403CC(Entity*);
void sub_080403EC(Entity*);
void sub_0804041C(Entity*);
void sub_0804044C(Entity*);
void sub_080404D0(Entity*);
void sub_0804051C(Entity*);
void sub_080405D8(Entity*);

typedef struct {
    s8 x;
    s8 y;
} PACKED xy;
extern u8 gEntCount;

#ifdef EU
const u8 gUnk_080D0ABC[] = { 0xf0, 0xd0, 0xb0 };
#else
const u8 gUnk_080D0ABC[] = { 0xf0, 0xd0, 0xc0 };
#endif
const u8 gUnk_080D0ABF[] = { 0x3c, 0x3c, 0x1e, 0x14, 0x14, 0x14, 0, 0, 0 };
void (*const gUnk_080D0AC8[])(Entity*) = {
    sub_0803F818, sub_0803F914, sub_0803FAC8, sub_0803FAD0, sub_0803FD50, sub_0803FE90, sub_0803FF7C, sub_0804006C,
};
void (*const gUnk_080D0AE8[])(Entity*) = {
    sub_08040130,
    sub_0804015C,
};
void (*const gUnk_080D0AF0[])(Entity*) = {
    sub_080401E0,
    sub_08040268,
    sub_0804038C,
};
void (*const gUnk_080D0AFC[])(Entity*) = {
    sub_080403CC,
    sub_080403EC,
};
void (*const gUnk_080D0B04[])(Entity*) = {
    sub_0804041C,
    sub_0804044C,
};
void (*const gUnk_080D0B0C[])(Entity*) = {
    sub_080404D0,
    sub_0804051C,
    sub_080405D8,
};

const xy gUnk_080D0B18[] = { { 0x00, 0xfe }, { 0x01, 0xfe }, { 0x01, 0xfe }, { 0x02, 0xfe }, { 0x02, 0xfe },
                             { 0x03, 0xfe }, { 0x03, 0xfe }, { 0x04, 0xfe }, { 0x04, 0xff }, { 0x03, 0xff },
                             { 0x03, 0x00 }, { 0x02, 0x00 }, { 0x02, 0x00 }, { 0x01, 0x00 }, { 0x01, 0x00 },
                             { 0x00, 0x00 }, { 0x00, 0x00 }, { 0x00, 0x00 }, { 0xff, 0x00 }, { 0xff, 0x00 },
                             { 0xfe, 0x00 }, { 0xfe, 0x00 }, { 0xfd, 0x00 }, { 0xfd, 0xff }, { 0xfc, 0xff },
                             { 0xfc, 0xfe }, { 0xfd, 0xfe }, { 0xfd, 0xfe }, { 0xfe, 0xfe }, { 0xfe, 0xfe },
                             { 0xff, 0xfe }, { 0xff, 0xfe } };

const u16 gUnk_080D0B58[] = { 0x00b0, 0x0070, 0x0110, 0x0040, 0x0050, 0x0040 };

const u16 gUnk_080D0B64[] = { 0x00b0, 0x0040, 0x0110, 0x00a0, 0x00b0, 0x00c0, 0x0050, 0x00a0 };

const u8 gUnk_080D0B74[] = { 0xf0, 0xc3, 0xf0, 0x3c, 0xc3, 0x3c, 0x3c, 0xf0,
                             0x0f, 0x3c, 0xc3, 0xf0, 0xf0, 0xc3, 0x3c, 0xc3 };

const u8 gUnk_080D0B84[] = { 0x01, 0x00, 0x01, 0x02, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, 0x02,
                             0x01, 0x02, 0x01, 0x00, 0x02, 0x01, 0x02, 0x00, 0x01, 0x02, 0x01,
                             0x02, 0x00, 0x02, 0x01, 0x00, 0x01, 0x01, 0x00, 0x02, 0x00 };

void VaatiTransfigured(Entity* this) {
    switch (this->type) {
        case 0:
            if (this->action != 0) {
                this->field_0x7a.HWORD = this->field_0x78.HWORD;
                this->field_0x78.HWORD = this->x.HALF.HI;
                this->field_0x7c.HALF.HI = this->field_0x7c.HALF.LO;
                this->field_0x7c.HALF.LO = this->y.HALF.HI;
                sub_080409B0(this);
            }
            gUnk_080D0AC8[this->action](this);
            break;
        case 1:
            gUnk_080D0AE8[this->action](this);
            break;
        case 2:
            gUnk_080D0AF0[this->action](this);
            break;
        case 3:
            gUnk_080D0AFC[this->action](this);
            break;
        case 4:
            gUnk_080D0B04[this->action](this);
            break;
        case 5:
            gUnk_080D0B0C[this->action](this);
            return;
        default:
            break;
    }
}

void sub_0803F818(Entity* this) {
    Entity* enemy;
    u32 i;

    sub_0804A720(this);
    if ((CheckRoomFlag(0) != 0) && (gEntCount < 0x51)) {
        this->action = 1;
        this->spriteSettings.b.draw = 1;
        this->spritePriority.b0 = 5;
        this->field_0x6c.HALF.HI |= 1;
        this->direction = (Random() & 0x17) + 4;
        this->actionDelay = 48;
        this->field_0xf = 12;
        this->field_0x82.HALF.LO = 4;
        this->field_0x80.HALF.LO = 0xff;
        this->field_0x74.HALF.LO = 0;
        this->field_0x76.HALF.HI = 0;
        this->cutsceneBeh.HALF.LO = 9;
        this->animationState = 0;
        this->field_0x86.HALF.LO = 0;
        this->field_0x86.HALF.HI = 0;
        this->field_0x78.HWORD = this->x.HALF.HI;
        this->field_0x7a.HWORD = this->x.HALF.HI;
        this->field_0x7c.HALF.LO = this->y.HALF.HI;
        this->field_0x7c.HALF.HI = this->y.HALF.HI;
        for (i = 1; i < 6; i++) {
            sub_08040648(this, i, 0);
        }
        Random();
        sub_080408EC(this);
        for (i = 0; i < 8; ++i) {
            enemy = CreateEnemy(ENEMY_5A, 0);
            enemy->parent = this;
            enemy->type2 = i;
            if ((this->field_0x74.HALF.HI >> (i)&1) != 0) {
                enemy->actionDelay = 1;
            } else {
                enemy->actionDelay = 0;
            }
        }
        InitAnimationForceUpdate(this, 0);
    }
}

void sub_0803F914(Entity* this) {
    Entity* object;

    switch (this->field_0x80.HALF.LO) {
        case 0xff:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO = 0;
                this->actionDelay = 11;
            }
            break;
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->speed = 0x180;
                this->actionDelay = 0x14;
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->speed = 0xc0;
                this->actionDelay = 12;
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->speed = 0;
                if (this->animationState < 2) {
                    this->actionDelay = (Random() & 0x7f) + 0x40;
                } else {
                    this->actionDelay = 8;
                }
            }
            break;
        case 3:
            if (--this->actionDelay == 0) {
                this->height.HALF.HI = 0;
                this->field_0x80.HALF.LO = 0;
                this->actionDelay = gUnk_080D0ABF[(u32)this->animationState * 2];
                switch (sub_08040934(this)) {
                    case 1:
                        this->action = 4;
                        this->field_0x74.HALF.LO = 1;
                        break;
                    case 2:
                        this->action = 5;
                        break;
                    case 3:
                        this->action = 6;
                        break;
                    default:
                        this->field_0x80.HALF.LO = 4;
                        break;
                }
            } else {
                sub_08040AD4(this);
            }
            break;
        case 4:
            sub_08040670(this);
            break;
    }

    if (--this->field_0x82.HALF.LO == 0) {
        this->field_0x82.HALF.LO = 4;
        object = CreateObject(OBJECT_9B, 0, ((this->direction + 0x12) & 0x1c) >> 2);
        if (object != NULL) {
            object->parent = this;
            object->x.HALF.HI += (Random() & 0xf) - 7;
            object->y.HALF.HI += (Random() & 0xf) - 7;
            object->spritePriority.b0 = 6;
        }
    }
    if (this->field_0x80.HALF.LO != 0xff) {
        ProcessMovement(this);
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0803FAC8(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void sub_0803FAD0(Entity* this) {
    Entity* pEVar3;
    u32 uVar4;
    u32 tmp;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            uVar4 = sub_080044EC(this, 0x2800);
            if (uVar4 != 1)
                break;
            this->field_0x80.HALF.LO = 1;
            this->actionDelay = 0xc0;
            this->flags |= 0x80;
            SoundReq(SFX_14C);
            sub_08080964(0x14, 4);
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO = 2;
                this->damageType = 0x35;
                this->spriteOffsetX = 0;
            }
            if (this->currentHealth < gUnk_080D0ABC[this->animationState]) {
                tmp = 1;
                this->actionDelay = 1;
            } else {
                tmp = 0;
            }
            if (tmp) {
                this->field_0x80.HALF.LO = 2;
                this->damageType = 0x35;
                this->spriteOffsetX = 0;
                this->animationState++;
                if (this->animationState > 2) {
                    this->action = 7;
                    this->actionDelay = 0xe0;
                    sub_0807A108();
                    SoundReq(SFX_BOSS_HIT);
                    return;
                }
            }
            break;
        case 2:
            this->attachedEntity->field_0x74.HALF.LO = 0x10;
            if (this->actionDelay) {
                this->field_0x80.HALF.LO = 3;
                this->actionDelay = 0x40;
            } else {
                this->field_0x80.HALF.LO = 4;
                this->actionDelay = 0x50;
            }
            break;
        case 3:
            if (this->actionDelay != 0) {
                if (--this->actionDelay == 0) {
                    this->flags &= 0x7f;
                    this->field_0x20 = 0x38000;
                    this->field_0xf = 0x10;
                }
                break;
            }
            if (sub_08003FC4(this, 0x2800) == 0) {
                this->field_0x80.HALF.LO = 5;
                this->actionDelay = 0x10;
                this->flags |= 0x80;
                this->currentHealth = 0xff;
                this->field_0x86.HALF.LO = 0;
                sub_080408EC(this);
                SoundReq(SFX_14C);
                sub_08080964(0x1e, 4);
            } else {
                if (this->field_0xf != 0) {
                    if (--this->field_0xf == 0) {
                        SoundReq(SFX_1B0);
                    } else {
                        if ((this->field_0xf & 7) == 0) {
                            SoundReq(SFX_149);
                        }
                    }
                }
            }
            break;
        case 4:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO = 5;
                this->actionDelay = 0x10;
                this->field_0x86.HALF.LO = 0;
                sub_080408EC(this);
            } else {
                if (((this->actionDelay & 1) != 0) && (pEVar3 = CreateObject(0x9b, 1, 0xff), pEVar3 != NULL)) {
                    pEVar3->parent = this;
                    CopyPosition(this, pEVar3);
                    pEVar3->x.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->y.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->spritePriority.b0 = 4;
                    SoundReq(SFX_124);
                }
            }
            break;
        case 5:
            if (--this->actionDelay == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                this->field_0x80.HALF.HI = 0;
                this->field_0x76.HALF.LO = 0;
                sub_08040670(this);
            }
    }
    if (this->field_0x80.HALF.LO > 2) {
        this->spriteOffsetX = this->actionDelay & 1;
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0803FD50(Entity* this) {
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->field_0x74.HALF.LO = 0;
                this->actionDelay = 0x80;
                this->field_0xf = 0;
                this->field_0x20 = 0x24000;
                SoundReq(SFX_12B);
            }
            break;
        case 1:
            if (sub_08003FC4(this, 0x2800) != 0)
                break;
            this->field_0x80.HALF.LO += 1;
            switch (this->cutsceneBeh.HALF.LO) {
                case 1:
                case 3:
                    this->field_0xf = 1;
                    break;
                case 0:
                case 2:
                    this->field_0xf = 0;
                    break;
                default:
                    this->field_0xf = (Random() & 0x20) >> 5;
                    break;
            }
            if (1 < this->animationState) {
                this->field_0xf = 1;
            }
            SoundReq(SFX_14C);
            sub_08080964(0x1e, 4);
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->actionDelay = gUnk_080D0ABF[((u32)this->animationState << 1 | 1)];
            } else {
                if ((this->actionDelay & 7) == 0) {
                    CreateProjectileWithParent(this, 0x1f, this->field_0xf);
                }
                if (((this->field_0xf != 0) && (1 < this->animationState)) && (this->actionDelay < 6)) {
                    this->actionDelay = 0x80;
                    this->field_0xf = 0;
                }
            }
            break;
        case 3:
            if (--this->actionDelay == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                this->height.HALF.HI = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
        default:
            break;
    }

    UpdateAnimationSingleFrame(this);
}

void sub_0803FE90(Entity* this) {
    Entity* entity;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->actionDelay = 0x40;
                if (1 < this->animationState) {
                    this->actionDelay = 0x80;
                    this->field_0xf = 1;
                }
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->actionDelay = gUnk_080D0ABF[(this->animationState << 1 | 1)];
            } else {
                if (this->field_0xf) {
                    if ((this->actionDelay & 7) == 0) {
                        CreateProjectileWithParent(this, 0x1f, this->field_0xf);
                    }
                    if (this->actionDelay < 6) {
                        this->actionDelay = 0x40;
                        this->field_0xf = 0;
                    }
                } else {
                    if ((this->actionDelay & 0xf) == 0) {
                        entity = CreateProjectileWithParent(this, 0x1f, 2);
                        if (entity != NULL) {
                            entity->type2 = 0;
                            if (this->field_0x80.HALF.HI != 0) {
                                entity->speed = entity->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0803FF7C(Entity* this) {
    Entity* pEVar2;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->actionDelay = 0x80;
                if (1 < this->animationState) {
                    this->field_0xf = 1;
                }
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO += 1;
                this->actionDelay = gUnk_080D0ABF[(this->animationState << 1) | 1];
            } else {
                if (this->field_0xf) {
                    if ((this->actionDelay & 7) == 0) {
                        CreateProjectileWithParent(this, 0x1f, this->field_0xf);
                    }
                    if (this->actionDelay < 6) {
                        this->actionDelay = 0x80;
                        this->field_0xf = 0;
                    }
                } else {
                    if ((this->actionDelay & 0x1f) == 0) {
                        pEVar2 = CreateProjectileWithParent(this, 0x1f, 2);
                        if (pEVar2 != NULL) {
                            pEVar2->type2 = 1;
                            pEVar2->y.HALF.HI += -0x20;
                            if (this->field_0x80.HALF.HI != 0) {
                                pEVar2->speed = pEVar2->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0804006C(Entity* this) {
    Entity* pEVar3;
    u32 uVar4;

    sub_08078B48();
    if (this->actionDelay) {
        if (--this->actionDelay == 0) {
            SetRoomFlag(2);
            this->field_0xf = 8;
            UpdateAnimationSingleFrame(this);
            return;
        }
    } else {
        if (this->field_0xf != 0) {
            if (--this->field_0xf == 0) {
                this->currentHealth = 0;
                this->spriteSettings.b.draw = 0;
            }
        } else {
            sub_0804A7D4(this);
        }
        UpdateAnimationSingleFrame(this);
        return;
    }
    this->field_0xf = (this->field_0xf + 1) & 7;
    if (this->field_0xf == 0) {
        pEVar3 = CreateFx(this, 0x55, 0);
        if (pEVar3 != NULL) {
            uVar4 = Random() & 0x3f3f;
            pEVar3->x.HALF.HI += (uVar4 & 0xff) - 0x20;
            pEVar3->y.HALF.HI += ((uVar4 >> 8) & 0xff) - 0x20;
#ifndef EU
            pEVar3->spritePriority.b0 = 2;
#endif
            SoundReq(SFX_16E);
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_08040130(Entity* this) {
    this->action = 1;
    this->actionDelay = 0;
    this->field_0x80.HALF.LO = 0;
    this->spritePriority.b0 = 6;
    InitAnimationForceUpdate(this, (u32)this->actionDelay);
}

void sub_0804015C(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if (parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    this->x.HALF.HI = parent->field_0x7a.HWORD;
    this->y.HALF.HI = parent->field_0x7c.HALF.HI;
    if (parent->field_0x74.HALF.LO == 0) {
        UpdateAnimationSingleFrame(this);
    } else {
        sub_080042BA(this, 2);
    }
    if (parent->action >= 5) {
        if (this->actionDelay == 0) {
            this->actionDelay = 1;
            InitAnimationForceUpdate(this, 1);
        }
    } else {
        if (this->actionDelay != 0) {
            this->actionDelay = 0;
            InitAnimationForceUpdate(this, 0);
        }
    }
    if (parent->action != 3) {
        this->height.HALF.HI = parent->height.HALF.HI;
    }
}

void sub_080401E0(Entity* this) {
    if (this->type2 != 0) {
        this->action = 1;
        this->spritePriority.b0 = this->type2 + 1;
        InitAnimationForceUpdate(this, this->type2 + 4);
    } else {
        this->spritePriority.b0 = 4;
        if (gEntCount < 0x46) {
            sub_08040648(this, 2, 1);
            sub_08040648(this, 2, 2);
            this->action = 1;
            this->actionDelay = 0;
            this->field_0xf = (Random() & 0x7f) + 0x17;
            this->field_0x74.HALF.LO = 0;
            InitAnimationForceUpdate(this, 0);
        }
    }
}

void sub_08040268(Entity* this) {
    u32 uVar3;

    const xy* t;

    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    switch (this->type2) {
        case 2:
            uVar3 = GetFacingDirection(this, &gPlayerEntity);
            t = &gUnk_080D0B18[uVar3];
            this->x.HALF.HI += t->x;
            this->y.HALF.HI += t->y;
        case 1:
            if (this->parent->frameIndex != 2) {
                this->action = 2;
                this->spriteSettings.b.draw = 0;
            }
            break;
        case 0:
            switch (this->field_0x74.HALF.LO) {
                case 0:
                    if (--this->field_0xf == 0) {
                        this->field_0xf = (Random() & 0x7f) + 0x27;
                        if ((this->field_0xf & 1) != 0) {
                            this->field_0x74.HALF.LO = 1;
                            InitAnimationForceUpdate(this, 8);
                        }
                    }
                    break;
                case 1:
                    if ((this->frames.all & 0x80) != 0) {
                        this->field_0x74.HALF.LO = 0;
                        this->field_0xf = (Random() & 0x7f) + 0x17;
                        InitAnimationForceUpdate(this, 0);
                    }
                    break;
                case 0x10:
                    InitAnimationForceUpdate(this, 7);
                    this->field_0x74.HALF.LO = 0x11;
                    this->field_0xf = 0x50;
                    break;
                case 0x11:
                    if (--this->field_0xf == 0) {
                        this->field_0x74.HALF.LO = 1;
                        this->field_0xf = 0x30;
                        InitAnimationForceUpdate(this, 8);
                    }
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0804038C(Entity* this) {
    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    if (this->parent->frameIndex == 2) {
        this->action = 1;
        this->spriteSettings.b.draw = 1;
    }
}

void sub_080403CC(Entity* this) {
    this->action = 1;
    this->spritePriority.b0 = 4;
    InitAnimationForceUpdate(this, 0);
}

void sub_080403EC(Entity* this) {
    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    UpdateAnimationSingleFrame(this);
}

void sub_0804041C(Entity* this) {
    this->action = 1;
    this->field_0x80.HALF.LO = 0;
    this->actionDelay = 10;
    this->spriteSettings.b.draw = 0;
    this->spritePriority.b0 = 7;
    InitializeAnimation(this, 0);
}

void sub_0804044C(Entity* this) {
    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    if (this->parent->action != 5) {
        if (this->field_0x80.HALF.LO != 0) {
            this->field_0x80.HALF.LO = 0;
            this->spriteSettings.b.draw = 0;
        }
    } else {
        if (this->field_0x80.HALF.LO == 0) {
            this->field_0x80.HALF.LO += 1;
            this->spriteSettings.b.draw = 1;
        }
        if (--this->actionDelay == 0) {
            this->actionDelay = 10;
            SoundReq(SFX_149);
        }
    }
    CopyPosition(this->parent, this);
    GetNextFrame(this);
}

void sub_080404D0(Entity* this) {
    if (this->type2 != 0) {
        this->action = 2;
        this->actionDelay = 10;
        this->spritePriority.b0 = 3;
        InitializeAnimation(this, 2);
    } else {
        this->action = 1;
        this->spriteSettings.b.draw = 0;
        this->spritePriority.b0 = 4;
    }
}

void sub_0804051C(Entity* this) {
    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (this->parent->action != 6) {
                return;
            }
            this->field_0x80.HALF.LO += 1;
            this->spriteSettings.b.draw = 1;
            InitializeAnimation(this, 1);
            break;
        case 1:
            if (this->parent->action != 6) {
                this->field_0x80.HALF.LO = 0;
                this->spriteSettings.b.draw = 0;
            } else {
                if (this->frames.b.f3 != 0) {
                    this->frames.b.f3 = 0;
                    if (gEntCount < 0x47) {
                        sub_08040648(this, this->type, 1);
                    }
                }
                if (--this->actionDelay == 0) {
                    this->actionDelay = 10;
                    SoundReq(SFX_149);
                }
                GetNextFrame(this);
            }
            break;
    }
    CopyPosition(this->parent, this);
}

void sub_080405D8(Entity* this) {
    if (this->parent->currentHealth == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    if (this->field_0x80.HALF.LO == 0) {
        if (this->parent->parent->action != 6) {
            if ((this->frames.all & 0x80) != 0) {
                this->field_0x80.HALF.LO += 1;
                InitializeAnimation(this, 3);
            }
        }
    } else {
        if ((this->frames.all & 0x80) != 0) {
            DeleteThisEntity();
        }
    }
    CopyPosition(this->parent, this);
    GetNextFrame(this);
}

void sub_08040648(Entity* this, u32 type, u32 type2) {
    Entity* enemy;

    enemy = CreateEnemy(VAATI_TRANSFIGURED, type);
    enemy->type2 = type2;
    enemy->parent = this;
    CopyPosition(this, enemy);
    if ((type == 2) && (type2 == 0)) {
        this->attachedEntity = enemy;
    }
}

void sub_08040670(Entity* this) {
    this->action = 1;
    this->field_0x80.HALF.LO = 0;
    this->speed = 0x100;
    this->actionDelay = 12;
    if (this->animationState == 0) {
        sub_080406A0(this);
    } else {
        sub_08040770(this);
    }
}

void sub_080406A0(Entity* this) {
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;

    uVar2 = Random() & 0x30;
    uVar5 = this->field_0x86.HALF.LO;
    {
        u32 tmp;
        uVar6 = gRoomControls.roomOriginX + gUnk_080D0B58[tmp = uVar5 * 2];
        uVar4 = gRoomControls.roomOriginY + gUnk_080D0B58[tmp + 1];
    }
    if (sub_0806FCB8(this, uVar6, uVar4, 0x1c)) {
        if (uVar5 != 0) {
            uVar5 = 0;
        } else {
            uVar5 = (Random() & 1) + 1;
        }
        {
            u32 tmp;
            uVar6 = gRoomControls.roomOriginX + gUnk_080D0B58[tmp = uVar5 * 2];
            uVar4 = gRoomControls.roomOriginY + gUnk_080D0B58[tmp + 1];
        }
    }
    uVar3 = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, uVar6, uVar4);
    this->direction = uVar3;
    if (uVar2 & 0x20) {
        u32 tmp = this->direction;
        if (uVar2 & 0x10) {
            this->direction = tmp + 1;
        } else {
            this->direction = tmp + 0x1f;
        }
    }
    this->direction &= 0x1f;
    this->field_0x86.HALF.LO = uVar5;
}

void sub_08040770(Entity* this) {
    u32 tmp = Random() & 0x38;
    u32 tmp2 = this->field_0x86.HALF.LO;
    u32 tmp5, tmp6;
    {
        u32 index;
        tmp5 = gRoomControls.roomOriginX + gUnk_080D0B64[index = tmp2 * 2];
        tmp6 = gRoomControls.roomOriginY + gUnk_080D0B64[index + 1];
    }
    if (sub_0806FCB8(this, tmp5, tmp6, 0x1c)) {
        if (this->animationState != 2) {
            if (tmp & 8) {
                tmp2 += 1;
            } else {
                tmp2 += 3;
            }
            tmp2 &= 3;
            if (this->field_0x80.HALF.HI) {
                switch (this->field_0x74.HALF.HI) {
                    case 0xf:
                        if (tmp2 == 0) {
                            tmp2 = 2;
                        }
                        break;
                    case 0x3c:
                        if (tmp2 == 1) {
                            tmp2 = 3;
                        }
                        break;
                    case 0xf0:
                        if (tmp2 == 2) {
                            tmp2 = 0;
                        }
                        break;
                    case 0xc3:
                        if (tmp2 == 3) {
                            tmp2 = 1;
                        }
                        break;
                }
            }
        } else {
            if (this->field_0x86.HALF.HI & 0x7f) {
                if (this->field_0x86.HALF.HI & 0x80) {
                    tmp2 += 1;
                } else {
                    tmp2 += 3;
                }
                this->field_0x86.HALF.HI--;
            } else {
                u32 tmp3;
                this->field_0x86.HALF.HI = (Random() & 7) + 4;
                tmp5 = this->field_0x86.HALF.HI;
                if (!(Random() & 0x20)) {
                    tmp3 = tmp5 | 0x80;
                } else {
                    tmp3 = tmp5;
                }
                this->field_0x86.HALF.HI = tmp3;
                if (tmp3 & 0x80) {
                    tmp2 += 1;
                } else {
                    tmp2 += 3;
                }
            }
            tmp2 &= 3;
        }
        {
            u32 tmp3;
            tmp5 = gRoomControls.roomOriginX + gUnk_080D0B64[tmp3 = tmp2 * 2],
            tmp6 = gRoomControls.roomOriginY + gUnk_080D0B64[tmp3 + 1];
        }
    }
    this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, tmp5, tmp6);
    if (tmp & 0x20) {
        u32 tmp3 = this->direction;
        if (tmp & 0x10) {
            this->direction = tmp3 + 1;
        } else {
            this->direction = tmp3 + 0x1F;
        }
    }
    this->direction &= 0x1F;
    this->field_0x86.HALF.LO = tmp2;
}

void sub_080408EC(Entity* this) {
    u32 tmp;

    if (this->animationState == 0) {
        tmp = 0xf0;
    } else {
        do {
            tmp = gUnk_080D0B74[(Random() & 0x3c) >> 2];
            if (tmp == this->field_0x74.HALF.HI) {
                tmp = 0xff;
            }
        } while (tmp == 0xff);
    }
    this->field_0x74.HALF.HI = tmp;
    this->field_0x76.HALF.LO = 0;
}

u32 sub_08040934(Entity* this) {
    u32 t;
    u32 r2;

    t = Random() & 0x3e;
    if (t < 0x2f) {
        r2 = 1;
    } else {
        r2 = 0;
    }
    if ((this->field_0x86.HALF.HI & 0x7f) != 0) {
        r2 = 0;
    }
    if (this->cutsceneBeh.HALF.LO != 9) {
        if (r2 != 0) {
            this->cutsceneBeh.HALF.LO = (this->cutsceneBeh.HALF.LO + 1) % 5;
            t = (Random() & 0xf8) >> 3;
            r2 = gUnk_080D0B84[t];
            switch (this->cutsceneBeh.HALF.LO) {
                case 3:
                case 4:
                    if (r2 == 0) {
                        r2 = 1;
                    }
                    break;
                case 1:
                    if (r2 != 0) {
                        r2 = 3;
                    } else {
                        r2 = 1;
                    }
                    break;
            }
        }
    } else {
        this->cutsceneBeh.HALF.LO = 0;
        r2 = 1;
    }
    return r2;
}

void sub_080409B0(Entity* this) {
    switch (this->field_0x80.HALF.HI) {
        case 0:
            if (this->field_0x74.HALF.HI == this->field_0x76.HALF.LO) {
                this->field_0x80.HALF.HI = 1;
                this->field_0x76.HALF.LO = 0;
            }
            break;
        case 1:
            if (this->field_0x76.HALF.LO != 0) {
                this->field_0x80.HALF.HI = 2;
                this->field_0x76.HALF.HI = 0x10;
            }
            break;
        case 2:
            if (--this->field_0x76.HALF.HI == 0) {
                if (this->field_0x74.HALF.HI != (this->field_0x74.HALF.HI & this->field_0x76.HALF.LO)) {
                    this->field_0x80.HALF.HI = 1;
                    this->field_0x76.HALF.LO = 0;
                    SoundReq(SFX_155);
                } else {
                    this->action = 3;
                    this->field_0x80.HALF.LO = 0;
                    this->field_0x80.HALF.HI = 3;
                    this->flags &= 0x7f;
                    this->damageType = 0x36;
                    this->field_0x20 = 0x18000;
                    SoundReq(SFX_164);
                }
            }
            break;
    }

    if (this->field_0x80.HALF.HI < 3) {
        if (this->field_0x42 != 0) {
            sub_080AF18C(this);
        }
    } else {
        if (((this->bitfield & 0x80) != 0) && (0 < this->iframes)) {
            sub_08080964(0xc, 1);
            SoundReq(SFX_BOSS_HIT);
        }
        if ((this->bitfield == 0x8a) && (gPlayerState.field_0xa0[0] == 5)) {
            this->currentHealth = 0xc0;
        }
    }
}

void sub_08040AD4(Entity* this) {
    u32 actionDelay;

    actionDelay = this->actionDelay & 0x3f;
    if ((actionDelay & 0x1f) == 0) {
        SoundReq(SFX_1A9);
    }
    if ((actionDelay & 3) == 0) {
        actionDelay >>= 2;
        this->x.HALF.HI += ((actionDelay + 4) & 8) ? -1 : 1;
        this->y.HALF.HI += ((actionDelay + 2) & 4) ? -1 : 1;
    }
}
