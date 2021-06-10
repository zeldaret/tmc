#include "entity.h"
#include "enemy.h"
#include "audio.h"
#include "player.h"
#include "coord.h"
#include "functions.h"

extern void (*const gUnk_0812A954[])(Entity*);

extern void (*const gUnk_0812A968[])(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

void Projectile21(Entity* this) {
    gUnk_0812A954[GetNextFunction(this)](this);
}

void sub_080ABFCC(Entity* this) {
    gUnk_0812A968[this->action](this);
}

void sub_080ABFE4(Entity* this) {
    DeleteThisEntity();
}

ASM_FUNC("asm/non_matching/projectile21/sub_080ABFEC.inc", void sub_080ABFEC(Entity* this))

void sub_080AC074(Entity* this) {
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

void sub_080AC100(Entity* this) {
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
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
    if (this->actionDelay < 0x1e) {
        if (((++this->actionDelay) & this->field_0xf) == 0) {
            sub_08004596(this, GetFacingDirection(this, &gPlayerEntity));
        }
    }
}

ASM_FUNC("asm/non_matching/projectile21/sub_080AC168.inc", void sub_080AC168(Entity* this))

ASM_FUNC("asm/non_matching/projectile21/sub_080AC200.inc", void sub_080AC200(Entity* this))
