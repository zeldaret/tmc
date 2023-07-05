
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "tiles.h"

extern void (*const V2Projectile_Functions[])(Entity*);
extern void (*const gUnk_0812A7EC[])(Entity*);
extern void (*const gUnk_0812A7F8[])(Entity*);
extern void (*const gUnk_0812A800[])(Entity*);
extern void (*const gUnk_0812A808[])(Entity*);

void V2Projectile(Entity* this) {
    V2Projectile_Functions[GetNextFunction(this)](this);
}

void sub_080ABBA8(Entity* this) {
    switch (this->type) {
        case 0: {
            gUnk_0812A7EC[this->action](this);
            break;
        }
        case 1: {
            gUnk_0812A7F8[this->action](this);
            break;
        }
        case 2:
        default:
            gUnk_0812A800[this->action](this);
    }
}

void sub_080ABBF4(Entity* this) {
    if ((this->contactFlags & 0x80) == 0)
        return;

    switch (this->type) {
        case 2: {
            switch ((this->contactFlags & 0x3f)) {
                case 0: {
                    ModHealth(-4);
                    // fallthrough
                }
                case 3:
                case 0x14: {
                    CreateDust(this);
                    DeleteThisEntity();
                    break;
                }
            }
            break;
        }
        case 0:
        case 1: {
            if ((this->contactFlags & 0x3f) == 0) {
                ModHealth(-2);
                DeleteThisEntity();
            }
            break;
        }
    }
}

void sub_080ABC54(Entity* this) {
    if (!sub_0806F520(this)) {
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
        SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
        sub_08079D84();
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
}

void sub_080ABCC4(Entity* this) {
    this->action = 1;
    this->timer = (Random() & 0x3f) + 48;
    this->subtimer = 0;
    this->direction = Random() & 0x1f;
    this->field_0x74.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    this->field_0x76.HWORD = GetMetaTileType(this->field_0x74.HWORD, LAYER_TOP);
    this->spritePriority.b0 = 2;
    InitializeAnimation(this, 0);
    SoundReq(SFX_14B);
}

void sub_080ABD44(Entity* this) {
    if (--this->timer == 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
    }
    ProcessMovement3(this);
    GetNextFrame(this);
}

void sub_080ABD70(Entity* this) {
    u32 tmp;
    GetNextFrame(this);
    if ((this->frame & 0x10) != 0) {
        this->frame &= 0xef;
        this->speed = 0;
        this->field_0x74.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
        this->field_0x76.HWORD = GetMetaTileType(this->field_0x74.HWORD, LAYER_TOP);
        tmp = this->field_0x76.HWORD;
        if (tmp != 0x13) {
            if (tmp == 0x315) {
                SetMetaTileType(META_TILE_TYPE_110, this->field_0x74.HWORD, LAYER_TOP);
            }
        } else {
            SetMetaTileType(META_TILE_TYPE_109, this->field_0x74.HWORD, LAYER_TOP);
        }
    }
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_080ABE04(Entity* this) {
    u32 rand = Random() & 0xff;
    u32 newX;
    this->action = 1;
    this->zVelocity = Q_16_16(-1.0);
    this->z.HALF.HI -= 0xa0;
    this->x.HALF.HI = (gRoomControls.origin_x & 0x7ff0) | 0x8;
    this->y.HALF.HI = (gRoomControls.origin_y & 0x7ff0) | 0x8;
    newX = this->x.HALF.HI;
    if (rand & 0x10) {
        newX += 0x10;
    } else {
        newX += 0xc0;
    }
    this->x.HALF.HI = newX + ((0xe0 & rand) >> 1);
    this->y.HALF.HI += ((0xf & rand) << 4);
    sub_08004168(this);
    InitializeAnimation(this, 0);
    SoundReq(SFX_12D);
}

void sub_080ABE88(Entity* this) {
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        CreateFx(this, FX_ROCK, 0);
        DeleteThisEntity();
    }
}

void sub_080ABEA8(Entity* this) {
    this->action = 1;
    this->timer = 96;
    this->spritePriority.b0 = 2;
    this->gustJarFlags = 1;
    if (this->type2 == 0) {
        this->direction = (Random() & 0xf) << 1;
    } else {
        this->direction = sub_08049F84(this, 0);
        ChangeObjPalette(this, 0x13f);
    }
    InitializeAnimation(this, 0);
    SoundReq(SFX_193);
}

void sub_080ABF04(Entity* this) {
    if (CheckOnScreen(this) == 0) {
        DeleteThisEntity();
    }
    LinearMoveUpdate(this);
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
