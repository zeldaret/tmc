#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "coord.h"
#include "functions.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const V3ElectricProjectile_Functions[])(Entity*);
extern void (*const V3ElectricProjectile_Actions[])(Entity*);
static const u16 projectileSpeeds[];
static const u8 gUnk_0812A982[];
static const u8 projectileDirections[];

void V3ElectricProjectile(Entity* this) {
    V3ElectricProjectile_Functions[GetNextFunction(this)](this);
}

void V3ElectricProjectile_OnTick(Entity* this) {
    V3ElectricProjectile_Actions[this->action](this);
}

void sub_080ABFE4(Entity* this) {
    DeleteThisEntity();
}

void sub_080ABFEC(Entity* this) {
    Sound sound;
    InitializeAnimation(this, this->type + 1);

    switch (this->type) {
        case 0: {
            this->action = 1;
            this->actionDelay = 0;
            this->field_0xf = 0x7;
            this->cutsceneBeh.HALF.HI = 0x18;
            this->damage = 0x88;
            CopyPositionAndSpriteOffset(this->parent, this);
            this->z.HALF.HI -= 0x14;
            sound = SFX_149;
            break;
        }
        case 1: {
            this->action = 1;
            this->flags &= 0x7f;
            this->cutsceneBeh.HALF.HI = 0x18;
            CopyPositionAndSpriteOffset(this->parent, this);
            this->z.HALF.HI -= 0x14;
            sound = SFX_149;
            break;
        }
        default: {
            this->action = 2;
            this->actionDelay = 0;
            this->field_0xf = 0xff;
            this->speed = projectileSpeeds[this->type2];
            this->damage = 0x88;
            sound = SFX_193;
            break;
        }
    }

    SoundReq(sound);
}

void V3ElectricProjectile_Action1(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    CopyPositionAndSpriteOffset(this->parent, this);
    this->z.HALF.HI -= 0x14;
    if (this->cutsceneBeh.HALF.HI != 0) {
        if (((--this->cutsceneBeh.HALF.HI) & 7) == 0) {
            SoundReq(SFX_149);
        }
    }
    GetNextFrame(this);
    if ((this->frame & 1) != 0) {
        if (this->type == 0) {
            this->action = 2;
            this->direction = GetFacingDirection(this, &gPlayerEntity);
            this->speed = 0x180;
            SoundReq(SFX_193);
        } else {
            this->action = 3;
            this->actionDelay = 0x10;
        }
        this->z.HALF.HI -= 0x28;
    }
}

void V3ElectricProjectile_Action2(Entity* this) {
    u8 bVar1;
    s32 iVar2;
    u32 uVar3;

    if (this->z.HALF.HI < -6) {
        this->z.HALF.HI += 3;
    }
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
    if (this->actionDelay < 0x1e) {
        if (((++this->actionDelay) & this->field_0xf) == 0) {
            sub_08004596(this, GetFacingDirection(this, &gPlayerEntity));
        }
    }
}

void sub_080AC168(Entity* this) {
    u8 actionDelay;
    GetNextFrame(this);
    this->z.WORD += 0xffff8000;
    actionDelay = --this->actionDelay;
    if (actionDelay == 0) {
        u32 rand;
        u32 dir;
        this->action = 4;
        this->actionDelay = 4;
        rand = Random() & 0x7;
        this->field_0xf = gUnk_0812A982[rand];
        dir = GetFacingDirection(this, &gPlayerEntity);
        if (this->parent->cutsceneBeh.HALF.LO == 3) {
            dir -= projectileDirections[rand];
            this->type2 = 0;
        } else if (this->parent->cutsceneBeh.HALF.LO == 2) {
            dir -= projectileDirections[rand];
            this->type2 = 1;
        } else {
            dir -= projectileDirections[rand] >> 1;
            this->type2 = 2;
        }

        this->direction = dir & 0x1f;
    }
}

void sub_080AC200(Entity* this) {
    Entity* proj;
    GetNextFrame(this);

    if (--this->actionDelay)
        return;

    this->actionDelay = 0x10;
    proj = CreateProjectile(0x21);

    if (proj) {
        proj->type = 2;
        proj->type2 = this->type2;
        proj->direction = this->direction;
        proj->parent = this->parent;
        CopyPosition(this, proj);
    }

    if (--this->field_0xf == 0) {
        DeleteThisEntity();
    }

    if (this->parent->cutsceneBeh.HALF.LO == 3) {
        this->direction = (this->direction + 3) & 0x1f;
    } else if (this->parent->cutsceneBeh.HALF.LO == 2) {
        this->direction = (this->direction + 3) & 0x1f;
    } else {
        this->direction = (this->direction + 2) & 0x1f;
    }
}

void (*const V3ElectricProjectile_Functions[])(Entity*) = {
    V3ElectricProjectile_OnTick, sub_080ABFE4, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const V3ElectricProjectile_Actions[])(Entity*) = {
    sub_080ABFEC, V3ElectricProjectile_Action1, V3ElectricProjectile_Action2, sub_080AC168, sub_080AC200,
};
static const u16 projectileSpeeds[] = { 352, 480, 480 };
static const u8 gUnk_0812A982[] = {
    5, 6, 7, 8, 5, 6, 7, 6,
};
static const u8 projectileDirections[] = {
    6, 9, 9, 12, 6, 9, 9, 9, 0, 0,
};
