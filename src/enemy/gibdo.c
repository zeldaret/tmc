#include "global.h"
#include "entity.h"
#include "sprite.h"
#include "enemy.h"
#include "random.h"
#include "functions.h"
// Gibudo
void sub_08037794();
void sub_08037B10();
void sub_0803797C();
void sub_080379BC();
void sub_08037C0C();
u32 sub_08037810();
void sub_080377B0();
u32 sub_080378B0();
u32 sub_08037914();
u32 sub_080379EC();
void sub_08037A58();
void sub_08037ACC();
void sub_08037B48();
void sub_08037A14();

extern void sub_0804A4E4(Entity*, Entity*);
extern Entity* sub_08049DF4(u32);
u32 sub_0804A044(Entity*, Entity*, u32);
extern void sub_0800449C(Entity*, u32);

extern void (*const gGibdo[6])(Entity*);
extern void (*const gUnk_080CF2AC[9])(Entity*);
extern Entity* gUnk_020000B0;

void Gibdo(Entity* this) {
    EnemyFunctionHandler(this, gGibdo);
    SetChildOffset(this, 0, 1, -0x15);
}

void Gibdo_OnTick(Entity* this) {
    gUnk_080CF2AC[this->action](this);
}
// Non-matching
NONMATCH("asm/non_matching/gibdo/sub_080374A4.inc", void sub_080374A4(Entity* this)) {
    u8 x;
    if (this->bitfield == 0x87) {
        if (this->action == 0x6) {
            sub_08037ACC(this);
        }
        this->action = 0x8;
        this->actionDelay = 0x3c;
        this->flags &= 0x7F;
        sub_08037B48(this);
    } else {
        if (this->action != 0x6) {
            if (this->damageType == 0x27) {
                if (this->bitfield == 0x80) {
                    sub_08037A14(this);
                }
            } else {
                if ((u8)(this->action - 1) < 2) {
                    this->action = 1;
                    x = DirectionTurnAround(this->field_0x3e);
                    this->direction = x;
                    this->animationState = x >> 3;
                    InitAnimationForceUpdate(this, this->animationState);
                    if (sub_08037810(this) != 0) {
                        this->actionDelay = 4;
                    }
                }
            }
        } else {
            sub_08037A58(this);
        }
    }
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gGibdo);
}
END_NONMATCH

void nullsub_162() {
}

void sub_08037558(Entity* this) {
    sub_0804A720(this);
    this->animationState = Random() & 0x3;
    this->field_0x76.HALF.LO = 0;
    this->field_0x76.HALF.HI = 0;
    sub_08037794(this);
}

void sub_08037580(Entity* this) {
    if (sub_08037810(this) == 0) {
        if (!(--this->field_0x74.HWORD)) {
            sub_080377B0(this);
        }
    }
}

void sub_080375A4(Entity* this) {
    if (sub_080378B0(this) == 0) {
        if (sub_08037810(this) == 0) {
            if (!(--this->field_0x74.HWORD)) {
                sub_08037794(this);
            } else {
                UpdateAnimationSingleFrame(this);
                if (ProcessMovement(this) == 0) {
                    if (!(--this->field_0xf)) {
                        sub_080379BC(this);
                    }
                }
            }
        }
    }
}

void sub_080375F8(Entity* this) {
    if (sub_080378B0(this) == 0) {
        if (!(--this->actionDelay)) {
            this->action = 4;
            this->actionDelay = 0x18;
            InitAnimationForceUpdate(this, this->animationState + 4);
        }
    }
}

void sub_08037624(Entity* this) {
    if (sub_080378B0(this) == 0) {
        if (sub_08037914(this) == 0) {
            if (!(--this->field_0x74.HWORD)) {
                sub_08037794(this);
            } else {
                UpdateAnimationSingleFrame(this);
                UpdateAnimationSingleFrame(this);
                if (ProcessMovement(this) == 0) {
                    if (!(--this->field_0xf)) {
                        sub_080379BC(this);
                    }
                } else {
                    if (!(--this->actionDelay)) {
                        sub_0803797C(this);
                    }
                }
            }
        }
    }
}

void sub_08037690(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->field_0x76.HALF.HI = 0x14;
        sub_08037794(this);
    } else {
        if ((this->frames.all & 1) != 0) {
            this->damageType = 0x27;
            ProcessMovement(this);
        }
    }
}
// Non-matching
NONMATCH("asm/non_matching/gibdo/sub_080376D0.inc", void sub_080376D0(Entity* this)) {
    u8* x;
    if (sub_080379EC(this) == 0) {
        ResetPlayer();
        gPlayerState.field_0x1a[0] = gPlayerState.field_0x1a[0] | 0x80;
        gPlayerState.field_0xa = gPlayerState.field_0xa | 0x80;
        CopyPositionAndSpriteOffset(&gPlayerEntity, this);
        UpdateAnimationSingleFrame(this);
        x = &this->frames.all;
        if ((*x & 0x1) != 0) {
            if (!(--this->field_0x7c.BYTES.byte0)) {
                sub_08037A58(this);
            }
        } else {
            *x = *x ^ 1;
            sub_08037B10(this);
        }
    }
}
END_NONMATCH

