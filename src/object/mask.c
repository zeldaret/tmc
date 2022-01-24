#include "object.h"
#include "functions.h"

extern void (*MaskActionFuncs[])(Entity*);

extern void sub_08000148(u16, u16, u32);

extern void sub_0805457C(Entity*, s32);

void Mask(Entity* this) {
    MaskActionFuncs[this->action](this);
}

void sub_080929A4(Entity* this) {
    if (this->type2 & 0xC0) {
        if (CheckFlags(this->field_0x86.HWORD)) {
            s32 field_0x0a;

            switch (this->type2 & 0xC0) {
                case 0x40:
                    field_0x0a = gRoomTransition.stairs_idx;

                    switch (field_0x0a) {
                        case 0x44D ... 0x44F:
                        case 0x182:
                            DeleteThisEntity();
                            goto switchEnd;
                    }

                    ClearFlag(this->field_0x86.HWORD);
                    break;
                case 0x80:
                    DeleteThisEntity();
                    break;
            }
        switchEnd:
        }
    }

    this->action = 1;
    this->zVelocity = Q_16_16(1.5);

    this->field_0x78.HWORD = ((Random() & 7) << 10) | 0x2000;

    this->field_0xf = this->actionDelay >> 1;
    this->actionDelay = 0;

    this->frameIndex = this->type2 & 0x3f;

    this->field_0x7c.HALF_U.HI = COORD_TO_TILE(this);
    this->field_0x7c.HALF_U.LO = GetTileIndex(this->field_0x7c.HALF_U.HI, 1);

    this->field_0x7a.HWORD = sub_080002E0((u16)this->field_0x7c.HALF.HI, 1);

    SetTile(0x4022, this->field_0x7c.HALF_U.HI, 1);
}

// Probably related to knocking it down
void sub_08092A94(Entity* this) {
    // Check for the first frame of bonking animation
    if (gPlayerEntity.action != 6) {
        return;
    }

    if (gPlayerEntity.animationState != 0) {
        return;
    }

    // Check if link is close enough to the mask
    if (this->y.HALF.HI + 40 < gPlayerEntity.y.HALF.HI) {
        return;
    }

    if (this->x.HALF.HI - gPlayerEntity.x.HALF.HI >= this->field_0xf ||
        this->x.HALF.HI - gPlayerEntity.x.HALF.HI <= -this->field_0xf) {
        return;
    }

    // Presumably, make the mask fall
    SetTile(this->field_0x7c.HALF_U.LO, this->field_0x7c.HALF_U.HI, 1);

    sub_08000148(this->field_0x7a.HWORD, this->field_0x7c.HALF.HI, 1);

    this->action = 2;

    this->z.HALF.HI -= 0x20;
    this->y.HALF.HI += 0x20;

    this->spriteRendering.b3 = 2;
}

// Probably falling down
void sub_08092B0C(Entity* this) {
    if (this->actionDelay == 1) {
        this->action = 3;

        this->actionDelay = 0;
        switch (this->type2 & 0xC0) {
            case 0x80:
                EnqueueSFX(0x72);
            case 0x40:
                SetFlag(this->field_0x86.HWORD);
                break;
        }

        CreateFx(this, FX_POT_SHATTER, 0);

        sub_0805457C(this, 3);
    } else {
        sub_080044EC(this, this->field_0x78.HWORD);

        if (this->z.HALF.HI == 0) {
            this->actionDelay++;
        }
    }
}

void Mask_Delete(Entity* this) {
    DeleteThisEntity();
}
