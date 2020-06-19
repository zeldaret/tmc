#include "global.h"
#include "entity.h"
#include "room.h"
#include "random.h"

#define COORD_TO_TILE(entity) ((((entity->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 0x3fU) | (((entity->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 0x3fU) << 6)

extern void (*gUnk_081227A4[])(Entity *);
extern void DeleteThisEntity();
extern u16 gUnk_030010A0[];
extern bool32 CheckFlags(u16);
extern void ClearFlag(u16);
extern s16 sub_080001DA(u16, u32);
extern void SetTile(u32, u16, u32);
extern u16 sub_080002E0(u16, u32);
extern void sub_08000148(u16, u16, u32);
extern Entity gLinkEntity;
extern void sub_08004488(u32);
extern void sub_080044EC(Entity *, u16);
extern void CreateFx(Entity *, u16, u16);
extern void sub_0805457C(Entity *, s32);
extern void SetFlag(u16);

void Mask(Entity *this) {
    gUnk_081227A4[this->action](this);
}

void sub_080929A4(Entity *this) {
    if (this->entityType.parameter2 & 0xC0) {
        if (CheckFlags(this->field_0x86)) {
            s32 field_0x0a;
            switch (this->entityType.parameter2 & 0xC0) {
                case 0x40:
                    field_0x0a = gUnk_030010A0[0x5];
                    
                    switch (field_0x0a) {
                        default:
                            break;
                        case 0x44D ... 0x44F:
                        case 0x182:
                            DeleteThisEntity();
                            goto switchEnd;
                    }

                    ClearFlag(this->field_0x86);
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

    this->field_0x78 = ((Random() & 7) << 10) | 0x2000;
    
    this->field_0xf = this->parameter3 >> 1;
    this->parameter3 = 0;

    this->animationList = this->entityType.parameter2 & 0x3f;

    this->field_0x7c.HALF.HI = COORD_TO_TILE(this);
    this->field_0x7c.HALF.LO = sub_080001DA(this->field_0x7c.HALF.HI, 1);

    this->itemCooldown = sub_080002E0(this->field_0x7c.HALF.HI, 1);

    SetTile(0x4022, this->field_0x7c.HALF.HI, 1);
}

void sub_08092A94(Entity *this) {
    if (gLinkEntity.action != 6) {
        return;
    }

    if (gLinkEntity.animationState != 0) {
        return;
    }

    if (this->y.HALF.HI + 40 < gLinkEntity.y.HALF.HI) {
        return;
    }

    if (this->x.HALF.HI - gLinkEntity.x.HALF.HI >= this->field_0xf || this->x.HALF.HI - gLinkEntity.x.HALF.HI <= -this->field_0xf) {
        return;
    }

    SetTile((u16)this->field_0x7c.HALF.LO, this->field_0x7c.HALF.HI, 1);
    
    sub_08000148(this->itemCooldown, this->field_0x7c.HALF.HI, 1);

    this->action = 2;
    this->height.HALF.HI -= 0x20;
    this->y.HALF.HI += 0x20;
    this->spriteOrder.b3 = 2;
}

void sub_08092B0C(Entity *this) {
    if (this->parameter3 == 1) {
        this->action = 3;
        this->parameter3 = 0;
        switch (this->entityType.parameter2 & 0xC0)
        {
            case 0x80:
                sub_08004488(0x72);
            case 0x40:
                SetFlag(this->field_0x86);
                break;
                
        }
        CreateFx(this, 5, 0);
        sub_0805457C(this, 3);
    }
    else {
        sub_080044EC(this, this->field_0x78);

        if (this->height.HALF.HI == 0) {
            this->parameter3++;
        }
    }
}

void sub_08092B6C(Entity *this) {
    DeleteThisEntity();
}