void sub_0803773C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        sub_08037794(this);
    }
}
// Turn into Stalfos
void sub_0803775C(Entity* this) {
    Entity* x;
    if (!(--this->actionDelay)) {
        x = CreateEnemy(0x42, 0);
        if (x != 0) {
            sub_0804A4E4(this, x);
            sub_08037C0C(this, x);
        }
        DeleteEntity(this);
    }
}

void sub_08037794(Entity* this) {
    this->action = 1;
    this->field_0x74.HWORD = 0x1e;
    this->damageType = 0x26;
    InitAnimationForceUpdate(this, this->animationState);
}

void sub_080377B0(Entity* this) {
    u32 r1;
    u32 r2;
    this->action = 2;
    this->field_0xf = 8;
    r1 = Random();
    this->field_0x74.HWORD = (r1 & 0x38) + 0x78;
    this->nonPlanarMovement = 0x40;
    r2 = Random();
    if (!sub_08049FA0(this) && (r2 & 3)) {
        this->direction = DirectionRoundUp(sub_08049EE4(this));
    } else {
        this->direction = DirectionRound(r2);
    }
    this->animationState = this->direction / 8;
    InitAnimationForceUpdate(this, this->animationState + 4);
}
// Nonmatching
NONMATCH("asm/non_matching/gibdo/sub_08037810.inc", u32 sub_08037810(Entity* this)) {
    u32 x;
    u32 y;
    if (this->field_0x76.HALF.LO == 0) {
        if (sub_08049FDC(this, 1) != 0) {
            if (sub_0806FCB8(this, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x40) != 0) {
                x = GetFacingDirection(this, gUnk_020000B0);
                if (((x - this->direction + 6) & 0x1f) <= 0xc) {
                    this->action = 3;
                    this->actionDelay = 0x18;
                    this->field_0xf = 0x8;
                    this->nonPlanarMovement = 0xc0;
                    y = DirectionRoundUp(GetFacingDirection(this, gUnk_020000B0));
                    this->direction = y;
                    this->animationState = y / 8;
                    this->field_0x74.HWORD = 300;
                    this->field_0x78.HWORD = gUnk_020000B0->x.HALF.HI;
                    this->field_0x7a.HWORD = gUnk_020000B0->y.HALF.HI;
                    InitAnimationForceUpdate(this, this->animationState);
                    return 1;
                }
            }
        }
    } else {
        this->field_0x76.HALF.LO--;
    }
    return 0;
}
END_NONMATCH

u32 sub_080378B0(Entity* this) {
    if (this->field_0x76.HALF.HI == 0) {
        if (sub_08049DF4(1) != 0) {
            if (sub_0804A044(this, gUnk_020000B0, 0xa) == this->direction)
                if (sub_0806FCB8(this, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x18) != 0) {
                    this->action = 5;
                    this->nonPlanarMovement = 0x100;
                    InitAnimationForceUpdate(this, this->animationState + 8);
                    return 1;
                }
        }
    } else {
        this->field_0x76.HALF.HI--;
    }
    return 0;
}

u32 sub_08037914(Entity* this) {
    if (sub_08049FDC(this, 1) != 0) {
        if (sub_0806FCB8(gUnk_020000B0, this->field_0x78.HWORD, this->field_0x7a.HWORD, 0x28) == 0) {
            this->field_0x78.HWORD = gUnk_020000B0->x.HALF_U.HI;
            this->field_0x7a.HWORD = gUnk_020000B0->y.HALF_U.HI;
            sub_0803797C(this);
            return 0;
        }
        if (sub_0806FCB8(this, this->field_0x78.HWORD, this->field_0x7a.HWORD, 0x8) == 0) {
            return 0;
        }
        this->field_0x76.HALF.LO = 0x3c;
    }
    sub_08037794(this);
    return 1;
}
NONMATCH("asm/non_matching/gibdo/sub_0803797C.inc", void sub_0803797C(Entity* this)) {
    u32 z;
    u32 m;
    this->actionDelay = 0x18;
    this->field_0xf = 0x8;
    z = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, this->field_0x78.HWORD, this->field_0x7a.HWORD);
    m = (z + 4) & 0x18;
    this->direction = m;
    m = m / 8;
    if (m != this->animationState) {
        this->animationState = m;
        InitAnimationForceUpdate(this, m + 4);
    }
}
END_NONMATCH

