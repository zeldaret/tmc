#include "global.h"
#include "entity.h"

extern Entity gLinkEntity;

extern void UpdateAnimationSingleFrame(Entity *);
extern void InitAnimationForceUpdate(Entity *, s32);
extern u32 GetNextFunction(Entity *);
extern void ModHealth(s32);
extern void CreateFx(Entity *, u16, u16);

extern void (* const gUnk_080D0418[])(Entity *);
extern void (* const gUnk_080D0430[])(Entity *);
extern void (* const gUnk_080D043C[])(Entity *);

extern bool32 sub_0806F3E4(Entity *);
extern bool32 sub_0806F520(Entity *);

extern void sub_0800449C(Entity *, u32);
extern void sub_0803CE14(Entity *);
extern void sub_0803CE3C(Entity *);
extern Entity *sub_0804B128(u8);
extern void sub_0806F4E8(Entity *);
extern void sub_0806F69C(Entity *);
extern void sub_08079D84(void);
extern void sub_080A2CC0(Entity *, Entity **, u16 *);

void LakituCloud(Entity *this) {
    gUnk_080D0418[GetNextFunction(this)](this);
}

void sub_0803CCD4(Entity *this) {
    gUnk_080D0430[this->action](this);
}

void sub_0803CCEC(Entity *this) {
    this->field_0x42 = 0;
    sub_0803CCD4(this);
}

void sub_0803CCFC(Entity *this) {
    if (sub_0806F520(this) == 0) {
        if (this->previousActionFlag == 2) {
            sub_0803CE3C(this);
        }
    }
    else {
        gUnk_080D043C[this->previousActionFlag](this);
    }
}

void sub_0803CD2C(Entity *this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 0x3c;
}

void sub_0803CD38(Entity *this) {
    sub_0806F4E8(this);
}

void sub_0803CD40(Entity *this) {
    if (!sub_0806F3E4(this)) {
        return;
    }

    ModHealth(-2);

    sub_0800449C(&gLinkEntity, 122);
    sub_08079D84();

    sub_0803CE3C(this);
}

void sub_0803CD6C(Entity *this) {
    Entity *lakitu;

    this->action = 1;
    this->height.HALF.HI = -2;

    // Set parent to lakitu
    lakitu = sub_0804B128(this->entityType.form);
    this->attachedEntity = lakitu;
    this->parent = lakitu;

    this->field_0x78.HWORD = this->x.HALF.HI;
    this->field_0x7a = this->y.HALF.HI;

    InitAnimationForceUpdate(this, 4);

    sub_0803CE14(this);
}

void sub_0803CDA8(Entity *this) {
    UpdateAnimationSingleFrame(this);

    if ((this->direction & 0x80) == 0) {
        sub_0806F69C(this);
    }

    if (--this->field_0x74 << 0x10 == 0) {
        sub_0803CE14(this);
    }
}

void sub_0803CDD8(Entity *this) {
    u8 one;
    u8 ss0;

    ss0 = this->spriteSettings.b.ss0;
    one = 1;
    this->spriteSettings.b.ss0 = ss0 ^ one;

    this->actionDelay--;

    if (this->actionDelay == 0) {
        this->action = 1;
        
        this->flags |= 0x80;

        this->spriteSettings.b.ss0 = one;
    }
}

void sub_0803CE14(Entity *this) {
    u8 direction;

    sub_080A2CC0(this, &this->attachedEntity, &this->field_0x74);

    direction = this->direction;
    if (direction & 0x80) {
        return;
    }

    direction = direction / 8 + 4;

    InitAnimationForceUpdate(this, direction);
}

void sub_0803CE3C(Entity *this) {
    CreateFx(this, 2, 0);

    this->action = 2;
    this->actionDelay = 60;

    this->flags &= 0x7f;

    this->field_0x3a &= 0xfb;

    this->x.HALF.HI = this->field_0x78.HWORD;
    this->y.HALF.HI = this->field_0x7a;

    this->attachedEntity = this->parent;

    sub_0803CE14(this);
}
