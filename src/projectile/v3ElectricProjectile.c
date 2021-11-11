#include "entity.h"
#include "enemy.h"
#include "audio.h"
#include "player.h"
#include "coord.h"
#include "functions.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const V3ElectricProjectile_Functions[])(Entity*);
extern void (*const V3ElectricProjectile_Actions[])(Entity*);
extern const u16 gUnk_0812A97C[];
extern const u8 gUnk_0812A982[];
extern const u8 gUnk_0812A98A[];

void V3ElectricProjectile(Entity* this) {
    V3ElectricProjectile_Functions[GetNextFunction(this)](this);
}

void V3ElectricProjectile_OnTick(Entity* this) {
    V3ElectricProjectile_Actions[this->action](this);
}

void sub_080ABFE4(Entity* this) {
    DeleteThisEntity();
}

ASM_FUNC("asm/non_matching/v3ElectricProjectile/sub_080ABFEC.inc", void sub_080ABFEC(Entity* this))

void V3ElectricProjectile_Action1(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    CopyPositionAndSpriteOffset(this->parent, this);
    this->height.HALF.HI -= 0x14;
    if (this->cutsceneBeh.HALF.HI != 0) {
        if (((--this->cutsceneBeh.HALF.HI) & 7) == 0) {
            SoundReq(SFX_149);
        }
    }
    GetNextFrame(this);
    if ((this->frames.all & 1) != 0) {
        if (this->type == 0) {
            this->action = 2;
            this->direction = GetFacingDirection(this, &gPlayerEntity);
            this->speed = 0x180;
            SoundReq(SFX_193);
        } else {
            this->action = 3;
            this->actionDelay = 0x10;
        }
        this->height.HALF.HI -= 0x28;
    }
}

void V3ElectricProjectile_Action2(Entity* this) {
    u8 bVar1;
    s32 iVar2;
    u32 uVar3;

    if (this->height.HALF.HI < -6) {
        this->height.HALF.HI += 3;
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

ASM_FUNC("asm/non_matching/v3ElectricProjectile/sub_080AC168.inc", void sub_080AC168(Entity* this))

ASM_FUNC("asm/non_matching/v3ElectricProjectile/sub_080AC200.inc", void sub_080AC200(Entity* this))

void (*const V3ElectricProjectile_Functions[])(Entity*) = {
    V3ElectricProjectile_OnTick, sub_080ABFE4, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const V3ElectricProjectile_Actions[])(Entity*) = {
    sub_080ABFEC, V3ElectricProjectile_Action1, V3ElectricProjectile_Action2, sub_080AC168, sub_080AC200,
};
const u16 gUnk_0812A97C[] = { 352, 480, 480 };
const u8 gUnk_0812A982[] = {
    5, 6, 7, 8, 5, 6, 7, 6,
};
const u8 gUnk_0812A98A[] = {
    6, 9, 9, 12, 6, 9, 9, 9, 0, 0,
};
