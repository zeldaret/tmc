#include "entity.h"
#include "audio.h"
#include "structures.h"
#include "functions.h"

void sub_080485D8(Entity*);
void sub_080485FC(Entity*);
void sub_080482EC(Entity*);
void sub_08048330(Entity*);
void sub_0804835C(Entity*);
void sub_08048388(Entity*);
void sub_080483F8(Entity*);
void sub_08048438(Entity*);
void sub_08048478(Entity*);
void sub_080484E8(Entity*);
void sub_08048550(Entity*);
void sub_080485A0(Entity*);

void (*const gUnk_080D1D48[])(Entity*) = {
    sub_080482EC, sub_08048330, sub_0804835C, sub_08048388, sub_080483F8,
    sub_08048438, sub_08048478, sub_080484E8, sub_08048550, sub_080485A0,
};

const s8 gUnk_080D1D70[] = { 0xee, 0x01, 0xfa, 0x04, 0x06, 0x04, 0x13, 0x01 };

const s8 gUnk_080D1D78[] = { 0xfd, 0xfc, 0xfb, 0xfa, 0xf9, 0xfa, 0xfb, 0xfc, 0xfc, 0xfd, 0xfc,
                             0xfb, 0xfa, 0xf9, 0xfa, 0xfb, 0xfb, 0xfc, 0xfd, 0xfc, 0xfb, 0xfa,
                             0xf9, 0xfa, 0xfa, 0xfb, 0xfc, 0xfd, 0xfc, 0xfb, 0xfa, 0xf9 };

const s8 gUnk_080D1D98[] = { 0xe8, 0x04, 0xf8, 0x08, 0x08, 0x08, 0x18, 0x04 };

void Enemy5F(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    gUnk_080D1D48[this->action](this);
}

void sub_080482EC(Entity* this) {
    if ((gScreenTransition.field_0x38 & 1) != 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
    } else {
        this->action = 1;
        InitializeAnimation(this, 0);
        SoundReq(SFX_166);
    }
    sub_080485D8(this);
}

void sub_08048330(Entity* this) {
    sub_080485D8(this);
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
    }
}

void sub_0804835C(Entity* this) {
    sub_080485D8(this);
    if ((gScreenTransition.field_0x39 & 3) == 0) {
        this->action = 3;
        this->flags |= 0x80;
        this->speed = 0x80;
    }
}

void sub_08048388(Entity* this) {
    u32 direction;
    Entity* parent;
    u32 x;
    u32 y;

    const s8* ptr;

    parent = this->parent;
    if (parent->field_0x78.HALF.HI != 0) {
        sub_080485D8(this);
    } else {
        ptr = &gUnk_080D1D98[this->type * 2];
        x = parent->x.HALF.HI + ptr[0];
        y = parent->y.HALF.HI + ptr[1];
        direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, x, y);
        this->direction = direction;
        sub_0806F69C(this);
        this->height.HALF.HI = this->parent->height.HALF.HI;
        if ((this->x.HALF.HI == x) && (this->y.HALF.HI == y)) {
            this->action = 4;
            this->actionDelay = 0x3c;
        }
    }
}

void sub_080483F8(Entity* this) {
    sub_080485FC(this);
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            InitializeAnimation(this, 3);
        }
    } else {
        GetNextFrame(this);
        if ((this->frames.all & 0x80) != 0) {
            this->action = 5;
            this->actionDelay = 0;
        }
    }
}

void sub_08048438(Entity* this) {
    if (this->actionDelay != 0) {
        this->action = 6;
        if (this->parent->currentHealth >= 0x15) {
            this->actionDelay = 120;
        } else {
            this->actionDelay = 0x3c;
        }
        this->attachedEntity = NULL;
        InitializeAnimation(this, 5);
        SoundReq(SFX_19B);
    }
    sub_080485FC(this);
}

void sub_08048478(Entity* this) {
    Entity* pEVar3;

    sub_080485FC(this);
    GetNextFrame(this);
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            InitializeAnimation(this, 6);
        }
    } else {
        if (this->frames.b.f3) {
            this->action = 7;
            this->actionDelay = 120;
            this->field_0xf = 0;
        } else {
            if (this->frames.b.f0 != 0) {
                this->frames.all &= 0xfe;
                pEVar3 = sub_080A7EE0(0x24);
                if (pEVar3 != NULL) {
                    pEVar3->parent = this;
                    this->attachedEntity = pEVar3;
                    PositionRelative(this, pEVar3, 0, 0xc0000);
                }
            }
        }
    }
}

void sub_080484E8(Entity* this) {
    sub_080485FC(this);
    GetNextFrame(this);
    if (this->field_0xf != 0) {
        this->action = 8;
        this->actionDelay = 0x3c;
        this->flags &= 0x7f;
        this->spriteSettings.b.draw = 0;
        CreateFx(this, 0x1f, 0x40);
        this->parent->field_0x7a.HALF.HI |= 0x10 << this->type;
    } else {
        if (--this->actionDelay != 0) {
            return;
        }
        this->action = 5;
        this->actionDelay = 0;
        this->parent->field_0x7a.HALF.HI |= 1 << this->type;
    }
}

void sub_08048550(Entity* this) {
    if (this->parent->action == 0xb) {
        this->actionDelay = 0x3c;
    } else {
        if (--this->actionDelay == 0) {
            this->action = 9;
            this->flags |= 0x80;
            this->spriteSettings.b.draw = 1;
            InitializeAnimation(this, 0);
            sub_080485FC(this);
            SoundReq(SFX_166);
        }
    }
}

void sub_080485A0(Entity* this) {
    sub_080485FC(this);
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 4;
        this->actionDelay = 1;
        this->parent->field_0x7a.HALF.HI = (this->parent->field_0x7a.HALF.HI & 0xf) | (1 << this->type);
    }
}

void sub_080485D8(Entity* this) {
    const s8* ptr;

    ptr = &gUnk_080D1D70[this->type * 2];
    sub_0806FA90(this->parent, this, ptr[0], ptr[1]);
}

void sub_080485FC(Entity* this) {
    const s8* ptr;

    ptr = &gUnk_080D1D98[this->type * 2];
    sub_0806FA90(this->parent, this, ptr[0], ptr[1]);
    this->height.HALF.HI = gUnk_080D1D78[this->type * 8 + (this->parent->field_0x78.HALF.LO >> 4 & 7)];
}
