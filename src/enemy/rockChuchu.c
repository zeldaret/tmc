#include "enemy.h"
#include "entity.h"
#include "random.h"
#include "functions.h"

extern void sub_0804A4E4(Entity*, Entity*);

extern void (*const gUnk_080CB948[])(Entity*);
extern void (*const gUnk_080CB960[])(Entity*);

void RockChuchu(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CB948);
}

void sub_0802223C(Entity* this) {
    gUnk_080CB960[this->action](this);
}

void sub_08022254(Entity* this) {
    Entity* ent;

    if (this->currentHealth) {
        switch (this->bitfield & 0x7f) {
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 0xb:
            case 0xc:
            case 0xd:
            case 0x10:
            case 0x11:
            case 0x12:
            case 0x18:
            case 0x19:
            case 0x1a:
                if ((gPlayerState.field_0xac & 8) == 0)
                    break;
            case 0x16:
            case 0x1c:
                CreateFx(this, 4, 0);
                ent = CreateEnemy(CHUCHU, 1);
                if (ent) {
                    ent->type2 = 1;
#ifndef EU
                    ent->iframes = -8;
#endif
                    sub_0804A4E4(this, ent);
                    this->action = 2;
                    this->flags &= ~0x80;
                    this->spriteSettings.b.draw = 0;
                    this->direction = this->knockbackDirection;
                    this->attachedEntity = ent;
                }
        }
    } else {
        if (this->damageType != 0x94)
            InitializeAnimation(this, 2);
    }

    sub_0804AA30(this, gUnk_080CB948);
}

void nullsub_131(Entity* this) {
}

void sub_08022368(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->actionDelay = Random();
    this->direction = sub_08049F84(this, 1);
    InitializeAnimation(this, 0);
}

void sub_08022390(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if ((this->actionDelay++ & 0xf) == 0) {
            this->direction = sub_08049F84(this, 1);
            this->field_0xf = Random() & 4;
        }

        if (this->field_0xf == 0) {
            ProcessMovement(this);
        } else {
            this->field_0xf = this->field_0xf - 1;
        }
    } else {
        this->actionDelay = Random();
    }

    GetNextFrame(this);
}

void sub_080223E4(Entity* this) {
    Entity* ent;

    ent = this->attachedEntity;
    if (ent) {
        ent->bitfield = 0x94;
        ent->iframes = 0x10;
#ifndef EU
        ent->knockbackDuration = 0xc;
        ent->knockbackDirection = this->direction;
#endif
    }

    DeleteEntity(this);
}

// clang-format off
void (*const gUnk_080CB948[])(Entity*) = {
    sub_0802223C,
    sub_08022254,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_131,
};

void (*const gUnk_080CB960[])(Entity*) = {
    sub_08022368,
    sub_08022390,
    sub_080223E4,
};
// clang-format on
