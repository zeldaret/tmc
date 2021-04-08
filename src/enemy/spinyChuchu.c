#include "enemy.h"
#include "entity.h"
#include "random.h"
#include "audio.h"
#include "functions.h"

extern void sub_08001318(Entity*);
extern u32 PlayerInRange(Entity*, u32, u32);
extern void sub_0804A4E4(Entity*, Entity*);
extern void sub_0804AA1C(Entity*);

u32 sub_080228CC(Entity*);
u32 sub_080228F0(Entity*);

extern void (*const gUnk_080CBA28[])(Entity*);
extern void (*const gUnk_080CBA40[])(Entity*);

extern const u8 gUnk_080CBA60[];

extern Hitbox gUnk_080FD468;
extern Hitbox gUnk_080FD470;

extern Entity* gUnk_020000B0;

void SpinyChuchu(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CBA28);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_08022434(Entity* this) {
    gUnk_080CBA40[this->action](this);
}

void sub_0802244C(Entity* this) {
    if (this->currentHealth) {
        if (this->damageType == 0x65) {
            switch (this->bitfield & 0x7f) {
                case 2:
                case 3:
                    this->action = 2;
                    this->field_0xf = 0x3c;
                    this->damageType = 0x5c;
                    this->hitbox = &gUnk_080FD468;
                    InitializeAnimation(this, 0);
                    break;
                case 8:
                case 9:
                case 10:
                case 0xb:
                case 0xc:
                case 0x16:
                case 0x18:
                case 0x19:
                case 0x1a:
                    sub_0804A9FC(this, 0x1c);
                    this->action = 5;
                    this->damageType = 0x5c;
                    InitializeAnimation(this, 1);
            }
        } else if (this->bitfield == 0x94) {
            sub_0804A9FC(this, 0x1c);
            this->action = 5;
            InitializeAnimation(this, 1);
        }

        if (this->field_0x80.HALF.LO != this->currentHealth) {
            this->action = 5;
            this->damageType = 0x5c;
            InitializeAnimation(this, 1);
        } else {
            if (this->action == 3) {
                this->action = 4;
                InitializeAnimation(this, 3);
                EnqueueSFX(0x194);
            }
        }
    } else {
        InitializeAnimation(this, 1);
    }

    this->field_0x80.HALF.LO = this->currentHealth;
    sub_0804AA30(this, gUnk_080CBA28);
}

void sub_080225A0(Entity* this) {
    if (this->animIndex == 1)
        GetNextFrame(this);
    sub_08001318(this);
}

void sub_080225BC(Entity* this) {
    sub_08003FC4(this, 0x1800);
    if (this->frames.all & 1) {
        sub_0804A7D4(this);
    } else {
        GetNextFrame(this);
    }
}

void nullsub_9(Entity* this) {
}

void sub_080225EC(Entity* this) {
    sub_0804A720(this);
    this->field_0x80.HALF.LO = this->currentHealth;
    this->field_0x80.HALF.HI = 0x5a;
    if (this->actionDelay == 0) {
        this->action = 2;
        InitializeAnimation(this, 0);
    } else {
        this->action = 1;
        this->field_0xf = 0x3c;
        this->spriteSettings.b.draw = 3;
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
        this->height.HALF.HI = -0x80;
        InitializeAnimation(this, 6);
    }
}

void sub_08022654(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->field_0xf)
                return;
            this->subAction = 1;
            SoundReq(SFX_12D);
            InitializeAnimation(this, 0);
            /* fallthrough */
        case 1:
            if (sub_08003FC4(this, 0x1800))
                return;

            this->subAction = 2;
            this->spriteSettings.b.draw = 1;
            InitializeAnimation(this, 5);
            EnqueueSFX(0x7d);
            UpdateSpriteForCollisionLayer(this);
            /* fallthrough */
        case 2:
            GetNextFrame(this);
            if (--this->actionDelay == 0) {
                this->action = 3;
                this->damageType = 0x65;
                InitializeAnimation(this, 2);
            }
            break;
    }
}

void sub_080226EC(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (sub_080228CC(this)) {
            this->action = 3;
            this->damageType = 0x65;
            InitializeAnimation(this, 2);
            return;
        }

        if (sub_080228F0(this)) {
            this->action = 6;
            this->field_0x20 = 0x12000;
            this->speed = 0x140;
            this->direction = GetFacingDirection(this, gUnk_020000B0);
            this->damageType = 0x5a;
            InitializeAnimation(this, 4);
            return;
        }

        if ((this->actionDelay++ & 7) == 0) {
            this->direction = sub_08049F84(this, 1);
        }

        ProcessMovement(this);
    }

    GetNextFrame(this);
}

void sub_08022780(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        this->action = 4;
        InitializeAnimation(this, 3);
        EnqueueSFX(0x194);
    }
}

void sub_080227AC(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 1) {
        this->hitbox = &gUnk_080FD470;
    } else {
        this->hitbox = &gUnk_080FD468;
    }

    if (this->frames.all & 2) {
        this->frames.all &= ~2;
        this->damageType = 0x5c;
    }

    if (this->frames.all & 0x80) {
        this->action = 2;
        this->field_0xf = gUnk_080CBA60[Random() & 3];
        InitializeAnimation(this, 0);
    }
}

void sub_0802281C(Entity* this) {
    sub_08003FC4(this, 0x1800);
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        this->action = 2;
        this->speed = 0x20;
        InitializeAnimation(this, 0);
        sub_0804AA1C(this);
    }
}

void sub_08022854(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 1) {
        sub_080AEFE0(this);
        if (sub_08003FC4(this, 0x1800) == 0) {
            this->action = 7;
            this->damageType = 0x5c;
            InitializeAnimation(this, 5);
            EnqueueSFX(0x7d);
        }
    }
}

void sub_0802289C(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        this->action = 2;
        this->speed = 0x20;
        this->field_0x80.HALF.HI = 0x78;
        InitializeAnimation(this, 0);
    }
}

u32 sub_080228CC(Entity* this) {
    if (this->field_0xf == 0) {
        if (PlayerInRange(this, 1, 0x28))
            return 1;
    } else {
        this->field_0xf--;
    }
    return 0;
}

u32 sub_080228F0(Entity* this) {
    if (this->field_0x80.HALF.HI == 0) {
        if (PlayerInRange(this, 1, 0x40))
            return 1;
    } else {
        this->field_0x80.HALF.HI--;
    }
    return 0;
}

// clang-format off
void (*const gUnk_080CBA28[])(Entity*) = {
    sub_08022434,
    sub_0802244C,
    sub_080225A0,
    sub_080225BC,
    sub_08001242,
    nullsub_9,
};

void (*const gUnk_080CBA40[])(Entity*) = {
    sub_080225EC,
    sub_08022654,
    sub_080226EC,
    sub_08022780,
    sub_080227AC,
    sub_0802281C,
    sub_08022854,
    sub_0802289C,
};

const u8 gUnk_080CBA60[] = {
    10, 20, 30, 20,
};
// clang-format on
