#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "structures.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_080CEB74[])(Entity*);
extern void (*const gUnk_080CEB8C[])(Entity*);
extern void (*const gUnk_080CEB98[])(Entity*);

extern u8 gUnk_080CEBA4[];

void Wisp(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CEB74);
}

void sub_0803354C(Entity* this) {
    gUnk_080CEB8C[this->action](this);
}

void sub_08033564(Entity* this) {
    u32 bits;
    Entity* ent;

    bits = this->bitfield;
    if ((bits & 0x80) == 0) {
        return;
    }

    switch ((s32)bits & 0x3f) {
        case 0:
            this->action = 2;
            this->spriteSettings.b.draw = FALSE;
            this->flags &= 0x7f;
            this->field_0x7c.HALF.LO = 0x27c;
            gPlayerState.flags.all |= 0x4000;
            gUnk_02002A40.stats.filler2[4] = this->entityType.form + 1;
            gUnk_02002A40.stats.field_0x20 = 600;
            if (this->entityType.form == 0) {
                break;
            }
            DeleteThisEntity();
            break;
        case 0xe:
        case 0x15:
            this->currentHealth = 0;
            break;
        case 0x14:
            this->flags &= 0x7f;
            this->hurtBlinkTime = 0;
            this->spriteSettings.b.draw = FALSE;
            ent = CreateFx(this, 2, 0);
            if (ent != NULL) {
                this->attachedEntity = ent;
                this->actionDelay = 0xe;
                CopyPosition(this, ent);
            }
            DeleteThisEntity();
            break;
    }
}

void sub_0803362C(Entity* this) {
    if (sub_0806F520() != 0) {
        gUnk_080CEB98[this->previousActionFlag](this);
    }
}

void sub_08033650(Entity* this) {
    this->previousActionFlag = 2;
}

void sub_08033658(Entity* this) {
    sub_0806F4E8();
}

void sub_08033660(Entity* this) {
    if (sub_0806F3E4(this)) {
        sub_0804A7D4(this);
    }
}

void sub_08033674(Entity* this) {
    sub_0804A720(this);
    this->actionDelay = 0;
    this->action = 1;
    this->field_0x1c = 1;
    this->field_0x80.HWORD = this->x.HALF.HI;
    this->field_0x82.HWORD = this->y.HALF.HI;
    sub_08033744(this);
    InitializeAnimation(this, this->entityType.parameter);
}

void sub_080336A8(Entity* this) {
    if (--this->actionDelay == 0) {
        sub_08033744(this);
    } else if (this->collisions != 0) {
        sub_0800417E(this, this->collisions);
    }
    sub_080AEF88(this);
    GetNextFrame(this);
}

void sub_080336DC(Entity* this) {
    switch ((u16)-- this->field_0x7c.HALF.LO) {
        case 0x24:
            this->x.HALF.HI = this->field_0x80.HWORD;
            this->y.HALF.HI = this->field_0x82.HWORD;
            break;
        case 0x18:
            sub_080A29BC(this);
            break;
        case 0xc:
            this->spriteSettings.b.draw = TRUE;
            break;
        case 0x0:
            this->action = 1;
            this->flags |= 0x80;
            sub_08033744(this);
            break;
    }
}

void sub_08033744(Entity* this) {
    u32 temp;
    u32 rand = (u32)Random() % 256;

    // 8 potential options
    this->actionDelay = gUnk_080CEBA4[(rand & 0x70) >> 4];

    // 4 potential options
    temp = ((rand & 0xc) * 2);

    // 75% chance to pass
    if ((sub_08049FA0(this) == 0) && ((rand % 4) != 0)) {
        temp = sub_08049EE4(this);

        // 50% chance to pass
        if ((rand & 0x80) != 0) {
            temp += 0x4;
            temp &= 0x18;
        } else {
            temp += 0x1c;
            temp &= 0x18;
        }
    }
    this->direction = temp;
}
