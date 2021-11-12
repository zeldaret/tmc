#include "entity.h"
#include "script.h"
#include "functions.h"
#include "flags.h"
#include "effects.h"

extern Hitbox gUnk_08110E94;

extern void (*gUnk_08110E4C[])(Entity*);
extern void (*gUnk_08110E5C[])(Entity*);

extern s8 gUnk_08110E64[];

extern u32 gUnk_08110E68[];

void CastorWildsStatue(Entity* this) {
    if ((this->flags & 2) != 0) {
        gUnk_08110E5C[this->action](this);
    } else {
        gUnk_08110E4C[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_080673C0(Entity* this) {
    if (gScreenTransition.field_0x24[8] != 0) {
        this->action = 3;
    } else {
        this->action = 1;
    }
    this->frameIndex = this->type & 1;
    if ((this->type & 1) == 0) {
        this->hitbox = &gUnk_08110E94;
    }
}

void sub_080673F4(Entity* this) {
    if (this->interactType != 0) {
        this->action = 2;
        this->interactType = 0;
    }
}

void sub_08067410(Entity* this) {
    this->action = 1;
}

void sub_08067418(Entity* this) {
    this->action = 1;
    this->field_0x74.HWORD = COORD_TO_TILE(this);
    if (this->type == 0) {
        this->hitbox = &gUnk_08110E94;
        SetTile(0x4022, this->field_0x74.HWORD - 1, this->collisionLayer);
        SetTile(0x4022, this->field_0x74.HWORD, this->collisionLayer);
        SetTile(0x4022, this->field_0x74.HWORD + 0x3f, this->collisionLayer);
        SetTile(0x4022, this->field_0x74.HWORD + 0x40, this->collisionLayer);
    } else {
        this->collisionLayer = 3;
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 2;
#if defined(JP) || defined(EU) || defined(DEMO_JP)
        if (CheckLocalFlag(0x1e) == 0) {
#else
        if (CheckLocalFlag(0x1d) == 0) {
#endif
            SetTile(0x4022, 0xe81, 1);
            SetTile(0x4022, 0xe82, 1);
            SetTile(0x4022, 0xe83, 1);
            SetTile(0x4022, 0xec3, 1);
        }
    }
    sub_0807DD50(this);
}

void sub_08067514(Entity* this) {
    sub_0807DD94(this, NULL);
    if (this->type == 0) {
        sub_0806ED78(this);
    }
}

void sub_0806752C(Entity* this) {
    sub_0806FD3C(this);
}

void sub_08067534(Entity* this) {
    Entity* entity;
    s32 i;
    for (i = 0; i < 2; ++i) {
        entity = CreateFx(this, FX_DEATH, 0);
        if (entity != NULL) {
            entity->x.HALF.HI += gUnk_08110E64[i];
            entity->y.HALF.HI += 0x1c;
        }
    }
    EnqueueSFX(0x14c);
    sub_08080964(0x28, 4);
}

void sub_0806757C(Entity* this) {
    if (this->subAction != 0) {
        if (this->subAction >= 3) {
            sub_0807BA8C(0xe81, 1);
            sub_0807BA8C(0xe82, 1);
            sub_0807BA8C(0xe83, 1);
            sub_0807BA8C(0xec3, 1);
        } else {
            LoadFixedGFX(this, gUnk_08110E68[this->subAction]);
        }
    }
}

ASM_FUNC("asm/non_matching/castorWildsStatue/sub_080675D4.inc", void sub_080675D4(Entity* this))

void sub_080676D8(Entity* this) {
    this->subAction += 1;
}

ASM_FUNC("asm/non_matching/castorWildsStatue/sub_080676E0.inc",
         void sub_080676E0(Entity* this, ScriptExecutionContext* context))

void CastorWildsStatue_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 0x18;
        InitializeAnimation(this, 1);
        sub_0801D2B4(this, 0x17b);
    } else {
        GetNextFrame(this);
    }
}
