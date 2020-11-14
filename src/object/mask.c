#include "global.h"
#include "entity.h"
#include "room.h"
#include "random.h"

extern Entity gPlayerEntity;
extern u16 gScreenTransition[];

extern void (*MaskActionFuncs[])(Entity*);

extern void DeleteThisEntity();

extern bool32 CheckFlags(u16);
extern void SetFlag(u16);
extern void ClearFlag(u16);

extern void SetTile(u32, u16, u32);

extern void sub_08000148(u16, u16, u32);
extern s16 sub_080001DA(u16, u32);
extern u16 sub_080002E0(u16, u32);

extern void EnqueueSFX(u32);
extern void sub_080044EC(Entity*, u16);
extern void sub_0805457C(Entity*, s32);

void Mask(Entity* this) {
    MaskActionFuncs[this->action](this);
}

void sub_080929A4(Entity* this) {
    if (this->entityType.parameter & 0xC0) {
        if (CheckFlags(this->field_0x86.HWORD)) {
            s32 field_0x0a;

            switch (this->entityType.parameter & 0xC0) {
                case 0x40:
                    field_0x0a = gScreenTransition[0x5];

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
    this->field_0x20 = 0x18000;

    this->field_0x78.HWORD = ((Random() & 7) << 10) | 0x2000;

    this->field_0xf = this->actionDelay >> 1;
    this->actionDelay = 0;

    this->frameIndex = this->entityType.parameter & 0x3f;

    this->field_0x7c.HALF.HI = COORD_TO_TILE(this);
    this->field_0x7c.HALF.LO = sub_080001DA(this->field_0x7c.HALF.HI, 1);

    this->field_0x7a.HWORD = sub_080002E0(this->field_0x7c.HALF.HI, 1);

    SetTile(0x4022, this->field_0x7c.HALF.HI, 1);
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
    SetTile((u16)this->field_0x7c.HALF.LO, this->field_0x7c.HALF.HI, 1);

    sub_08000148(this->field_0x7a.HWORD, this->field_0x7c.HALF.HI, 1);

    this->action = 2;

    this->height.HALF.HI -= 0x20;
    this->y.HALF.HI += 0x20;

    this->spriteRendering.b3 = 2;
}

// Probably falling down
void sub_08092B0C(Entity* this) {
    if (this->actionDelay == 1) {
        this->action = 3;

        this->actionDelay = 0;
        switch (this->entityType.parameter & 0xC0) {
            case 0x80:
                EnqueueSFX(0x72);
            case 0x40:
                SetFlag(this->field_0x86.HWORD);
                break;
        }

        CreateFx(this, 5, 0);

        sub_0805457C(this, 3);
    } else {
        sub_080044EC(this, this->field_0x78.HWORD);

        if (this->height.HALF.HI == 0) {
            this->actionDelay++;
        }
    }
}

void Mask_Delete(Entity* this) {
    DeleteThisEntity();
}