void sub_080379BC(Entity* this) {
    u32 r;
    this->actionDelay = 0x18;
    this->field_0xf = 0x8;
    r = Random();
    this->animationState = ((this->animationState + (r & 2)) - 1) & 3;
    this->direction = DirectionFromAnimationState(this->animationState);
    InitAnimationForceUpdate(this, this->animationState + 4);
}

u32 sub_080379EC(Entity* this) {
    if (sub_0807953C() != 0) {
        if (!(--this->actionDelay)) {
            sub_08037A58(this);
            return 1;
        }
    }
    return 0;
}

void sub_08037A14(Entity* this) {
    this->action = 6;
    this->actionDelay = 0x18;
    this->spritePriority.b0 = (this->spritePriority.b0 & (this->actionDelay - 0x20));
    this->spritePriority.b0 |= 3;
    this->flags2 &= 0xfe;
    this->field_0x7c.BYTES.byte0 = 5;
    CopyPosition(this, this->field_0x4c);
    InitAnimationForceUpdate(this, this->animationState + 0xc);
}
// Not match
// Take Damage maybe?
NONMATCH("asm/non_matching/gibdo/sub_08037A58.inc", void sub_08037A58(Entity* this)) {
    sub_08037ACC(this);
    this->action = 7;
    this->spritePriority.b0 = (this->spritePriority.b0 & 0xf8) | 4;
    if (this->hurtBlinkTime == 0) {
        this->hurtBlinkTime = 0xec;
    }
    this->damageType = 0x26;
    this->flags2 |= 1;
    this->hurtBlinkTime = 0xf4;
    this->field_0x3e = (this->animationState << 3) ^ 0x10;
    this->field_0x42 = 8;
    this->field_0x46 = 0x180;
    this->field_0x76.HALF.LO = 0x3c;
    InitAnimationForceUpdate(this, this->animationState + 0x10);
}
END_NONMATCH

void sub_08037ACC(Entity* this) {
    gPlayerState.flags.all &= 0xFFFFFEFF;
    gPlayerEntity.flags |= 0x80;
    gPlayerEntity.hurtBlinkTime = 0x1e;
    gPlayerEntity.field_0x3e = DirectionFromAnimationState(this->animationState);
    gPlayerEntity.field_0x42 = 4;
    gPlayerEntity.field_0x46 = 0x180;
}
// Damage player maybe?
void sub_08037B10(Entity* this) {
    u32 h;
    gPlayerEntity.hurtBlinkTime = 0xc;
    h = ModHealth(-8);
    sub_0800449C(&gPlayerEntity, 0x7a);
    if (h == 0) {
        sub_08037A58(this);
        this->field_0x76.HALF.LO = 0xf0;
    }
}
NONMATCH("asm/non_matching/gibdo/sub_08037B48.inc", void sub_08037B48(Entity* this)) {
    Entity* E;
    E = CreateObject(0x2a, 3, 0);
    if (E != 0) {
        E->type2 = this->actionDelay;
        E->spritePriority.b0 = (E->spritePriority.b0 & 0xf8) | 3;
        E->spriteOffsetX = 0;
        E->spriteOffsetY = 0xfc;
        E->parent = this;
    }
    *(Entity**)&this->field_0x80.HWORD = E;
    E = CreateObject(0x2a, 3, 0);
    if (E != 0) {
        E->type2 = this->actionDelay;
        E->spritePriority.b0 = (E->spritePriority.b0 & 0xf8) | 3;
        E->spriteOffsetX = 0xfd;
        E->spriteOffsetY = 0xf8;
        E->parent = this;
    }
    *(Entity**)&this->cutsceneBeh.HWORD = E;
    E = CreateObject(0x2a, 3, 0);
    if (E != 0) {
        E->type2 = this->actionDelay;
        E->spritePriority.b0 = (E->spritePriority.b0 & 0xf8) | 3;
        E->spriteOffsetX = 0x5;
        E->spriteOffsetY = 0xf5;
        E->parent = this;
    }
    this->attachedEntity = E;
}
END_NONMATCH

NONMATCH("asm/non_matching/gibdo/sub_08037C0C.inc", void sub_08037C0C(Entity* this, Entity* that)) {
    if (this->field_0x80.HWORD != 0) {
        this->actionDelay = 0xf;
        this->parent = that;
    }
    if (this->cutsceneBeh.HWORD != 0) {
        this->actionDelay = 0xf;
        this->parent = that;
    }
    if (this->attachedEntity != 0) {
        this->actionDelay = 0xf;
        this->parent = that;
    }
}
END_NONMATCH
