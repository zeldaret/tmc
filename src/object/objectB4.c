#define NENT_DEPRECATED
#include "entity.h"
#include "menu.h"
#include "physics.h"
#include "object.h"

extern void sub_0806FB00(Entity*, u32, u32, u32);
extern bool32 sub_0806FB38(Entity*);

void ObjectB4_Type0(Entity*);
void ObjectB4_Type1(Entity*);
void ObjectB4_Type2(Entity*);
void ObjectB4_Type3(Entity*);

const u16 gUnk_08124B10[] = { 0x40, 0x58, 0x68, 0x80, 0x94, 0xA8, 0xB0, 0x0 };

void ObjectB4(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        ObjectB4_Type0,
        ObjectB4_Type1,
        ObjectB4_Type2,
        ObjectB4_Type3,
    };

    typeFuncs[this->type]((Entity*)this);
}

void ObjectB4_Type0(Entity* this) {
    Entity* pEVar3;

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 2;
            this->frameIndex = 9;
            this->timer = 8;
            this->subtimer = 0;
            this->spriteRendering.b3 = 1;
            this->spritePriority.b0 = 4;
            this->spriteOrientation.flipY = 1;
            sub_0806FB00(this, 0xbf, 0x48, 0x1e);
            break;
        case 1:
            if ((this->subtimer < 7) && (--this->timer == 0)) {
                this->timer = 1;
                pEVar3 = CreateObject(OBJECT_B4, 1, this->subtimer);
                if (pEVar3 != NULL) {
                    CopyPosition(this, pEVar3);
                    pEVar3->y.HALF.HI = 0x68;
                    SortEntityBelow(this, pEVar3);
                }
                this->subtimer++;
            }

            if (sub_0806FB38(this) || (1 < gMenu.menuType)) {
                this->x.HALF.HI = 0xbf;
                this->y.HALF.HI = 0x48;
                this->frameIndex = 10;
                this->action = 2;
                while (this->subtimer < 7) {
                    pEVar3 = CreateObject(OBJECT_B4, 1, this->subtimer);
                    if (pEVar3 != NULL) {
                        CopyPosition(this, pEVar3);
                        pEVar3->y.HALF.HI = 0x68;
                        SortEntityBelow(this, pEVar3);
                    }
                    this->subtimer++;
                }

                pEVar3 = CreateObject(OBJECT_B4, 2, 0);
                if (pEVar3 != NULL) {
                    pEVar3->x.HALF.HI = 0xc4;
                    pEVar3->y.HALF.HI = 0x2c;
                    SortEntityAbove(this, pEVar3);
                }

                pEVar3 = CreateObject(OBJECT_B4, 3, 0);
                if (pEVar3 != NULL) {
                    pEVar3->x.HALF.HI = 0xb4;
                    pEVar3->y.HALF.HI = 0x19;
                    SortEntityAbove(this, pEVar3);
                }
            }
    }
}

void ObjectB4_Type1(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 2;
            this->frameIndex = this->type2 + 2;
            sub_0806FB00(this, gUnk_08124B10[this->type2], 0x68, 0x14);
            break;
        case 1:
            if (sub_0806FB38(this) || 1 < gMenu.menuType) {
                this->x.HALF.HI = gUnk_08124B10[this->type2];
                this->y.HALF.HI = 0x68;
                this->spritePriority.b0 = 7 - this->type2;
                this->action = 2;
            }
            break;
    }
}

void ObjectB4_Type2(Entity* this) {
    static const u8 gUnk_08124B30[] = { 9, 10, 11, 12, 11, 10, 9, -1 };
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 2;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 0;
        this->spriteOrientation.flipY = 1;
        this->frameIndex = 11;
        this->timer = (Random() & 0x3f) + 0x40;
        this->subtimer = 0;
    }

    if (--this->timer == 0) {
        this->timer = 4;
        this->frameIndex = gUnk_08124B30[this->subtimer++] + 2;
        if (gUnk_08124B30[this->subtimer] == 0xff) {
            this->timer = (Random() & 0x3f) + 0x40;
            this->subtimer = 0;
        }
    }
}

void ObjectB4_Type3(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 2;
        this->frameIndex = 15;
    }
}
