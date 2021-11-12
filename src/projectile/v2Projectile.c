
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "random.h"
#include "audio.h"
#include "effects.h"

extern void (*const V2Projectile_Functions[])(Entity*);
extern void (*const gUnk_0812A7EC[])(Entity*);
extern void (*const gUnk_0812A7F8[])(Entity*);
extern void (*const gUnk_0812A800[])(Entity*);
extern void (*const gUnk_0812A808[])(Entity*);

extern void sub_0800449C(Entity*, u32);
extern void sub_08079D84(void);

extern s32 sub_080AF090(Entity*);

void V2Projectile(Entity* this) {
    V2Projectile_Functions[GetNextFunction(this)](this);
}

ASM_FUNC("asm/non_matching/v2Projectile/sub_080ABBA8.inc", void sub_080ABBA8(Entity* this))

ASM_FUNC("asm/non_matching/v2Projectile/sub_080ABBF4.inc", void sub_080ABBF4(Entity* this))

void sub_080ABC54(Entity* this) {
    if (sub_0806F520() == 0) {
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
    gUnk_0812A808[this->subAction](this);
}

void sub_080ABC84(Entity* this) {
    this->subAction = 2;
}

void nullsub_542(Entity* this) {
}

void sub_080ABC90(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        ModHealth(-2);
        sub_0800449C(&gPlayerEntity, 0x7a);
        sub_08079D84();
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
}

void sub_080ABCC4(Entity* this) {
    this->action = 1;
    this->actionDelay = (Random() & 0x3f) + 0x30;
    this->field_0xf = 0;
    this->direction = Random() & 0x1f;
    this->field_0x74.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    this->field_0x76.HWORD = GetTileType(this->field_0x74.HWORD, 2);
    this->spritePriority.b0 = 2;
    InitializeAnimation(this, 0);
    SoundReq(SFX_14B);
}

void sub_080ABD44(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
    }
    sub_080AF090(this);
    GetNextFrame(this);
}

void sub_080ABD70(Entity* this) {
    u32 tmp;
    GetNextFrame(this);
    if ((this->frame & 0x10) != 0) {
        this->frame &= 0xef;
        this->speed = 0;
        this->field_0x74.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
        this->field_0x76.HWORD = GetTileType(this->field_0x74.HWORD, 2);
        tmp = this->field_0x76.HWORD;
        if (tmp != 0x13) {
            if (tmp == 0x315) {
                SetTileType(0x6e, this->field_0x74.HWORD, 2);
            }
        } else {
            SetTileType(0x6d, this->field_0x74.HWORD, 2);
        }
    }
    if ((this->frame & 0x80) != 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/v2Projectile/sub_080ABE04.inc", void sub_080ABE04(Entity* this))

void sub_080ABE88(Entity* this) {
    if (sub_08003FC4(this, 0x1800) == 0) {
        CreateFx(this, FX_ROCK, 0);
        DeleteThisEntity();
    }
}

void sub_080ABEA8(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x60;
    this->spritePriority.b0 = 2;
    this->field_0x1c = 1;
    if (this->type2 == 0) {
        this->direction = (Random() & 0xf) << 1;
    } else {
        this->direction = sub_08049F84(this, 0);
        sub_0801D2B4(this, 0x13f);
    }
    InitializeAnimation(this, 0);
    SoundReq(SFX_193);
}

void sub_080ABF04(Entity* this) {
    if (sub_080040A8(this) == 0) {
        DeleteThisEntity();
    }
    sub_0806F69C(this);
    GetNextFrame(this);
}

void (*const V2Projectile_Functions[])(Entity*) = {
    sub_080ABBA8, sub_080ABBF4, DeleteEntity, DeleteEntity, DeleteEntity, sub_080ABC54,
};
void (*const gUnk_0812A7EC[])(Entity*) = {
    sub_080ABCC4,
    sub_080ABD44,
    sub_080ABD70,
};
void (*const gUnk_0812A7F8[])(Entity*) = {
    sub_080ABE04,
    sub_080ABE88,
};
void (*const gUnk_0812A800[])(Entity*) = {
    sub_080ABEA8,
    sub_080ABF04,
};
void (*const gUnk_0812A808[])(Entity*) = {
    sub_080ABC84,
    nullsub_542,
    sub_080ABC90,
};
